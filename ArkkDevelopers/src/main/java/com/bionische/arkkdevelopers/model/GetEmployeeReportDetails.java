package com.bionische.arkkdevelopers.model;


public class GetEmployeeReportDetails {
	
	private int userId;
	
	private String name;
	
	private String branchSite;
	
	private String date;
	
	private String inTime;
	
	private String outTime;
	

	

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getBranchSite() {
		return branchSite;
	}

	public void setBranchSite(String branchSite) {
		this.branchSite = branchSite;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getInTime() {
		return inTime;
	}

	public void setInTime(String inTime) {
		this.inTime = inTime;
	}

	public String getOutTime() {
		return outTime;
	}

	public void setOutTime(String outTime) {
		this.outTime = outTime;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "GetEmployeeReportDetails [userId=" + userId + ", name=" + name + ", branchSite=" + branchSite
				+ ", date=" + date + ", inTime=" + inTime + ", outTime=" + outTime + "]";
	}

	
	
	

}
