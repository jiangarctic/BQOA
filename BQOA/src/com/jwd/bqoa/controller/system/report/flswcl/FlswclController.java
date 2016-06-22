package com.jwd.bqoa.controller.system.report.flswcl;

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
public class FlswclController extends BaseController{
	@Resource(name="generateFlswclWordService")
	private GenerateFlswclWordService generateFlswclWordService;
	@Resource(name="flswclService")
	private FlswclService flswclService;
	
	@RequestMapping(value="/generateFlswclReport")
	public String generateFlswclReport(HttpSession session){
		Map<String , String> result = new HashMap<String  , String>();
		List<String> fileGenInfo = new ArrayList<String>();
		
		PageData pd = this.getPageData();
		try{
			String contextPath = session.getServletContext().getRealPath("");
			Map<String , String> genFileInfo = new HashMap<String , String>();
			User sessionUser = (User) session.getAttribute(Const.SESSION_USER);
			genFileInfo.put("creator", sessionUser.getNAME());
			genFileInfo.put("contextPath" , contextPath);
			genFileInfo.put("reportNum" , pd.getString("reportNum"));
			genFileInfo.put("suffixFileUrl" , pd.getString("suffixFileUrl"));
			fileGenInfo = generateFlswclWordService.genFlswclWord(genFileInfo ,pd);
		}catch(Exception e){
			result.put("msg", "文件生成时产生错误，请联系管理员");
		}
		try{
			pd.put("genFileUrl", fileGenInfo.get(0));
			pd.put("genFileName", fileGenInfo.get(1));
			pd.put("genTime", DateUtil.getTime());
			pd.put("status", "新建");
			flswclService.insertNewFlswReport(pd);
			result.put("msg", "success");
		}catch(Exception e){
			e.printStackTrace();			
		}
		
		return "redirect:flswclReportList.do";
	}
	
	@RequestMapping(value="/flswclReportList")
	public ModelAndView toFlswclList() throws Exception{
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("system/ReportGen/flswclReportList");
		List<PageData> flswlist = flswclService.queryFlswcl();
		mv.addObject("flswclList" , flswlist);
		return mv;
	}
	@RequestMapping(value="/showOneFlswclDetail")
	public ModelAndView showOneFlswclDetail() throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = this.getPageData();
		
		mv.setViewName("system/ReportGen/flswclDetail");
		PageData pd2 = flswclService.queryOneFlswcl(pd);
		mv.addObject("flswcl"  , pd2);
		return mv;
	}
	
	@RequestMapping(value="/newFlswclPage")
	public ModelAndView newFlswclPage(){
		ModelAndView mv = this.getModelAndView();
		PageData pd = this.getPageData();
		System.out.println(pd);
		mv.addObject("pd" , pd);
		mv.setViewName("system/ReportGen/newFlswcl");
		return mv;
	}
}
