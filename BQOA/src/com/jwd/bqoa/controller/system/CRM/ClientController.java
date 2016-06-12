package com.jwd.bqoa.controller.system.CRM;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jwd.bqoa.controller.base.BaseController;

@Controller
public class ClientController extends BaseController{
	@RequestMapping(value="/CRM_ClientList")
	public ModelAndView listClients(){
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("system/CRM/clientMain");
		return mv;
	}
}
