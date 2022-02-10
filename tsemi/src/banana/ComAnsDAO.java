package banana;

import java.util.List;

public interface ComAnsDAO {
	public List<ComAnsVO> findByFk(ComAnsVO pvo, ComVO vo) throws Exception;
    public ComAnsVO findByPk(ComAnsVO pvo) throws Exception;
    public List<ComAnsVO> findByUserName(String username) throws Exception;
    public void recom(ComAnsVO pvo, String username) throws Exception;
    public int add(ComAnsVO pvo,ComVO vo) throws Exception;
    public int delByPK( ComAnsVO pvo ) throws Exception;
}
