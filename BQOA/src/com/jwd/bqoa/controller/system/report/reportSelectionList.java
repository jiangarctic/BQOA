package com.jwd.bqoa.controller.system.report;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jwd.bqoa.controller.base.BaseController;

@Controller
public class reportSelectionList extends BaseController{
	@RequestMapping(value="/reportSelectionList")
	public ModelAndView toreportSelectionList(){
		return new ModelAndView("system/ReportGen/ReportSelectionList");
	}
	
}
