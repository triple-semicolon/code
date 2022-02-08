package banana;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;

public class AnswerDAO_Impl implements AnswerDAO{
	private JdbcTemplate jdbcTemplate = null;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public List<AnswerVO> findByFk(final AnswerVO pvo,final SpringVO vo) throws Exception {
		RowMapper<AnswerVO> rowMapper = new RowMapper<AnswerVO>() {
            @Override
            public AnswerVO mapRow(ResultSet rs, int idx) throws SQLException {
            	AnswerVO vo = new AnswerVO();
            	vo.setAns_no(rs.getInt("ans_no"));
            	vo.setNo(rs.getInt("no"));
            	vo.setUsername(rs.getString("username"));
            	vo.setContent(rs.getString("content"));
            	vo.setRecommend(rs.getInt("recommend"));
                vo.setTime( rs.getString("time"));
                return vo;
            }
        };
        List<AnswerVO> ls = jdbcTemplate.query("SELECT * FROM tmp_03 WHERE no="+vo.getNo()+" ORDER BY recommend DESC", rowMapper);
        return ls;
	}
	
	@Override
	public List<AnswerVO> findAll() throws Exception {
		RowMapper<AnswerVO> rowMapper = new RowMapper<AnswerVO>() {
            @Override
            public AnswerVO mapRow(ResultSet rs, int idx) throws SQLException {
            	AnswerVO vo = new AnswerVO();
            	vo.setAns_no(rs.getInt("ans_no"));
            	vo.setNo(rs.getInt("no"));
            	vo.setUsername(rs.getString("username"));
            	vo.setContent(rs.getString("content"));
            	vo.setRecommend(rs.getInt("recommend"));
                vo.setTime( rs.getString("time"));
                return vo;
            }
        };
        List<AnswerVO> ls = jdbcTemplate.query("SELECT * FROM tmp_03 ORDER BY recommend DESC", rowMapper);
        return ls;
	}
	
	@Override
	public AnswerVO findByPk(final AnswerVO pvo) throws Exception {
    	
    	RowMapper<AnswerVO> rowMapper = new RowMapper<AnswerVO>() {
            @Override
            public AnswerVO mapRow(ResultSet rs, int idx) throws SQLException {
            	AnswerVO vo = new AnswerVO();
            	vo.setAns_no(rs.getInt("ans_no"));
            	vo.setNo(rs.getInt("no"));
            	vo.setUsername(rs.getString("username"));
            	vo.setContent(rs.getString("content"));
            	vo.setRecommend(rs.getInt("recommend"));
                vo.setTime( rs.getString("time"));
                return vo;
            }
        };
        AnswerVO ls = jdbcTemplate.queryForObject("select * from tmp_03 where ans_no="+pvo.getAns_no(), rowMapper);
		return ls;
	}

	@Override
	public void recom(AnswerVO pvo, String username) throws Exception {
		RowMapper<RecomAVO> rm = new RowMapper<RecomAVO>() {
			@Override
			public RecomAVO mapRow(ResultSet rs, int arg1) throws SQLException {
				RecomAVO rec = new RecomAVO();
				rec.setAns_no( rs.getInt("ans_no") );
				rec.setNo( rs.getInt("no") );
				rec.setUsername( rs.getString("username") );
				return rec;
			}
    	};
    	
    	AnswerVO vo = findByPk(pvo);
        try {
        	RecomAVO rec = jdbcTemplate.queryForObject("SELECT * FROM recomA_T WHERE ans_no=? AND username=?", rm, vo.getAns_no(),username );
        }
        catch( EmptyResultDataAccessException e ) {
        	// 찾는 값이 없다면
        	jdbcTemplate.update("UPDATE tmp_03 SET recommend = recommend+1 WHERE ans_no="+pvo.getAns_no());
        	jdbcTemplate.update("INSERT INTO recomA_T VALUES(?,?,?)", vo.getAns_no(),vo.getNo(), username );
        	// 원래 글 삭제됐을때 이것도 삭제되게 구현!! 
        }
	}

	@Override
	public int add(AnswerVO pvo ,SpringVO vo) throws Exception {
		PreparedStatementSetter pss = new PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement stmt) throws SQLException {
                stmt.setString( 1, Util.han(pvo.getUsername()) );
                stmt.setString( 2, Util.han(pvo.getContent()) );
              
            }
        };
        int uc = jdbcTemplate.update("INSERT INTO tmp_03 VALUES (default,"+vo.getNo()+",?,?,0, now())", pss );
        return uc;
	}

	@Override
	public int delByPK(AnswerVO pvo) throws Exception {
		 int uc = jdbcTemplate.update("DELETE FROM tmp_03 WHERE ans_no = " + pvo.getAns_no());
		 uc = uc + jdbcTemplate.update("DELETE FROM recomA_T WHERE ans_no = " + pvo.getAns_no());
	     return uc;
	}

}
