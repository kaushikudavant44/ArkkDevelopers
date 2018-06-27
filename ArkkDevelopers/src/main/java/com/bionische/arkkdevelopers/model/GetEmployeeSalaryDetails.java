package com.bionische.arkkdevelopers.model;

public class GetEmployeeSalaryDetails {
	
	private int empId;
	
	private int noOfDays;
	
	private String name;
	
	private String branch;
	
	private int salary;

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public int getNoOfDays() {
		return noOfDays;
	}

	public void setNoOfDays(int noOfDays) {
		this.noOfDays = noOfDays;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	@Override
	public String toString() {
		return "GetEmployeeSalaryDetails [empId=" + empId + ", noOfDays=" + noOfDays + ", name=" + name + ", branch="
				+ branch + ", salary=" + salary + "]";
	}
	
	
	

}
