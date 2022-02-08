package banana;

public class ComAnsVO {
	private Integer ans_no = null;
	private Integer no = null;
	private String username = null;
	private String content = null;
	private Integer recommend = null;
	private String time = null;
	public Integer getAns_no() {
		return ans_no;
	}
	public void setAns_no(Integer ans_no) {
		this.ans_no = ans_no;
	}
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getRecommend() {
		return recommend;
	}
	public void setRecommend(Integer recommend) {
		this.recommend = recommend;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "ComAnsVO [ans_no=" + ans_no + ", no=" + no + ", username=" + username + ", content=" + content
				+ ", recommend=" + recommend + ", time=" + time + "]";
	}
}
