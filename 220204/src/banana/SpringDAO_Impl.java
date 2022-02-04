package banana;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;

public class SpringDAO_Impl implements SpringDAO{
    private JdbcTemplate jdbcTemplate = null;

    public JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<SpringVO> findAll() throws Exception {
        RowMapper<SpringVO> rowMapper = new RowMapper<SpringVO>() {
            @Override
            public SpringVO mapRow(ResultSet rs, int idx) throws SQLException {
                SpringVO vo = new SpringVO();
                vo.setNo(rs.getInt("no"));
                vo.setUsername( rs.getString("username"));
                vo.setTitle( rs.getString("title"));
                vo.setContent( rs.getString("content"));
                vo.setOfn( rs.getString("ofn") );
                vo.setFsn( rs.getString("fsn"));
                vo.setView(rs.getInt("view"));
                vo.setRecommend(rs.getInt("recommend"));
                vo.setTime( rs.getString("time"));
                return vo;
            }
        };
        List<SpringVO> ls = jdbcTemplate.query("select * from tmp_02 ORDER BY no DESC", rowMapper);
        return ls;
    }
    
    @Override
	public SpringVO findByPk(final SpringVO pvo) throws Exception {
    	
    	RowMapper<SpringVO> rowMapper = new RowMapper<SpringVO>() {
            @Override
            public SpringVO mapRow(ResultSet rs, int idx) throws SQLException {
                SpringVO vo = new SpringVO();
                vo.setNo(rs.getInt("no"));
                vo.setUsername( rs.getString("username") );
                vo.setTitle( rs.getString("title") );
                vo.setContent( rs.getString("content") );
                vo.setOfn( rs.getString("ofn"));
                vo.setFsn( rs.getString("fsn"));
                vo.setView(rs.getInt("view"));
                vo.setRecommend(rs.getInt("recommend"));
                vo.setTime( rs.getString("time"));
                return vo;
            }
        };
        jdbcTemplate.update("update tmp_02 set view = view+1 where no="+pvo.getNo());
        SpringVO ls = jdbcTemplate.queryForObject("select * from tmp_02 where no="+pvo.getNo(), rowMapper);
		return ls;
	}
    
    @Override
	public void recom(SpringVO pvo) throws Exception { 
    	RowMapper<RecomVO> rm = new RowMapper<RecomVO>() {
			@Override
			public RecomVO mapRow(ResultSet rs, int arg1) throws SQLException {
				RecomVO rec = new RecomVO();
				rec.setNo( rs.getInt("no") );
				rec.setUsername( rs.getString("username") );
				return rec;
			}
    	};
    	
    	SpringVO vo = findByPk(pvo);
        try {
        	RecomVO rec = jdbcTemplate.queryForObject("SELECT * FROM recom_T WHERE no=? and username=?", rm, vo.getNo(), vo.getUsername() );
        }
        catch( EmptyResultDataAccessException e ) {
        	// 찾는 값이 없다면
        	jdbcTemplate.update("UPDATE tmp_02 SET recommend = recommend+1 WHERE no="+vo.getNo());
        	jdbcTemplate.update("INSERT INTO recom_T VALUES(?,?)", vo.getNo(), vo.getUsername() );
        	// 원래 글 삭제됐을때 이것도 삭제되게 구현!! 
        }
        
	}
    
    @Override
    public int add(final SpringVO pvo) throws Exception {
        PreparedStatementSetter pss = new PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement stmt) throws SQLException {
                stmt.setString( 1, Util.han(pvo.getUsername()) );
                stmt.setString( 2, Util.han(pvo.getTitle()) );
                stmt.setString( 3, Util.han(pvo.getContent()) );
                stmt.setString( 4, pvo.getOfn() );
                stmt.setString( 5, pvo.getFsn() );
            }
        };
        int uc = jdbcTemplate.update("INSERT INTO tmp_02 VALUES (default,?,?,?,?,?,0,0, now())", pss );
        return uc;
    }

    @Override
    public int delByPK(SpringVO pvo) throws Exception {
        int uc = jdbcTemplate.update("DELETE FROM tmp_02 WHERE no = " + pvo.getNo());
        return uc;
    }
}
