package com.jwd.bqoa.controller.system.CRM;

import java.util.Map;

import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jwd.bqoa.controller.base.BaseController;
import com.jwd.bqoa.util.Const;
import com.jwd.bqoa.util.PageData;

@Controller
public class ClientController extends BaseController{
	Logger logger = Logger.getLogger(this.getClass());
	
	@RequestMapping(value="/CRM_ClientList")
	public ModelAndView listClients(@RequestParam(value="pageIndex", defaultValue="1" , required=false) int pageIndex){
		ModelAndView mv = this.getModelAndView();
		logger.info("pageIndex="+pageIndex);
		
		mv.setViewName("system/CRM/clientMain");
		mv.addObject(Const.SESSION_QX , this.getCRUDAuth());
		return mv;
	}
	
	@RequestMapping(value="/saveClient")
	@ResponseBody
	public Map<String , String> saveClient(){
		PageData pd = this.getPageData();
		
		return null;
	}
	
	@SuppressWarnings("unchecked")
	private Map<String , String> getCRUDAuth(){
		Subject currentUser = SecurityUtils.getSubject();
		Session session = currentUser.getSession();
		return (Map<String , String>)session.getAttribute(Const.SESSION_QX);
	}
}
