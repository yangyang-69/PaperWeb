package beans;

public class Minorities {
	private int MinorityID;
	private String MinorityName;
	private String MinorityInfo;
	private int Count_paper;
	public int getCount_paper() {
		return Count_paper;
	}
	public void setCount_paper(int count_paper) {
		Count_paper = count_paper;
	}
	public int getMinorityID() {
		return MinorityID;
	}
	public void setMinorityID(int minorityID) {
		MinorityID = minorityID;
	}
	public String getMinorityName() {
		return MinorityName;
	}
	public void setMinorityName(String minorityName) {
		MinorityName = minorityName;
	}
	public String getMinorityInfo() {
		return MinorityInfo;
	}
	public void setMinorityInfo(String minorityInfo) {
		MinorityInfo = minorityInfo;
	}
}
