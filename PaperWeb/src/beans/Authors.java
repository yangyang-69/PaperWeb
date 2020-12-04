package beans;

public class Authors {
	private int AuthorID;
	private String AuthorName;
	private String Organization;
	private int Countpaper;
	public int getCountpaper() {
		return Countpaper;
	}
	public void setCountpaper(int countpaper) {
		Countpaper = countpaper;
	}
	public int getAuthorID() {
		return AuthorID;
	}
	public void setAuthorID(int authorID) {
		AuthorID = authorID;
	}
	public String getAuthorName() {
		return AuthorName;
	}
	public void setAuthorName(String authorName) {
		AuthorName = authorName;
	}
	public String getOrganization() {
		return Organization;
	}
	public void setOrganization(String organization) {
		Organization = organization;
	}
}
