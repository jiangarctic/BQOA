package com.jwd.bqoa.controller.system.CRM;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

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
import com.jwd.bqoa.entity.system.Client;
import com.jwd.bqoa.entity.system.PageInfo;
import com.jwd.bqoa.service.system.client.ClientService;
import com.jwd.bqoa.util.Const;
import com.jwd.bqoa.util.PageData;
import com.jwd.bqoa.util.PageUtil;

@Controller
public class ClientController extends BaseController{
	Logger logger = Logger.getLogger(this.getClass());
	
	@Resource(name="clientService")
	private ClientService clientService;
	
	@RequestMapping(value="/CRM_ClientList")
	public ModelAndView listClients(@RequestParam(value="pageIndex", defaultValue="1" , required=false) int pageIndex) throws Exception{
		ModelAndView mv = this.getModelAndView();
		List<Client> clients = clientService.queryClients(new PageInfo(pageIndex , Const.ROWSPERPAGE));
		PageInfo pageInfo = PageUtil.geneTotalPages(clientService.getCountOfClient(), pageIndex);
		mv.addObject("clients" , clients);
		mv.addObject("pageInfo" , pageInfo);
		mv.setViewName("system/CRM/clientMain");
		mv.addObject(Const.SESSION_QX , this.getCRUDAuth());
		return mv;
	}
	
	@RequestMapping(value="/clientListData")
	@ResponseBody
	public List<PageInfo> getClientListData() throws Exception{
		List<PageInfo> list = clientService.queryClients();
		System.out.println(list);
		return list;
	} 
	
	@RequestMapping(value="/saveClient")
	@ResponseBody
	public Map<String , String> saveClient(){
		PageData pd = this.getPageData();
		Map result = new HashMap<String , String>();
		try{
			clientService.addClient(pd);
			result.put("msg", "客户信息保存成功！");
		}catch(Exception e){
			result.put("msg", "出现未知错误，请稍后再试");
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
