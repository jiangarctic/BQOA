package com.jwd.bqoa.controller.system.report;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jwd.bqoa.controller.base.BaseController;
import com.jwd.bqoa.entity.system.User;
import com.jwd.bqoa.service.flsw.FlswclService;
import com.jwd.bqoa.service.officeHandle.GenerateFlswclWordService;
import com.jwd.bqoa.util.Const;
import com.jwd.bqoa.util.DateUtil;
import com.jwd.bqoa.util.PageData;

@Controller
public class reportSelectionListController extends BaseController{

	
	@RequestMapping(value="/reportSelectionList")
	public ModelAndView toreportSelectionList(){
		return new ModelAndView("system/ReportGen/ReportSelectionList");
	}
	

	
}
