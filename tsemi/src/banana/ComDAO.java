package banana;

import java.util.List;

public interface ComDAO {
	public List<ComVO> findAll() throws Exception;
	public ComVO findByPk(ComVO pvo) throws Exception;
	public List<ComVO> findByUserName(String username) throws Exception;
	public void view_update(ComVO pvo, String username) throws Exception;
	public int add(ComVO pvo) throws Exception;
	public int delByPK( ComVO pvo ) throws Exception;
}
