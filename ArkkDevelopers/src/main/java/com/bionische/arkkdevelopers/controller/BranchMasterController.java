package com.bionische.arkkdevelopers.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.bionische.arkkdevelopers.common.Constants;
import com.bionische.arkkdevelopers.model.BranchSiteDetails;

@Controller
public class BranchMasterController {

	
	
	RestTemplate rest=new RestTemplate();
	@RequestMapping(value = "/showBranchMaster", method = RequestMethod.GET)
	public ModelAndView showBranchMaster(HttpSession session, HttpServletRequest request) {
		
		ModelAndView model=new ModelAndView("masters/branch_master");
		List<BranchSiteDetails> branchSiteDetailsList=new ArrayList<BranchSiteDetails>();
		try {
			branchSiteDetailsList =rest.getForObject(Constants.url+"getEmployeeDetailsByBranch/", List.class);
			System.out.println("branchSiteDetailsList  "+branchSiteDetailsList.toString());
			
			model.addObject("branchSiteDetailsList", branchSiteDetailsList);
		}
		
		catch (Exception e) {
			System.out.println(e.getMessage());// TODO: handle exception
		}
		
		
	
		return model;
	} 
	
	
	@RequestMapping(value = "/insertBranchSite", method = RequestMethod.POST)
	public String insertBranchSite(HttpSession session, HttpServletRequest request) {
		
		 
		BranchSiteDetails branchSiteDetails=new BranchSiteDetails();
		branchSiteDetails.setAddress(request.getParameter("address"));
		branchSiteDetails.setContact(request.getParameter("mobile_no"));
		branchSiteDetails.setDate(request.getParameter("date"));
		branchSiteDetails.setInt_1(0);
		branchSiteDetails.setInt_2(0);
		branchSiteDetails.setName(request.getParameter("name"));
		branchSiteDetails.setDeviceId(Integer.parseInt(request.getParameter("deviceId")));
		branchSiteDetails.setString_1("");
		branchSiteDetails.setString_2("");
		branchSiteDetails.setType(Integer.parseInt(request.getParameter("type")));
		
		try {
			BranchSiteDetails branchSiteDetailsRes =rest.postForObject(Constants.url+"insertBranchSiteDetails/", branchSiteDetails,BranchSiteDetails.class);
			System.out.println("branchSiteDetailsRes  "+branchSiteDetailsRes.toString());
			
			 
		}
		
		catch (Exception e) {
			System.out.println(e.getMessage());// TODO: handle exception
		}
		
		
	
		return "redirect:/showBranchMaster";
	} 
	
}
