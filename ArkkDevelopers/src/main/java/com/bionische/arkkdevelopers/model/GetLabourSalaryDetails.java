package com.bionische.arkkdevelopers.model;

import java.util.List;


public class GetLabourSalaryDetails {

	 
	
	private int labourId;
	

	private int noOfDays;
	
	
	private String name;
	
	private int salary;

	
	List<LabourSalaryDetailsList> labourSalaryDetailsList;

	public int getLabourId() {
		return labourId;
	}



	public void setLabourId(int labourId) {
		this.labourId = labourId;
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



	public int getSalary() {
		return salary;
	}



	public void setSalary(int salary) {
		this.salary = salary;
	}



	public List<LabourSalaryDetailsList> getLabourSalaryDetailsList() {
		return labourSalaryDetailsList;
	}



	public void setLabourSalaryDetailsList(List<LabourSalaryDetailsList> labourSalaryDetailsList) {
		this.labourSalaryDetailsList = labourSalaryDetailsList;
	}



	@Override
	public String toString() {
		return "GetLabourSalaryDetails [labourId=" + labourId + ", noOfDays=" + noOfDays + ", name=" + name
				+ ", salary=" + salary + ", labourSalaryDetailsList=" + labourSalaryDetailsList + "]";
	}



	 

	
	
	
}
