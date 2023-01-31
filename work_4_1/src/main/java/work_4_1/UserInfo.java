package work_4_1;

public class UserInfo {
	private String user;
	private String code;
	private String date;
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public UserInfo(String user, String code, String date) {
		super();
		this.user = user;
		this.code = code;
		this.date = date;
	}
}
