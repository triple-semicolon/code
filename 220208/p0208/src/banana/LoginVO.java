package banana;

public class LoginVO {
	private String username = null;
	private String password = null;
	private String operator = null;
	
	@Override
	public String toString() {
		return "LoginVO [username=" + username + ", password=" + password + ", operator=" + operator + "]";
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getOperator() {
		return operator;
	}
	public void setOperator(String operator) {
		this.operator = operator;
	}
	
	
}

/*
CREATE TABLE login_T(
	Username VARCHAR(20),
	Password VARCHAR(20),
	Operator CHAR(1)
);
*/
