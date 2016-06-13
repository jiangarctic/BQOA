package com.jwd.bqoa.controller.base;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.jwd.bqoa.entity.Page;
import com.jwd.bqoa.util.PageData;
import com.jwd.bqoa.util.UuidUtil;

public class BaseController {
	protected Logger logger = Logger.getLogger(this.getClass());
	
	public HttpServletRequest getRequest(){
		HttpServletRequest req = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		return req;
	}
	
	public PageData getPageData(){
		return new PageData(this.getRequest());
	}
	public ModelAndView getModelAndView(){
		return new ModelAndView();
	}
	
	public String get32UUID(){
		return UuidUtil.get32UUID();
	}
	
	public Page getPage(){
		return new Page();
	}
	
	
	public static void  logBefore(Logger logger, String interfaceName) {
		logger.info("");
		logger.info("start");
		logger.info(interfaceName);
	}

	public static void logAfter(Logger logger) {
		logger.info("end");
		logger.info("");
	}

	//hehe
}
