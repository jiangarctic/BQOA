package com.jwd.bqoa.controller.system.report.flswcl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jwd.bqoa.controller.base.BaseController;
import com.jwd.bqoa.entity.system.Client;
import com.jwd.bqoa.entity.system.User;
import com.jwd.bqoa.service.flsw.FlswclService;
import com.jwd.bqoa.service.officeHandle.GenerateFlswclWordService;
import com.jwd.bqoa.service.system.client.ClientService;
import com.jwd.bqoa.util.Const;
import com.jwd.bqoa.util.DateUtil;
import com.jwd.bqoa.util.PageData;

@Controller
public class FlswclController extends BaseController{
	@Resource(name="generateFlswclWordService")
	private GenerateFlswclWordService generateFlswclWordService;
	@Resource(name="flswclService")
	private FlswclService flswclService;
	@Resource(name="clientService")
	private ClientService clientService;
	
	@RequestMapping(value="/generateFlswclReport")
	public String generateFlswclReport(HttpSession session) throws Exception{
		Map<String , String> result = new HashMap<String  , String>();
		List<String> fileGenInfo = new ArrayList<String>();
		
		PageData pd = this.getPageData();
		if(pd.getString("clientNameFlag").equals("other")){
			PageData pd2 = new PageData();
			String reportNum = pd.getString("reportNum");
			String[] contactor = pd.getString("inquireer").split("_");
			pd2.put("clientName", pd.getString("clientName"));
			pd2.put("shortName", reportNum.substring(0, reportNum.indexOf("1")));
			pd2.put("clientEmail", pd.getString("inquireerEmail"));
			pd2.put("clientPhone",pd.getString("inquireerPhone"));
			pd2.put("clientContactor", contactor[0]);
			pd2.put("contactorDesc", contactor[1]);
			clientService.addClient(pd2);
		}
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
	public ModelAndView newFlswclPage() throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = this.getPageData();
		String shortName = "";
		String inquireType=pd.getString("inquireType");
		if(!pd.getString("clientName").equals("other")){
			shortName=pd.getString("reportNum");			
		pd = clientService.queryClientByName(pd);		
		}else{
			pd = new PageData();
			shortName="other";
			pd.put("clientName", "other");
		}
		pd.put("inquireType", inquireType);
		pd.put("shortName", shortName);
		System.out.println(pd);
		mv.addObject("pd" ,pd);
		mv.setViewName("system/ReportGen/newFlswcl");
		return mv;
	}
}
