package banana;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;

public class ComAnsDAO_Impl implements ComAnsDAO{
	private JdbcTemplate jdbcTemplate = null;
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	@Override
	public List<ComAnsVO> findByFk(ComAnsVO pvo, ComVO vo) throws Exception {
		RowMapper<ComAnsVO> rowMapper = new RowMapper<ComAnsVO>() {
            @Override
            public ComAnsVO mapRow(ResultSet rs, int idx) throws SQLException {
            	ComAnsVO vo = new ComAnsVO();
            	vo.setAns_no(rs.getInt("ans_no"));
            	vo.setNo(rs.getInt("no"));
            	vo.setUsername(rs.getString("username"));
            	vo.setContent(rs.getString("content"));
            	vo.setRecommend(rs.getInt("recommend"));
                vo.setTime( rs.getString("time"));
                return vo;
            }
        };
        List<ComAnsVO> ls = jdbcTemplate.query("SELECT * FROM comAns_T WHERE no="+vo.getNo()+" ORDER BY recommend DESC", rowMapper);
        return ls;
	}

	@Override
	public ComAnsVO findByPk(ComAnsVO pvo) throws Exception {
		RowMapper<ComAnsVO> rowMapper = new RowMapper<ComAnsVO>() {
            @Override
            public ComAnsVO mapRow(ResultSet rs, int idx) throws SQLException {
            	ComAnsVO vo = new ComAnsVO();
            	vo.setAns_no(rs.getInt("ans_no"));
            	vo.setNo(rs.getInt("no"));
            	vo.setUsername(rs.getString("username"));
            	vo.setContent(rs.getString("content"));
            	vo.setRecommend(rs.getInt("recommend"));
                vo.setTime( rs.getString("time"));
                return vo;
            }
        };
        ComAnsVO ls = jdbcTemplate.queryForObject("select * from comAns_T where ans_no="+pvo.getAns_no(), rowMapper);
		return ls;
	}
	
	@Override
	public List<ComAnsVO> findByUserName(String username) throws Exception {
		RowMapper<ComAnsVO> rowMapper = new RowMapper<ComAnsVO>() {
            @Override
            public ComAnsVO mapRow(ResultSet rs, int idx) throws SQLException {
            	ComAnsVO vo = new ComAnsVO();
            	vo.setAns_no(rs.getInt("ans_no"));
            	vo.setNo(rs.getInt("no"));
            	vo.setUsername(rs.getString("username"));
            	vo.setContent(rs.getString("content"));
            	vo.setRecommend(rs.getInt("recommend"));
                vo.setTime( rs.getString("time"));
                return vo;
            }
        };
        List<ComAnsVO> ls = jdbcTemplate.query("SELECT * FROM comAns_T WHERE username=? ORDER BY no DESC", rowMapper, username);
        return ls;
	}

	@Override
	public void recom(ComAnsVO pvo, String username) throws Exception {
		RowMapper<ComAnsVO> rm = new RowMapper<ComAnsVO>() {
			@Override
			public ComAnsVO mapRow(ResultSet rs, int arg1) throws SQLException {
				ComAnsVO rec = new ComAnsVO();
				rec.setAns_no( rs.getInt("ans_no") );
				rec.setNo( rs.getInt("no") );
				rec.setUsername( rs.getString("username") );
				return rec;
			}
    	};
    	
    	ComAnsVO vo = findByPk(pvo);
    	try {
    		jdbcTemplate.queryForObject("SELECT * FROM recomCom_T WHERE ans_no=? AND username=?", rm, vo.getAns_no(), username );
        }
        catch( EmptyResultDataAccessException e ) {
        	// 찾는 값이 없다면
        	jdbcTemplate.update("UPDATE comAns_T SET recommend = recommend+1 WHERE ans_no="+pvo.getAns_no());
        	jdbcTemplate.update("INSERT INTO recomCom_T VALUES(?,?,?)", vo.getAns_no(),vo.getNo(), username );
        	// 원래 글 삭제됐을때 이것도 삭제되게 구현!! 
        }
	}

	@Override
	public int add(ComAnsVO pvo, ComVO vo) throws Exception {
		PreparedStatementSetter pss = new PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement stmt) throws SQLException {
                stmt.setString( 1, Util.han(pvo.getUsername()) );
                stmt.setString( 2, Util.han(pvo.getContent()) );
              
            }
        };
        int uc = jdbcTemplate.update("INSERT INTO comAns_T VALUES (default,"+vo.getNo()+",?,?,0, now())", pss );
        return uc;
	}

	@Override
	public int delByPK(ComAnsVO pvo) throws Exception {
		int uc = jdbcTemplate.update("DELETE FROM comAns_T WHERE ans_no = " + pvo.getAns_no());
		uc = uc + jdbcTemplate.update("DELETE FROM recomCom_T WHERE ans_no = " + pvo.getAns_no());
	    return uc;
	}
}
