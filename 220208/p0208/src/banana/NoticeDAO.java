package banana;

import java.util.List;

public interface NoticeDAO {
	public List<NoticeVO> findAll() throws Exception;
	public NoticeVO findByPk(NoticeVO pvo) throws Exception;
	public int add(final NoticeVO pvo) throws Exception;
    public int delByPK(NoticeVO pvo ) throws Exception;
}
