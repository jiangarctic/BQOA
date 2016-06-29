package com.jwd.bqoa.controller.system.report.flswcl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jwd.bqoa.controller.base.BaseController;
import com.jwd.bqoa.entity.system.User;
import com.jwd.bqoa.service.flsw.FlswclService;
import com.jwd.bqoa.service.officeHandle.GenerateFlswclWordService;
import com.jwd.bqoa.service.system.client.ClientService;
import com.jwd.bqoa.util.Const;
import com.jwd.bqoa.util.DateUtil;
import com.jwd.bqoa.util.PageData;
import com.jwd.bqoa.util.PageUtil;


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
		User sessionUser = (User) session.getAttribute(Const.SESSION_USER);
		PageData pd = this.getPageData();
		//如果生成报表客户名称是自己填写，则插入新客户
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
		//生成文件
		try{
			String contextPath = Const.UPLOAD_DIR;
			Map<String , String> genFileInfo = new HashMap<String , String>();
			
			genFileInfo.put("creator", sessionUser.getNAME());
			genFileInfo.put("contextPath" , contextPath);
			genFileInfo.put("reportNum" , pd.getString("reportNum"));
			if(pd.getString("suffixFileUrl")==null || pd.getString("suffixFileUrl").equals("")){
				genFileInfo.put("suffixFileUrl" ,"");
			}else{
				genFileInfo.put("suffixFileUrl" , pd.getString("suffixFileUrl"));
			}
			
			fileGenInfo = generateFlswclWordService.genFlswclWord(genFileInfo ,pd);
		}catch(Exception e){
			result.put("msg", "文件生成时产生错误，请联系管理员");
		}
		//插入法律事务信息和状态
		try{
			pd.put("genFileUrl", fileGenInfo.get(0));
			pd.put("genFileName", fileGenInfo.get(1));
			pd.put("genTime", DateUtil.getTime());
			pd.put("nextApprover", pd.getString("approver"));
			pd.put("status", "新建");
			PageData pd2 = new PageData();
			Integer obj = (Integer) flswclService.insertNewFlswReport(pd);
			pd2.put("flswId", obj);
			pd2.put("status", sessionUser.getNAME()+"新建");
			pd2.put("genFileUrl", fileGenInfo.get(0));
			pd2.put("genFileName", fileGenInfo.get(1));
			pd2.put("genTime", DateUtil.getTime());
			pd2.put("handler", sessionUser.getNAME());
			flswclService.insertFlswclStatus(pd2);
			result.put("msg", "success");
		}catch(Exception e){
			e.printStackTrace();			
		}
		
		return "redirect:flswclReportList_me.do";
	}
	
	@RequestMapping(value="/flswclReportList_me")
	public ModelAndView toFlswclList(HttpSession session ,@RequestParam(value="currentPage", required=false, defaultValue="1" ) int currentPage) throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		User u = (User) session.getAttribute(Const.SESSION_USER);
		pd.put("worker",u.getNAME() );
		Long total = (Long) flswclService.queryFlswclMeCount(pd).get("total");
		int totalPages = PageUtil.getTotalPages(total);
		pd.put("startIndex", (currentPage-1)*Const.ROWSPERPAGE);
		pd.put("rows", Const.ROWSPERPAGE);
		String pageStr = PageUtil.getPagenationInfo(total, currentPage);
		mv.setViewName("system/ReportGen/flswclReportList");		
		List<PageData> flswlist = flswclService.queryFlswcl_me(pd);
		mv.addObject("page" , pageStr);
		mv.addObject("currentPage" , currentPage);
		mv.addObject("maxPage" , totalPages);
		mv.addObject("flswclList" , flswlist);
		return mv;
	}
	@RequestMapping(value="/flswclReportList_All")
	public ModelAndView toFlswclList(@RequestParam(value="currentPage", required=false, defaultValue="1" ) int currentPage) throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd1 = this.getPageData();
		String queryCon = pd1.getString("queryCon");
		if(queryCon==null || queryCon.equals("")){
			PageData pd = new PageData();
			mv.setViewName("system/ReportGen/flswclReportList_All");
			Long total = (Long) flswclService.queryFlswclAllCount(null).get("total");
			int totalPages = PageUtil.getTotalPages(total);
			pd.put("query_clientName", "");
			pd.put("query_worker", "");
			pd.put("startIndex", (currentPage-1)*Const.ROWSPERPAGE);
			pd.put("rows", Const.ROWSPERPAGE);
			
			String pageStr = PageUtil.getPagenationInfo(total, currentPage);
			List<PageData> flswlist = flswclService.queryFlswcl(pd);
			mv.addObject("flswclList" , flswlist);
			mv.addObject("page" , pageStr);
			mv.addObject("currentPage" , currentPage);
			mv.addObject("maxPage" , totalPages);			
		}else{
			PageData pd = new PageData();
			mv.setViewName("system/ReportGen/flswclReportList_All");
			pd.put("query_clientName", pd1.getString("query_clientName"));
			pd.put("query_worker", pd1.getString("query_worker"));
			List<PageData> flswlist = flswclService.queryFlswcl(pd);
			mv.addObject("flswclList" , flswlist);
		}
		mv.addObject(Const.SESSION_QX , this.getCRUDAuth());
		System.out.println("QX="+this.getCRUDAuth());
		return mv;
	}
	@RequestMapping(value="/flswclReportList_WaitMe")
	public ModelAndView toFlswclList_WaitMe(HttpSession session , @RequestParam(value="currentPage", required=false, defaultValue="1" ) int currentPage) throws Exception{
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("system/ReportGen/flswclReportList_WaitMe");
		PageData pd = new PageData();
		User u = (User) session.getAttribute(Const.SESSION_USER);
		pd.put("approver",u.getNAME() );
		Long total = (Long) flswclService.queryFlswclWaitMeCount(pd).get("total");
		int totalPages =PageUtil.getTotalPages(total);
		pd.put("startIndex", (currentPage-1)*Const.ROWSPERPAGE);
		pd.put("rows", Const.ROWSPERPAGE);
		String pageStr = PageUtil.getPagenationInfo(total, currentPage);		
		List<PageData> flswlist = flswclService.queryFlswcl_WaitMe(pd);
		mv.addObject("flswclList" , flswlist);
		mv.addObject("page" , pageStr);
		mv.addObject("currentPage" , currentPage);
		mv.addObject("maxPage" , totalPages);
		return mv;
	}
	
	@RequestMapping(value="/flswclReportList_HasApproved")
	public ModelAndView toFlswclList_HasApproved(HttpSession session , @RequestParam(value="currentPage", required=false, defaultValue="1" ) int currentPage) throws Exception{
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("system/ReportGen/flswclReportList_HasApproved");
		PageData pd = new PageData();
		User u = (User) session.getAttribute(Const.SESSION_USER);
		pd.put("approver",u.getNAME() );
		Long total = (Long) flswclService.queryFlswclHasApprovedCount(pd).get("total");
		int totalPages =PageUtil.getTotalPages(total);
		pd.put("startIndex", (currentPage-1)*Const.ROWSPERPAGE);
		pd.put("rows", Const.ROWSPERPAGE);
		String pageStr = PageUtil.getPagenationInfo(total, currentPage);		
		List<PageData> flswlist = flswclService.queryFlswcl_HasApproved(pd);
		mv.addObject("flswclList" , flswlist);
		mv.addObject("page" , pageStr);
		mv.addObject("currentPage" , currentPage);
		mv.addObject("maxPage" , totalPages);
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
	
	@RequestMapping("/deleteFlswcl")
	@ResponseBody
	public Map<String , String> deleteFlswcl(){
		Map<String , String> result = new HashMap<String , String>();
		PageData pd = this.getPageData();
		try{
			flswclService.deleteFlswcl(pd);
			result.put("msg", "删除成功！");
		}catch(Exception e){
			result.put("msg", "删除中发生未知错误，请联系管理员~");
		}
		return result;
	}
	
	@RequestMapping("/getFlswclStatusById")
	@ResponseBody
	public List<PageData> getFlswclStatusById() throws Exception{
		List<PageData> list = new ArrayList<PageData>();
		PageData pd = this.getPageData();
		list = flswclService.queryFlswclStatusById(pd);
		return list;
	}
	
	@RequestMapping("/upluadFinalflswFile")
	@ResponseBody
	public Map<String , String> upluadFinalFile(HttpSession session){
		Map<String , String> result = new HashMap<String , String>();
		User u = (User) session.getAttribute(Const.SESSION_USER);
		PageData pd = this.getPageData();
		String flag = pd.getString("flag");
		try{
			String finalUrl = pd.getString("suffixFileUrl");
			String finalFileName = finalUrl.substring(finalUrl.lastIndexOf("/")+1);
			if(flag.equals("0")){
				File finalDir = new File(Const.UPLOAD_DIR+"/flsw/final/");
				if(!finalDir.exists()){
					finalDir.mkdirs();
				}
				FileInputStream fis = new FileInputStream(finalUrl);
				FileOutputStream fos = new FileOutputStream(Const.UPLOAD_DIR+"/flsw/final/"+finalFileName);
				byte[] buffer = new byte[1024];
				int i=0;
				while((i =fis.read(buffer))!=-1){
					fos.write(buffer, 0, i);
				}
				fis.close();
				fos.close();
				pd.put("status", u.getNAME()+"已审,最终");
				pd.put("genFileUrl", Const.UPLOAD_DIR+"/flsw/final/"+finalFileName);
				pd.put("nextApprover", "god");
			}else{
				File finalDir = new File(Const.UPLOAD_DIR+"/flsw/"+u.getNAME()+"/");
				if(!finalDir.exists()){
					finalDir.mkdirs();
				}
				FileInputStream fis = new FileInputStream(finalUrl);
				FileOutputStream fos = new FileOutputStream(Const.UPLOAD_DIR+"/flsw/"+u.getNAME()+"/"+finalFileName);
				byte[] buffer = new byte[1024];
				int i=0;
				while((i =fis.read(buffer))!=-1){
					fos.write(buffer, 0, i);
				}
				fis.close();
				fos.close();
				pd.put("status", u.getNAME()+"已审,发回作者");
				pd.put("genFileUrl", Const.UPLOAD_DIR+"/flsw/"+u.getNAME()+"/"+finalFileName);
				pd.put("nextApprover", "worker");
			}			
			pd.put("genFileName",finalFileName);
			pd.put("handler", u.getNAME());
			pd.put("approver", u.getNAME());
			pd.put("genTime", DateUtil.getTime());
			flswclService.updateFlswcl(pd);
			result.put("msg", "提交成功");
		}catch(Exception e){
			e.printStackTrace();
			result.put("msg", "提交出现异常 , 请联系管理员");
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	private Map<String , String> getCRUDAuth(){
		Subject currentUser = SecurityUtils.getSubject();
		Session session = currentUser.getSession();
		return (Map<String , String>)session.getAttribute(Const.SESSION_QX);
	}
	
	
}
