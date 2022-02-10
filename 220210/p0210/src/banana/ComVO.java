package banana;

public class ComVO {
	private Integer no = null;
	private String username = null;
    private String title = null;
    private String content = null;
    private Integer view = null;
    private String time = null;
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
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
	public Integer getView() {
		return view;
	}
	public void setView(Integer view) {
		this.view = view;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "ComVO [no=" + no + ", username=" + username + ", title=" + title + ", content=" + content + ", view="
				+ view + ", time=" + time + "]";
	}
}
