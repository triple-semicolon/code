package banana;

public class NoticeVO {
	private Integer no = null;
	private String title = null;
	private String content = null;
	private String time = null;
	public Integer getNo() {
		return no;
	}
	@Override
	public String toString() {
		return "NoticeVO [no=" + no + ", title=" + title + ", content=" + content + ", time=" + time + "]";
	}
	public void setNo(Integer no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
}
