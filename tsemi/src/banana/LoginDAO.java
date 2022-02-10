package banana;

public interface LoginDAO {
	public LoginVO findBy_Id( String id ) throws Exception;
	public LoginVO findBy_IdPwd( String id, String pwd ) throws Exception;
	public String add_join(String id, String pwd) throws Exception;
}
