package beans;

public class Papers {
	private int ID;
	private String Title;
	private int AutorID;
	private String Summary;
	private int SourceID;
	private String PubTime;//暂时还不确定时间在Eclipse中的数据类型
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public int getAutorID() {
		return AutorID;
	}
	public void setAutorID(int autorID) {
		AutorID = autorID;
	}
	public String getSummary() {
		return Summary;
	}
	public void setSummary(String summary) {
		Summary = summary;
	}
	public int getSourceID() {
		return SourceID;
	}
	public void setSourceID(int sourceID) {
		SourceID = sourceID;
	}
	public String getPubTime() {
		return PubTime;
	}
	public void setPubTime(String pubTime) {
		PubTime = pubTime;
	}
	public int getVolume() {
		return Volume;
	}
	public void setVolume(int volume) {
		Volume = volume;
	}
	public int getPeriod() {
		return Period;
	}
	public void setPeriod(int period) {
		Period = period;
	}
	public String getPageCount() {
		return PageCount;
	}
	public void setPageCount(String pageCount) {
		PageCount = pageCount;
	}
	public int getCited() {
		return Cited;
	}
	public void setCited(int cited) {
		Cited = cited;
	}
	public int getDownloaded() {
		return Downloaded;
	}
	public void setDownloaded(int downloaded) {
		Downloaded = downloaded;
	}
	public int getMinorityID() {
		return MinorityID;
	}
	public void setMinorityID(int minorityID) {
		MinorityID = minorityID;
	}
	private int Volume;
	private int Period;
	private String PageCount;
	private int Cited;
	private int Downloaded;
	private int MinorityID;
}
