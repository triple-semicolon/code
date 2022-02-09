package banana;

import java.util.List;

public interface AnswerDAO {
    public List<AnswerVO> findByFk(AnswerVO pvo, SpringVO vo) throws Exception;
    public List<AnswerVO> findAll() throws Exception;
    public AnswerVO findByPk(AnswerVO pvo) throws Exception;
    public void recom(AnswerVO pvo, String username) throws Exception;
    public int add(AnswerVO pvo,SpringVO vo) throws Exception;
    public int delByPK( AnswerVO pvo ) throws Exception;
}
