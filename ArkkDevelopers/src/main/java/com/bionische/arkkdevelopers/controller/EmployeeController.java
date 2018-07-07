package com.bionische.arkkdevelopers.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bionische.arkkdevelopers.common.Constants;
import com.bionische.arkkdevelopers.common.VpsImageUpload;
import com.bionische.arkkdevelopers.model.AttendanceDetails;
import com.bionische.arkkdevelopers.model.BranchSiteDetails;
import com.bionische.arkkdevelopers.model.EmployeeDetails;
import com.bionische.arkkdevelopers.model.GetEmployeeReportDetails;
import com.bionische.arkkdevelopers.model.GetEmployeeSalaryDetails;
import com.bionische.arkkdevelopers.model.Info;

@Controller
public class EmployeeController {
	
	@RequestMapping(value = "/showEmployeeRegistration", method = RequestMethod.GET)
	public ModelAndView showEmployeeRegistration(HttpSession session, HttpServletRequest request) {
		
	ModelAndView model=new ModelAndView("employee/employee-details");
	
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
	
	/**
	 * 
	 * @param session
	 * @param request
	 * @return
	 */
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
	public String saveEmployeeDetails(HttpServletRequest req, HttpServletResponse res,@RequestParam("photo") List<MultipartFile> photo,@RequestParam("document") List<MultipartFile> document)
	{
		
		System.out.println("came");
		String url="/showAllEmployee";
		ModelAndView model =new ModelAndView("employee/employee-details");
		
		EmployeeDetails employeeDetails=new EmployeeDetails();
		
		/*String profilePhotoName=null;
		String documentName=null;*/
	
	/*try {
				VpsImageUpload vpsImageUpload=new VpsImageUpload();
				 profilePhotoName=photo.get(0).getOriginalFilename();
				
			vpsImageUpload.saveUploadedFiles(photo,1, profilePhotoName);
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
		employeeDetails.setSalary(Integer.parseInt(req.getParameter("salary")));
		employeeDetails.setMobileNo((req.getParameter("mobileNo")));
		employeeDetails.setEmail(req.getParameter("email"));
	//	employeeDetails.setPhoto(profilePhotoName);
	//	employeeDetails.setDocument(documentName);
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
		
		System.out.println("came");
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
	
	@RequestMapping(value = "/manualAttendanceById", method = RequestMethod.GET)
	public @ResponseBody ModelAndView manualAttendanceById(HttpSession session, HttpServletRequest request) {
		
	ModelAndView model=new ModelAndView("employee/employee-manual-attendance");
	 EmployeeDetails employeeDetails=new EmployeeDetails();
	 List<BranchSiteDetails> branchSiteDetails=new ArrayList<BranchSiteDetails>();
	 
	 MultiValueMap<String, Object> map=new LinkedMultiValueMap<String, Object>();
	 MultiValueMap<String, Object> mapBranch=new LinkedMultiValueMap<String, Object>();
	 mapBranch.add("type",1);
	 
	 String empId=request.getParameter("empId");
	 
	if(empId!=null&&empId!="")
	{
	map.add("empId",Integer.parseInt(empId));
	}
	RestTemplate rest=new RestTemplate();
	try {
		employeeDetails=rest.postForObject(Constants.url+"getEmployeeDetailsByEmpId",map,EmployeeDetails .class);
		branchSiteDetails=rest.postForObject(Constants.url+"getBranchSiteDetailsByType",mapBranch,List .class);
	
		model.addObject("employeeDetails", employeeDetails);
		model.addObject("branchSiteDetails", branchSiteDetails);
	System.out.println("employeeDetailsssss "+employeeDetails.toString());
	}catch (Exception e) {
		System.out.println(e.getMessage());
	}
		return model;
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
		String url="/showUpdatedEmployeeDetailsById/"+Integer.parseInt(req.getParameter("empId"));
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
	@RequestMapping(value = "/showUpdatedEmployeeDetailsById/{empId}", method = RequestMethod.GET)
	public ModelAndView showUpdatedEmployeeDetailsById(HttpSession session, HttpServletRequest request,@PathVariable("empId") int empId) {
		
	ModelAndView model=new ModelAndView("employee/show-employee-details");
	
	 EmployeeDetails employeeDetails=new EmployeeDetails();

	
	
	MultiValueMap<String, Object> map=new LinkedMultiValueMap<String, Object>();
	map.add("empId",empId);
	
	RestTemplate rest=new RestTemplate();
	try {
		employeeDetails=rest.postForObject(Constants.url+"getEmployeeDetailsByEmpId",map,EmployeeDetails .class);
		model.addObject("employeeDetails", employeeDetails);
	System.out.println("employeeDetailsssss "+employeeDetails.toString());
	}catch (Exception e) {
		System.out.println(e.getMessage());
	}
		return model;
	}
	
	/*@RequestMapping(value = "/showEmployeeReport", method = RequestMethod.GET)
	public ModelAndView showEmployeeReport(HttpSession session, HttpServletRequest request0) {
		
	ModelAndView model=new ModelAndView("employee/employee-reports");
	
		return model;
	}*/

	
	@RequestMapping(value = "/getEmployeeReport", method = RequestMethod.GET)
	public ModelAndView getEmployeeReport(HttpSession session, HttpServletRequest request) {
		
	ModelAndView model=new ModelAndView("employee/employee-reports");
	
	List<GetEmployeeReportDetails> employeeReportDetails=new ArrayList<GetEmployeeReportDetails>();
	List<BranchSiteDetails> branchSiteDetails=new ArrayList<BranchSiteDetails>();
	
	String empId=request.getParameter("empId");
	String branchId=request.getParameter("branchId");
	String from=request.getParameter("from");
	String to=request.getParameter("to");
	
	System.out.println("gvvvvvvvvvvvvvv:"+empId+branchId+from+to);
	MultiValueMap<String, Object> map=new LinkedMultiValueMap<String, Object>();
	
	RestTemplate rest=new RestTemplate();
	try {
		if(empId!=null&&empId!="")
		{
			System.out.println("came");
			map.add("empId",empId);
			map.add("fromDate",from);
			map.add("toDate",to);
			employeeReportDetails=rest.postForObject(Constants.url+"getEmpAttendenceByEmpIdAndDate",map,List.class);
		}
		else if(branchId!=null&&branchId!="")
		{
			map.add("branch",branchId);
			map.add("fromDate",from);
			map.add("toDate",to);
			employeeReportDetails=rest.postForObject(Constants.url+"getAttendenceByBranchAndBetweenDate",map,List.class);
			System.out.println("report:-"+employeeReportDetails.toString());
		}

		MultiValueMap<String, Object> mapBranch=new LinkedMultiValueMap<String, Object>();
		mapBranch.add("type",1);
		
		branchSiteDetails=rest.postForObject(Constants.url+"getBranchSiteDetailsByType",mapBranch,List .class);
		
		model.addObject("branchSiteDetails", branchSiteDetails);
		model.addObject("employeeReportDetails", employeeReportDetails);
	//System.out.println("employeeReportDetails "+employeeReportDetails.toString());
	}catch (Exception e) {
		System.out.println(e.getMessage());
	}
		return model;
	}
	
	@RequestMapping(value = "/getEmployeeSalary", method = RequestMethod.GET)
	public ModelAndView getEmployeeSalary(HttpSession session, HttpServletRequest request) {
		
	ModelAndView model=new ModelAndView("employee/employee-salary");
	
	List<GetEmployeeSalaryDetails> getEmployeeSalaryDetails=new ArrayList<GetEmployeeSalaryDetails>();
	List<BranchSiteDetails> branchSiteDetails=new ArrayList<BranchSiteDetails>();
	
	//List<GetEmployeeSalaryByBranch> getEmployeeSalaryByBranchList=new ArrayList<GetEmployeeSalaryByBranch>();
	String empId=request.getParameter("empId");
	String branchId=request.getParameter("branchId");
	String monthId=request.getParameter("monthId");
	String fromDate=request.getParameter("from");
	String toDate=request.getParameter("to");
	System.out.println("hdhehdjehd:"+empId+monthId);
	
	MultiValueMap<String, Object> map=new LinkedMultiValueMap<String, Object>();
	
	RestTemplate rest=new RestTemplate();
	try {
		if(empId!=null&&empId!="")
		{
			map.add("empId",empId);
			map.add("month",monthId);
			map.add("year",new SimpleDateFormat("yyyy").format(new Date()));
			getEmployeeSalaryDetails=rest.postForObject(Constants.url+"getEmpSalaryDetails",map,List .class);
		}
		else if(branchId!=null&&branchId!="")
		{
			map.add("branchId",branchId);
			map.add("month",monthId);
			map.add("year",new SimpleDateFormat("yyyy").format(new Date()));
			getEmployeeSalaryDetails=rest.postForObject(Constants.url+"getEmployeeSalaryDetailsByBranch",map,List .class);
		}

		MultiValueMap<String, Object> mapBranch=new LinkedMultiValueMap<String, Object>();
		mapBranch.add("type",1);
		
		branchSiteDetails=rest.postForObject(Constants.url+"getBranchSiteDetailsByType",mapBranch,List .class);
		
		model.addObject("branchSiteDetails", branchSiteDetails);
		model.addObject("getEmployeeSalaryDetails", getEmployeeSalaryDetails);
	System.out.println("getEmployeeSalaryDetails "+getEmployeeSalaryDetails.toString());
	}catch (Exception e) {
		System.out.println(e.getMessage());
	}
		return model;
	}
	
	
	@RequestMapping(value = "/saveEmployeeManualAttendance", method = RequestMethod.POST)
	public ModelAndView saveEmployeeManualAttendance(HttpServletRequest req, HttpServletResponse res)
	{
		
		System.out.println("came");
		
		ModelAndView model=new ModelAndView("employee/employee-manual-attendance");
		
		AttendanceDetails attendanceDetails=new AttendanceDetails();
		
		attendanceDetails.setDeviceId(Integer.parseInt(req.getParameter("deviceId")));
		attendanceDetails.setUserId(req.getParameter("userID"));
		attendanceDetails.setDirection(req.getParameter("direction"));
		attendanceDetails.setAttDirection("1");
		attendanceDetails.setLogDate(req.getParameter("date"));
		attendanceDetails.setDownloadDate(req.getParameter("date"));
		attendanceDetails.setWorkCode("1");
		attendanceDetails.setC1("1");
		attendanceDetails.setC2("1");
		attendanceDetails.setC3("1");
		attendanceDetails.setC4("1");
		attendanceDetails.setC5("1");
		attendanceDetails.setC6("1");
		attendanceDetails.setC7("1");	
	
		System.out.println("attendanceDetails:"+attendanceDetails.toString());
		RestTemplate rest=new RestTemplate();
		try {
			attendanceDetails=rest.postForObject(Constants.url+"insertEmployeeManualAttendance", attendanceDetails,AttendanceDetails.class);
		
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return model;
	}
}
