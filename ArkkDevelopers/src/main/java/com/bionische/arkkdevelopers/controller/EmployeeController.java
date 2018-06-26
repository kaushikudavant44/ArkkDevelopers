package com.bionische.arkkdevelopers.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bionische.arkkdevelopers.common.Constants;
import com.bionische.arkkdevelopers.common.VpsImageUpload;
import com.bionische.arkkdevelopers.model.BranchSiteDetails;
import com.bionische.arkkdevelopers.model.EmployeeDetails;
import com.bionische.arkkdevelopers.model.Info;

@Controller
public class EmployeeController {
	
	@RequestMapping(value = "/showEmployeeRegistration", method = RequestMethod.GET)
	public ModelAndView showEmployeeRegistration(HttpSession session, HttpServletRequest request) {
		
	ModelAndView model=new ModelAndView("employee/employee-details");
		return model;
	}
	@RequestMapping(value = "/showAllEmployee", method = RequestMethod.GET)
	public ModelAndView showAllEmployee(HttpSession session, HttpServletRequest request) {
		
	ModelAndView model=new ModelAndView("employee/show-employee-details");
	
	List<BranchSiteDetails> branchSiteDetails=new ArrayList<BranchSiteDetails>();
	MultiValueMap<String, Object> map=new LinkedMultiValueMap<String, Object>();
	map.add("type",1);
	
	RestTemplate rest=new RestTemplate();
	try {
		branchSiteDetails=rest.postForObject(Constants.url+"getBranchSiteDetailsByType",map,List .class);
	
		
	System.out.println("branchSiteDetails "+branchSiteDetails.toString());
	model.addObject("branchSiteDetails", branchSiteDetails);
	
	}catch (Exception e) {
		System.out.println(e.getMessage());
	}
		return model;
	}
	
