package com.jwd.bqoa.controller.CaseManage.susong;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jwd.bqoa.controller.base.BaseController;

@Controller
public class SusongController extends BaseController{
	@RequestMapping("/susongCaseList")
	public ModelAndView to_susongCaselist(){
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("system/Case/susongCaseList");
		return mv;
	}
	
	@RequestMapping("/showSusongFlow")
	public ModelAndView showSusongTimeLine(){
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("system/Case/susongCaseTimeLine");
		return mv;
	}
}
