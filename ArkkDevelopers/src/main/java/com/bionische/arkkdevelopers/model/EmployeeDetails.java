package com.bionische.arkkdevelopers.model;

public class EmployeeDetails {
	
	private int empDetailsId;
	
	private int empId;
	
	private String name;
	
	private String gender;
	
	private String dob;
	
	private String email;
	
	private String mobileNo;
	
	private String address;
	
	private String branch;
	
	private String designation;
	
	private int salary;
	
	private int deviceId;
	
	private String photo;
	
	private String document;
	
	private int int1;
	
	private int int2;

	private String string1;
	
	private String string2;

	public int getEmpDetailsId() {
		return empDetailsId;
	}

	public void setEmpDetailsId(int empDetailsId) {
		this.empDetailsId = empDetailsId;
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
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

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
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

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getDocument() {
		return document;
	}

	public void setDocument(String document) {
		this.document = document;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "EmployeeDetails [empDetailsId=" + empDetailsId + ", empId=" + empId + ", name=" + name + ", gender="
				+ gender + ", dob=" + dob + ", email=" + email + ", mobileNo=" + mobileNo + ", address=" + address
				+ ", branch=" + branch + ", designation=" + designation + ", salary=" + salary + ", deviceId="
				+ deviceId + ", photo=" + photo + ", document=" + document + ", int1=" + int1 + ", int2=" + int2
				+ ", string1=" + string1 + ", string2=" + string2 + "]";
	}

	

}
