package entity;

public class Account {
    private int uid;
    private String username;
    private String password;
    private int roleid;
    public Account() {
		// TODO Auto-generated constructor stub
	}
	public Account(int uid, String username, String password, int roleid) {
		super();
		this.uid = uid;
		this.username = username;
		this.password = password;
		this.roleid = roleid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getRoleid() {
		return roleid;
	}
	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}
    
}
