package com.bionische.arkkdevelopers.model;

public class LabourDetails {

    private int labourDetailsId;
	
	private int labourId;
	
	private String name;
	
	private String gender;
	
	private String mobileNo;
	
	private String address;
	
	private String site;
	
	private int salary;
	
	private int deviceId;
	
	private int int1;
	
	private int int2;

	private String string1;
	
	private String string2;

	public int getLabourDetailsId() {
		return labourDetailsId;
	}

	public void setLabourDetailsId(int labourDetailsId) {
		this.labourDetailsId = labourDetailsId;
	}

	public int getLabourId() {
		return labourId;
	}

	public void setLabourId(int labourId) {
		this.labourId = labourId;
	}

	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getSite() {
		return site;
	}

	public void setSite(String site) {
		this.site = site;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public int getDeviceId() {
		return deviceId;
	}

	public void setDeviceId(int deviceId) {
		this.deviceId = deviceId;
	}

	public int getInt1() {
		return int1;
	}

	public void setInt1(int int1) {
		this.int1 = int1;
	}

	public int getInt2() {
		return int2;
	}

	public void setInt2(int int2) {
		this.int2 = int2;
	}

	public String getString1() {
		return string1;
	}

	public void setString1(String string1) {
		this.string1 = string1;
	}

	public String getString2() {
		return string2;
	}

	public void setString2(String string2) {
		this.string2 = string2;
	}

	@Override
	public String toString() {
		return "LabourDetails [labourDetailsId=" + labourDetailsId + ", labourId=" + labourId + ", name=" + name
				+ ", gender=" + gender + ", mobileNo=" + mobileNo + ", address=" + address + ", site=" + site
				+ ", salary=" + salary + ", deviceId=" + deviceId + ", int1=" + int1 + ", int2=" + int2 + ", string1="
				+ string1 + ", string2=" + string2 + "]";
	}

	
	
	
	
}