	@RequestMapping(value = "/saveEmployeeDetails", method = RequestMethod.POST)
	public String saveEmployeeDetails(HttpServletRequest req, HttpServletResponse res)
	{
		
		System.out.println("came");
		String url=null;
		ModelAndView model =new ModelAndView("employee-details");
		
		EmployeeDetails employeeDetails=new EmployeeDetails();
		
		String profilePhotoName="ambi";
		String documentName="ambi";
	
		/*try {
				VpsImageUpload vpsImageUpload=new VpsImageUpload();
				 profilePhotoName=photo.get(0).getOriginalFilename();
				
			vpsImageUpload.saveUploadedFiles(photo,2, profilePhotoName);
		}
		catch (IOException e1) {
			 
			e1.printStackTrace();
		}
		
		try {
			
			VpsImageUpload vpsImageUploadDoc=new VpsImageUpload();
			documentName=document.get(0).getOriginalFilename();
		
		vpsImageUploadDoc.saveUploadedFiles(document,2, documentName);
		}
		catch (IOException e1) {
			 
			e1.printStackTrace();
		}*/
	
		
		employeeDetails.setEmpId(Integer.parseInt(req.getParameter("empId")));
		employeeDetails.setName(req.getParameter("name"));
		employeeDetails.setGender(req.getParameter("gender"));
		employeeDetails.setBranch(req.getParameter("branch"));
		employeeDetails.setDeviceId(Integer.parseInt(req.getParameter("deviceId")));
		employeeDetails.setAddress(req.getParameter("address"));
		employeeDetails.setDesignation(req.getParameter("designation"));
		employeeDetails.setDob(req.getParameter("dob"));
		employeeDetails.setMobileNo((req.getParameter("mobileNo")));
		employeeDetails.setEmail(req.getParameter("email"));
		employeeDetails.setPhoto(profilePhotoName);
		employeeDetails.setDocument(documentName);
		employeeDetails.setInt1(0);
		employeeDetails.setInt2(0);
		employeeDetails.setString1("1");
		employeeDetails.setString2("1");
	
		System.out.println("employeeDetails:"+employeeDetails.toString());
		RestTemplate rest=new RestTemplate();
		try {
			employeeDetails=rest.postForObject(Constants.url+"insertEmployeeDetails", employeeDetails,EmployeeDetails .class);
		
		System.out.println("response "+employeeDetails.toString());
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return "redirect:"+url;
	}
	@RequestMapping(value = "/showEmployeeDetailsByBranch", method = RequestMethod.GET)
	public @ResponseBody List<EmployeeDetails> showEmployeeDetailsByBranch(HttpSession session, HttpServletRequest request) {
		
	ModelAndView model=new ModelAndView("employee/show-employee-details");
	 List<EmployeeDetails> employeeDetails=new ArrayList<EmployeeDetails>();
	 
	 String branchId=request.getParameter("branchId");
	
	BranchSiteDetails branchSiteDetails=new BranchSiteDetails();
	MultiValueMap<String, Object> map=new LinkedMultiValueMap<String, Object>();
	map.add("branchId",branchId);
	
	RestTemplate rest=new RestTemplate();
	try {
		employeeDetails=rest.postForObject(Constants.url+"getEmployeeDetailsByBranch",map,List .class);
	
	System.out.println("employeeDetailsssss "+employeeDetails.toString());
	}catch (Exception e) {
		System.out.println(e.getMessage());
	}
		return employeeDetails;
	}

	@RequestMapping(value = "/showEmployeeDetailsById", method = RequestMethod.GET)
	public @ResponseBody EmployeeDetails showEmployeeDetailsById(HttpSession session, HttpServletRequest request) {
		
	ModelAndView model=new ModelAndView("employee/show-employee-details");
	 EmployeeDetails employeeDetails=new EmployeeDetails();
	 
	 String empId=request.getParameter("empId");
	
	BranchSiteDetails branchSiteDetails=new BranchSiteDetails();
	MultiValueMap<String, Object> map=new LinkedMultiValueMap<String, Object>();
	map.add("empId",empId);
	
	RestTemplate rest=new RestTemplate();
	try {
		employeeDetails=rest.postForObject(Constants.url+"getEmployeeDetailsByEmpId",map,EmployeeDetails .class);
	
	System.out.println("employeeDetailsssss "+employeeDetails.toString());
	}catch (Exception e) {
		System.out.println(e.getMessage());
	}
		return employeeDetails;
	}

	
	@RequestMapping(value = "/deleteEmployeeDetailsById", method = RequestMethod.GET)
	public @ResponseBody Info deleteEmployeeDetailsById(HttpSession session, HttpServletRequest request) {
		
	 Info info=new Info();
	 
	 String empId=request.getParameter("empId");
	 System.out.println("employeeid:"+empId);
	MultiValueMap<String, Object> map=new LinkedMultiValueMap<String, Object>();
	map.add("empId",empId);
	
	RestTemplate rest=new RestTemplate();
	try {
		info=rest.postForObject(Constants.url+"deleteEmployeeById",map,Info .class);
	
	System.out.println("info "+info.toString());
	}catch (Exception e) {
		System.out.println(e.getMessage());
	}
		return info;
	}
	
	@RequestMapping(value = "/updateEmployeeDetails", method = RequestMethod.POST)
	public String updateEmployeeDetails(HttpServletRequest req, HttpServletResponse res)
	{
		
		System.out.println("came");
		String url=null;
		ModelAndView model =new ModelAndView("employee/show-employee-details");
		
		EmployeeDetails employeeDetails=new EmployeeDetails();
		
		String profilePhotoName="ambi";
		String documentName="ambi";
	
	    String empDetailsId=req.getParameter("empId");
	    if(empDetailsId!=null||empDetailsId!="")
	    {
	    	employeeDetails.setEmpDetailsId(Integer.parseInt(empDetailsId));
	    }
		
		employeeDetails.setEmpId(Integer.parseInt(req.getParameter("empId")));
		employeeDetails.setName(req.getParameter("name"));
		employeeDetails.setGender(req.getParameter("gender"));
		employeeDetails.setBranch(req.getParameter("branch"));
		employeeDetails.setDeviceId(Integer.parseInt(req.getParameter("deviceId")));
		employeeDetails.setAddress(req.getParameter("address"));
		employeeDetails.setDesignation(req.getParameter("designation"));
		employeeDetails.setDob(req.getParameter("dob"));
		employeeDetails.setMobileNo((req.getParameter("mobileNo")));
		employeeDetails.setEmail(req.getParameter("email"));
		employeeDetails.setPhoto(profilePhotoName);
		employeeDetails.setDocument(documentName);
		employeeDetails.setInt1(0);
		employeeDetails.setInt2(0);
		employeeDetails.setString1("1");
		employeeDetails.setString2("1");
	
		System.out.println("employeeDetails:"+employeeDetails.toString());
		RestTemplate rest=new RestTemplate();
		try {
			employeeDetails=rest.postForObject(Constants.url+"insertEmployeeDetails", employeeDetails,EmployeeDetails .class);
		
		System.out.println("response "+employeeDetails.toString());
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return "redirect:"+url;
	}
}
