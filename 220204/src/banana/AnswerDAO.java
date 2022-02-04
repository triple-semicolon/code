package banana;

import java.util.List;

public interface AnswerDAO {
    public List<AnswerVO> findByFk(AnswerVO pvo,final SpringVO vo) throws Exception;
    public int recom(AnswerVO pvo) throws Exception;
    public int add(AnswerVO pvo,SpringVO vo) throws Exception;
    public int delByPK( AnswerVO pvo ) throws Exception;
}
