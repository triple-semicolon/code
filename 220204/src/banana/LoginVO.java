package banana;

public class LoginVO {
	@Override
	public String toString() {
		return "SprigVO [username=" + username + ", password=" + password + ", login=" + login + ", operator="
				+ operator + "]";
	}
	private String username = null;
	private String password = null;
	private String login = null;
	private String operator = null;
	
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
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
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
	IsLogin CHAR(1),
	Operator CHAR(1)
);
*/
