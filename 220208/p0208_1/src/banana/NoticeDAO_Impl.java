package banana;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;

public class NoticeDAO_Impl implements NoticeDAO {
	private JdbcTemplate jdbcTemplate = null;
	public JdbcTemplate getJdbcTemplate() { return jdbcTemplate; }
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) { this.jdbcTemplate = jdbcTemplate; }
	
	@Override
	public List<NoticeVO> findAll() throws Exception {
		RowMapper<NoticeVO> rm = new RowMapper<NoticeVO>() {
			@Override
			public NoticeVO mapRow(ResultSet rs, int arg1) throws SQLException {
				NoticeVO vo = new NoticeVO();
				vo.setNo( rs.getInt("no") );
				vo.setTitle( rs.getString("title") );
				vo.setContent( rs.getString("content") );
				vo.setTime( rs.getString("time") );
				return vo;
			}
		}; 
        List<NoticeVO> ls = jdbcTemplate.query("select * from notice_T ORDER BY no DESC", rm);
		return ls;
	}

	@Override
	public NoticeVO findByPk(NoticeVO pvo) throws Exception {
		RowMapper<NoticeVO> rm = new RowMapper<NoticeVO>() {
			@Override
			public NoticeVO mapRow(ResultSet rs, int arg1) throws SQLException {
				NoticeVO vo = new NoticeVO();
				vo.setNo( rs.getInt("no") );
				vo.setTitle( rs.getString("title") );
				vo.setContent( rs.getString("content") );
				vo.setTime( rs.getString("time") );
				return vo;
			}
		}; 
		NoticeVO ls = jdbcTemplate.queryForObject("select * from notice_T where no="+pvo.getNo(), rm);
		return ls;
	}
	
	@Override
	public int add(final NoticeVO pvo) throws Exception {
		PreparedStatementSetter pss = new PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement stmt) throws SQLException {
                stmt.setString( 1, Util.han(pvo.getTitle()) );
                stmt.setString( 2, Util.han(pvo.getContent()) );
            }
        };
        int uc = jdbcTemplate.update("INSERT INTO notice_T VALUES(default, ?, ?, NOW());", pss );
        return uc;
	}
	
	@Override
	public int delByPK(NoticeVO pvo) throws Exception {
		int uc = jdbcTemplate.update("DELETE FROM notice_T WHERE no = " + pvo.getNo());
		return uc;
	}

}
