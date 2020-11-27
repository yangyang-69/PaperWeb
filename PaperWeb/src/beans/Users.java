package beans;

public class Users {
	private int UserID;
	private String UserName;
	private String password;
	private String UserOrganization;
	public int getUserID() {
		return UserID;
	}
	public String getUserOrganization() {
		return UserOrganization;
	}
	public void setUserOrganization(String userOrganization) {
		UserOrganization = userOrganization;
	}
	public void setUserID(int userID) {
		UserID = userID;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
