package com.bionische.arkkdevelopers.controller;

import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.bionische.arkkdevelopers.common.Constants;
import com.bionische.arkkdevelopers.model.AttendanceDetails;
import com.bionische.arkkdevelopers.model.BranchSiteDetails;
import com.bionische.arkkdevelopers.model.GetBranchEmployeeReportDetails;
import com.bionische.arkkdevelopers.model.GetEmployeeReportDetails;
import com.bionische.arkkdevelopers.model.GetLabourSalaryDetails;
import com.bionische.arkkdevelopers.model.Info;
import com.bionische.arkkdevelopers.model.LabourDetails;

/**
 * 
 * @author Jarves
 *
 */ 
@Controller
public class LabourController {
	RestTemplate rest=new RestTemplate();

	@RequestMapping(value = "/showManualAttendance", method = RequestMethod.GET)
	public ModelAndView showManualAttendance(HttpSession session, HttpServletRequest request) {
		
	List<BranchSiteDetails> branchSiteDetailsList=new ArrayList<BranchSiteDetails>(); 	
	ModelAndView model=new ModelAndView("labour/labour-manual-attendance");
	
	MultiValueMap<String, Object> map=new LinkedMultiValueMap<String, Object>();
	map.add("type",2);
	
	branchSiteDetailsList=rest.postForObject(Constants.url+"/getBranchSiteDetailsByType", map, List.class);
	
	model.addObject("branchSiteDetailsList",branchSiteDetailsList);
		return model;
	}
	
	
	/**
	 * Show labour registration page.
	 * @param session
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/showLabourDetails", method = RequestMethod.GET)
	public ModelAndView showLabourDetails(HttpSession session, HttpServletRequest request) {
		
	ModelAndView model=new ModelAndView("labour/labour-details");
		
	List<BranchSiteDetails> branchSiteDetailsList=new ArrayList<BranchSiteDetails>(); 
	int type=2;
	MultiValueMap<String, Object> map=new LinkedMultiValueMap<String, Object>();
	map.add("type",""+type);
	branchSiteDetailsList=rest.postForObject(Constants.url+"/getBranchSiteDetailsByType", map, List.class);
	System.out.println("cdnscbh"+branchSiteDetailsList.toString());
	model.addObject("branchSiteDetailsList",branchSiteDetailsList);
	
	return model;
	
	}
	
	/**
	 * Show labour registration page.
	 * @param session
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/showGetLabourDetails", method = RequestMethod.GET)
	public ModelAndView showGetLabourDetails(HttpSession session, HttpServletRequest request) {
		
	ModelAndView model=new ModelAndView("labour/show-labour-details");
	List<BranchSiteDetails> branchSiteDetailsList=new ArrayList<BranchSiteDetails>(); 
	int type=2;
	MultiValueMap<String, Object> map=new LinkedMultiValueMap<String, Object>();
	map.add("type",""+type);
	branchSiteDetailsList=rest.postForObject(Constants.url+"/getBranchSiteDetailsByType", map, List.class);
	System.out.println("cdnscbh"+branchSiteDetailsList.toString());
	model.addObject("branchSiteDetailsList",branchSiteDetailsList);
	
		return model;
	}
	
	
	/**
	 * Show labour registration page.
	 * @param session
	 * @param request
	 * @return
	 * TODO
	 */
	
	@RequestMapping(value = "/showSiteDetails", method = RequestMethod.GET)
	public ModelAndView showSiteDetails(HttpSession session, HttpServletRequest request) {
		
	ModelAndView model=new ModelAndView("labour/labour-details");
		return model;
	}
	
	
	/**
	 * 
	 * @param req
	 * @param res
	 * @param file
	 * @return
	 */
	@RequestMapping(value = "/saveLabourDetails", method = RequestMethod.POST)
	public String saveLabourDetails(HttpServletRequest req, HttpServletResponse res)
	{
		String ret="redirect:/showLabourDetails";
		ModelAndView model =new ModelAndView("labour/labour-details");
		LabourDetails labourDetails=new LabourDetails();
	
		int labourId=Integer.parseInt(req.getParameter("labourId"));
		String labourName=req.getParameter("labourName");
		String gender=req.getParameter("gender");
		String site="2";
		
		int deviceId=Integer.parseInt(req.getParameter("deviceId"));
		String mobileNumber=req.getParameter("mobileNumber");
		String address=req.getParameter("address");
		int salary=Integer.parseInt(req.getParameter("salary"));
		
		 String labourDetailsId=req.getParameter("editLabourDetailsId");
		 System.out.println("dnvj"+labourDetailsId);
		    if(labourDetailsId != null)
		    {
		    	labourDetails.setLabourDetailsId(Integer.parseInt(labourDetailsId));
		    	ret="redirect:/getUpdatedLabourDetailsById/"+labourId;
		    }
		
		labourDetails.setLabourId(labourId);
		labourDetails.setName(labourName);
		labourDetails.setGender(gender);
		labourDetails.setSalary(salary);
		labourDetails.setSite(site);
		labourDetails.setDeviceId(deviceId);
		labourDetails.setAddress(address);
		labourDetails.setMobileNo(mobileNumber);
		System.out.println("lla"+labourDetails.toString());
		labourDetails=rest.postForObject(Constants.url+"/insertLabourDetails", labourDetails, LabourDetails.class);
		model.addObject(labourDetails);
		return ret;
	}
	
