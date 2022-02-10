package banana;

import java.util.List;

public interface SpringDAO {
    public List<SpringVO> findAll() throws Exception;
    public SpringVO findBestQ() throws Exception;
    public SpringVO findByPk(SpringVO pvo) throws Exception;
    public List<SpringVO> findByUserName(String username) throws Exception;
    public void recom(SpringVO pvo, String username) throws Exception;
    public void view_update(SpringVO pvo, String username) throws Exception;
    public int add(SpringVO pvo) throws Exception;
    public int delByPK( SpringVO pvo ) throws Exception;
}
