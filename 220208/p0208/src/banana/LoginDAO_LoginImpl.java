package banana;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class LoginDAO_LoginImpl implements LoginDAO {
	private JdbcTemplate jdbcTemplate = null;
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public LoginVO findBy_IdPwd(String id, String pwd) throws Exception {
		// login 버튼을 눌렀을때 확인, 값을 받아오기 위한 메서드( 아이디 and 패스워드로 select )
		RowMapper<LoginVO> rm = new RowMapper<LoginVO>() {
            @Override
            public LoginVO mapRow(ResultSet rs, int arg1) throws SQLException {
            	// LoginVO 에 리스트 값 저장
            	LoginVO vo = new LoginVO();
            	vo.setUsername( rs.getString("Username") );
            	vo.setPassword( rs.getString("Password") );
            	vo.setOperator( rs.getNString("Operator") );
                return vo;
            }
        };
        LoginVO vo = null;
        try {
        	vo = jdbcTemplate.queryForObject("SELECT * FROM login_T WHERE Username=? AND Password=?", rm, Util.han(id), pwd);
        }
        catch( EmptyResultDataAccessException e ) {
        	// 찾는 값이 없다면 null 반환
        	return null;
        }
		return vo;
	}
	
	@Override
	public LoginVO findBy_Id(String id) throws Exception {
		// join 버튼을 눌렀을때 id 중복 확인하기 위한 메서드
		RowMapper<LoginVO> rm = new RowMapper<LoginVO>() {
            @Override
            public LoginVO mapRow(ResultSet rs, int arg1) throws SQLException {
            	// LoginVO 에 리스트 값 저장
            	LoginVO vo = new LoginVO();
            	vo.setUsername( rs.getString("Username") );
            	vo.setPassword( rs.getString("Password") );
            	vo.setOperator( rs.getNString("Operator") );
                return vo;
            }
        };
        LoginVO vo = null;
        try {
        	vo = jdbcTemplate.queryForObject("SELECT * FROM login_T WHERE Username=?", rm, Util.han(id));
        }
        catch( EmptyResultDataAccessException e ) {
        	// 찾는 값이 없다면 null 반환
        	return null;
        }
		return vo;
	}

	@Override
	public String add_join(String id, String pwd) throws Exception {
		LoginVO vo = findBy_Id(id);
		
		// findBy_Id 에서 null 이 아니면 id 가 중복되었다는 뜻
		if( vo != null ) {
			return "fail";
		}
		else {
			// findBy_Id 에서 null 이면 id와 pwd 를 insert
			jdbcTemplate.update("INSERT INTO login_T VALUES(?, ?, 'N')", Util.han(id), pwd );
			return "success";
		}
	}
}