	/**
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/getLabourDetailsById", method = RequestMethod.GET)
	public @ResponseBody LabourDetails getLabourDetailsById(HttpServletRequest request,HttpServletResponse response) {
		
		System.out.println("In Ajax");
		int labourId=Integer.parseInt(request.getParameter("labourId"));
		System.out.println(labourId);
		LabourDetails labourDetails=new LabourDetails();
		
		try {
		
			RestTemplate rest=new RestTemplate();
			MultiValueMap<String, Object> map=new LinkedMultiValueMap<String, Object>();
			map.add("labourId",""+labourId);
			labourDetails =  rest.postForObject(Constants.url + "/getLabourDetailsByLabourId", map, LabourDetails.class);
			System.out.println(""+labourDetails.toString());
			
		}
			catch (Exception e) {
				System.out.println(e.getMessage());
			}
			
			return labourDetails;
		
	}
	
	/**
	 * 
	 * @param session
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/showLabourDetailsBySite", method = RequestMethod.GET)
	public @ResponseBody List<LabourDetails> showLabourDetailsBySite(HttpSession session, HttpServletRequest request) {
		
	
	ModelAndView model=new ModelAndView("labour/show-labour-details");
	 List<LabourDetails> siteDetailsList=new ArrayList<LabourDetails>();
	 
	 String siteId=request.getParameter("siteId");
	System.out.println("siteOID="+siteId);
	MultiValueMap<String, Object> map=new LinkedMultiValueMap<String, Object>();
	map.add("siteId",""+siteId);
	
	RestTemplate rest=new RestTemplate();
	try {
		siteDetailsList=rest.postForObject(Constants.url+"getLabourDetailsBySiteId",map,List.class);
	
	System.out.println("siteDetailsList "+siteDetailsList.toString());
	}catch (Exception e) {
		System.out.println(e.getMessage());
	}
		return siteDetailsList;
	}	
	
	
	/**
	 * 
	 * @param session
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/deleteLabourRecordById", method = RequestMethod.GET)
	public @ResponseBody Info deleteLabourRecordById(HttpSession session, HttpServletRequest request) {
		
	
	ModelAndView model=new ModelAndView("labour/show-labour-details");
	Info info=new Info();
	 
	 String labourId=request.getParameter("labourId");

	MultiValueMap<String, Object> map=new LinkedMultiValueMap<String, Object>();
	map.add("labourId",""+labourId);
	
	RestTemplate rest=new RestTemplate();
	try {
	 info=rest.postForObject(Constants.url+"deleteLabour",map,Info.class);
	
	System.out.println("Info Details "+info);
	}catch (Exception e) {
		System.out.println(e.getMessage());
	}
		return info;
	}	
	
	/**
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/editLabourRecordById", method = RequestMethod.GET)
	public @ResponseBody LabourDetails editLabourRecordById(HttpServletRequest request,HttpServletResponse response) {
		
		
		int labourId=Integer.parseInt(request.getParameter("labourId"));
		System.out.println(labourId);
		LabourDetails labourDetails=new LabourDetails();
		
		try {
		
			RestTemplate rest=new RestTemplate();
			MultiValueMap<String, Object> map=new LinkedMultiValueMap<String, Object>();
			map.add("labourId",""+labourId);
			labourDetails =  rest.postForObject(Constants.url + "/getLabourDetailsByLabourId", map, LabourDetails.class);
			System.out.println(""+labourDetails.toString());
			
		}
			catch (Exception e) {
				System.out.println(e.getMessage());
			}
			
			return labourDetails;
		
	}


	/**
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/getUpdatedLabourDetailsById/{labourId}", method = RequestMethod.GET)
	public @ResponseBody ModelAndView getUpdatedLabourDetailsById(@PathVariable("labourId") int labourId,HttpServletRequest request,HttpServletResponse response) {
		
		ModelAndView model=new ModelAndView("labour/show-labour-details");
		LabourDetails labourDetails=new LabourDetails();
		
		try {
		
			RestTemplate rest=new RestTemplate();
			MultiValueMap<String, Object> map=new LinkedMultiValueMap<String, Object>();
			map.add("labourId",""+labourId);
			labourDetails =  rest.postForObject(Constants.url + "/getLabourDetailsByLabourId", map, LabourDetails.class);
			System.out.println(""+labourDetails.toString());
			model.addObject("labourDetails", labourDetails);
			
		}
			catch (Exception e) {
				System.out.println(e.getMessage());
			}
			
			return model;
		
	}

	/**
	 * 
	 */

