package banana;

import java.util.List;

public interface SpringDAO {
    public List<SpringVO> findAll() throws Exception;
    public SpringVO findByPk(SpringVO pvo) throws Exception;
    public int recom(SpringVO pvo) throws Exception;
    public int add(SpringVO pvo) throws Exception;
    public int delByPK( SpringVO pvo ) throws Exception;
}
