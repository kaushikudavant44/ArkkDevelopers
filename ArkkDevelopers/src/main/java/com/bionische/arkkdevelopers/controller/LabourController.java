package com.bionische.arkkdevelopers.controller;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.bionische.arkkdevelopers.common.Constants;
import com.bionische.arkkdevelopers.model.BranchSiteDetails;
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
		
	ModelAndView model=new ModelAndView("manual-attendance");
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
		String ret="redirect:/";
		ModelAndView model =new ModelAndView("labour/labour-details");
		LabourDetails labourDetails=new LabourDetails();
	
		int labourId=Integer.parseInt(req.getParameter("labourId"));
		String labourName=req.getParameter("labourName");
		String gender=req.getParameter("gender");
		String site=req.getParameter("site");
		int deviceId=Integer.parseInt(req.getParameter("deviceId"));
		String mobileNumber=req.getParameter("mobileNumber");
		String address=req.getParameter("address");
		int salary=Integer.parseInt(req.getParameter("salary"));
		
		labourDetails.setLabourId(labourId);
		labourDetails.setName(labourName);
		labourDetails.setGender(gender);
		labourDetails.setSalary(salary);
		labourDetails.setSite(site);
		labourDetails.setDeviceId(deviceId);
		labourDetails.setAddress(address);
		labourDetails.setMobileNo(mobileNumber);
		System.out.println("  lla"+labourDetails.toString());
		labourDetails=rest.postForObject(Constants.url+"/insertLabourDetails", labourDetails, LabourDetails.class);
		model.addObject(labourDetails);
		return ret+"showLabourDetails";
	}
	
	
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
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/getLabourDetailsByBranch", method = RequestMethod.GET)
	public @ResponseBody LabourDetails getLabourDetailsByBranch(HttpServletRequest request,HttpServletResponse response) {
		
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
	
}
