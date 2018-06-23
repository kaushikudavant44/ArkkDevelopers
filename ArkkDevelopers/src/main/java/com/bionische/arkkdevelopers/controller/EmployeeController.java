package com.bionische.arkkdevelopers.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmployeeController {
	
	@RequestMapping(value = "/showEmployeeRegistration", method = RequestMethod.GET)
	public ModelAndView showManualAttendance(HttpSession session, HttpServletRequest request) {
		
	ModelAndView model=new ModelAndView("manual-attendance");
		return model;
	}
	
	@RequestMapping(value = "/saveEmployeeDetails", method = RequestMethod.POST)
	public String saveLabourDetails(HttpServletRequest req, HttpServletResponse res)
	{
		String ret="redirect:/";
		ModelAndView model =new ModelAndView("labour-details");
		
		int labourId=Integer.parseInt(req.getParameter("labourId"));
		String labourName=req.getParameter("labourName");
		String gender=req.getParameter("gender");
		String site=req.getParameter("site");
		int id=Integer.parseInt(req.getParameter("id"));
	
		return ret;
	}
	

}
