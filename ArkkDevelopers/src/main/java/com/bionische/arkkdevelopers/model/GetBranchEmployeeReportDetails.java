package com.bionische.arkkdevelopers.model;

public class GetBranchEmployeeReportDetails {
	
	
	private int deviceLogId;
	
	
	
	private int userId;
	
	
	private String name;
	
	
	private String branchSite;
	
	 
	private String salary;
	
	
	private String DeviceId;
	
	
	
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

	public int getDeviceLogId() {
		return deviceLogId;
	}

	public void setDeviceLogId(int deviceLogId) {
		this.deviceLogId = deviceLogId;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getDeviceId() {
		return DeviceId;
	}

	public void setDeviceId(String deviceId) {
		DeviceId = deviceId;
	}

	@Override
	public String toString() {
		return "GetBranchEmployeeReportDetails [deviceLogId=" + deviceLogId + ", userId=" + userId + ", name=" + name
				+ ", branchSite=" + branchSite + ", salary=" + salary + ", DeviceId=" + DeviceId + ", date=" + date
				+ ", inTime=" + inTime + ", outTime=" + outTime + "]";
	}

	 
	

	 

	 

 
	

}