	@RequestMapping(value = "/getLabourReport", method = RequestMethod.GET)
	public ModelAndView getEmployeeReport(HttpSession session, HttpServletRequest request) {
		
	ModelAndView model=new ModelAndView("labour/labour-reports");
	
	List<GetEmployeeReportDetails> getLabourReportDetailsList=new ArrayList<GetEmployeeReportDetails>();
	List<BranchSiteDetails> branchSiteDetails=new ArrayList<BranchSiteDetails>();
	
	String userId=request.getParameter("labourId");
	String siteId=request.getParameter("siteId");
	String from=request.getParameter("from");
	String to=request.getParameter("to");
	System.out.println("LabourId="+userId+"cds"+siteId+"cdsc"+from+"cdsc"+to);
	
	MultiValueMap<String, Object> map=new LinkedMultiValueMap<String, Object>();
	
	RestTemplate rest=new RestTemplate();
	try {
		if(userId!=null&&userId!="")
		{
			
			map.add("userId",userId);
			map.add("from",from);
			map.add("to",to);
			
			getLabourReportDetailsList=rest.postForObject(Constants.url+"getEmpAttendenceByLabourIdAndDate",map,List .class);
			
			
		}
		else if(siteId!=null&&siteId!="")
		{
			map.add("userId",userId);
			map.add("from",from);
			map.add("to",to);
			getLabourReportDetailsList=rest.postForObject(Constants.url+"getEmpAttendenceByLabourIdAndDate",map,List .class);
		}

		MultiValueMap<String, Object> mapBranch=new LinkedMultiValueMap<String, Object>();
		mapBranch.add("type",2);
		
		branchSiteDetails=rest.postForObject(Constants.url+"getBranchSiteDetailsByType",mapBranch,List .class);
		
		model.addObject("branchSiteDetails", branchSiteDetails);
		model.addObject("getLabourReportDetailsList", getLabourReportDetailsList);
	System.out.println("branchSiteDetails "+branchSiteDetails.toString());
	}catch (Exception e) {
		System.out.println(e.getMessage());
	}
		return model;
	}
	
	@RequestMapping(value = "/getLabourSalary", method = RequestMethod.GET)
	public ModelAndView getEmployeeSalary(HttpSession session, HttpServletRequest request) {
		
	ModelAndView model=new ModelAndView("labour/labour-salary");
	
	GetLabourSalaryDetails getLabourSalaryDetails=new GetLabourSalaryDetails();
	List<GetBranchEmployeeReportDetails> getBranchEmployeeReportDetails=new ArrayList<GetBranchEmployeeReportDetails>();
	 List<BranchSiteDetails> branchSiteDetails=new ArrayList<BranchSiteDetails>();
	
	String labourId=request.getParameter("labourId");
	String siteId=request.getParameter("siteId");
	String from=request.getParameter("from");
	String to=request.getParameter("to");
	
	
	MultiValueMap<String, Object> map=new LinkedMultiValueMap<String, Object>();
	
	RestTemplate rest=new RestTemplate();
	try {
		if(labourId!=null&&labourId!="")
		{
			map.add("labourId",labourId);
			map.add("fromDate",from);
			map.add("toDate",to);
			getLabourSalaryDetails=rest.postForObject(Constants.url+"getLabourSalaryDetails",map,GetLabourSalaryDetails .class);
			System.out.println("vfbhvfjdb"+getLabourSalaryDetails);
			model.addObject("getLabourSalaryDetails",getLabourSalaryDetails);
		}
		else if(siteId!=null&&siteId!="")
		{
			map.add("siteId",siteId);
			map.add("fromDate",from);
			map.add("toDate",to);
			getBranchEmployeeReportDetails=rest.postForObject(Constants.url+"getLabourSalaryDetailsBySite",map,List.class);
			System.out.println("dfvsuvyhbkkk"+getBranchEmployeeReportDetails.toString());
			model.addObject("getBranchEmployeeReportDetails",getBranchEmployeeReportDetails);
		}

		MultiValueMap<String, Object> mapBranch=new LinkedMultiValueMap<String, Object>();
		mapBranch.add("type",2);
		
		branchSiteDetails=rest.postForObject(Constants.url+"getBranchSiteDetailsByType",mapBranch,List .class);
	
		
	
		
		model.addObject("branchSiteDetails", branchSiteDetails);
	
	
	}catch (Exception e) {
		System.out.println(e.getMessage());
	}
		return model;
	}
	
	@RequestMapping(value = "/saveLabourManualAttendance", method = RequestMethod.POST)
	public String saveEmployeeManualAttendance(HttpServletRequest req, HttpServletResponse res)
	{
		
		System.out.println("came");
		
		ModelAndView model=new ModelAndView("labour/labour-manual-attendance");
		
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
		
		return "redirect:/showManualAttendance";
	}
	
}
