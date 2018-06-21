package com.bionische.arkkdevelopers.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ManulAttendance {
	
	
	@RequestMapping(value = "/showManualAttendance", method = RequestMethod.GET)
	public ModelAndView showManualAttendance(HttpSession session, HttpServletRequest request) {
		
	ModelAndView model=new ModelAndView("manual-attendance");
		return model;
	}
	
}
