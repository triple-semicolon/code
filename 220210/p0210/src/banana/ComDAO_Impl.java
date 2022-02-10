package banana;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;

public class ComDAO_Impl implements ComDAO{
	private JdbcTemplate jdbcTemplate = null;
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public List<ComVO> findAll() throws Exception {
		RowMapper<ComVO> rowMapper = new RowMapper<ComVO>() {
            @Override
            public ComVO mapRow(ResultSet rs, int idx) throws SQLException {
            	ComVO vo = new ComVO();
                vo.setNo(rs.getInt("no"));
                vo.setUsername( rs.getString("username"));
                vo.setTitle( rs.getString("title"));
                vo.setContent( rs.getString("content"));
                vo.setView(rs.getInt("view"));
                vo.setTime( rs.getString("time"));
                return vo;
            }
        };
        List<ComVO> ls = jdbcTemplate.query("select * from com_T ORDER BY no DESC", rowMapper);
        return ls;
	}

	@Override
	public ComVO findByPk(ComVO pvo) throws Exception {
		RowMapper<ComVO> rowMapper = new RowMapper<ComVO>() {
            @Override
            public ComVO mapRow(ResultSet rs, int idx) throws SQLException {
            	ComVO vo = new ComVO();
                vo.setNo(rs.getInt("no"));
                vo.setUsername( rs.getString("username") );
                vo.setTitle( rs.getString("title") );
                vo.setContent( rs.getString("content") );
                vo.setView(rs.getInt("view"));
                vo.setTime( rs.getString("time"));
                return vo;
            }
        };
        ComVO ls = jdbcTemplate.queryForObject("select * from com_T where no="+pvo.getNo(), rowMapper);
		return ls;
	}

	@Override
	public void view_update(ComVO pvo, String username) throws Exception {
		RowMapper<ViewComVO> rm = new RowMapper<ViewComVO>() {
			@Override
			public ViewComVO mapRow(ResultSet rs, int arg1) throws SQLException {
				ViewComVO view = new ViewComVO();
				view.setNo( rs.getInt("no") );
				view.setUsername( rs.getString("username") );
				return view;
			}
    	};

        try {
        	ViewComVO rec = jdbcTemplate.queryForObject("SELECT * FROM viewCom_T WHERE no=? and username=?", rm, pvo.getNo(), username );
        }
        catch( EmptyResultDataAccessException e ) {
        	// 찾는 값이 없다면
        	jdbcTemplate.update("UPDATE com_T SET view = view+1 WHERE no="+ pvo.getNo());
        	jdbcTemplate.update("INSERT INTO viewCom_T VALUES(?,?)", pvo.getNo(), username );
        	// 원래 글 삭제됐을때 이것도 삭제되게 구현!! 
        }
	}

	@Override
	public int add(ComVO pvo) throws Exception {
		PreparedStatementSetter pss = new PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement stmt) throws SQLException {
                stmt.setString( 1, Util.han(pvo.getUsername()) );
                stmt.setString( 2, Util.han(pvo.getTitle()) );
                stmt.setString( 3, Util.han(pvo.getContent()) );
            }
        };
        int uc = jdbcTemplate.update("INSERT INTO com_T VALUES (default,?,?,?,0, now())", pss );
        return uc;
	}

	@Override
	public int delByPK(ComVO pvo) throws Exception {
		// 잡담 삭제
        int uc = jdbcTemplate.update("DELETE FROM com_T WHERE no = " + pvo.getNo());
        // 잡담 달린 답변들 삭제
        uc = uc + jdbcTemplate.update("DELETE FROM comAns_T WHERE no = " + pvo.getNo());
        // 잡담 달린 조회수 삭제
        uc = uc + jdbcTemplate.update("DELETE FROM viewCom_T WHERE no = " + pvo.getNo());
        return uc;
	}

}
