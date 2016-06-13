package com.jwd.bqoa.controller.system.login;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jwd.bqoa.controller.base.BaseController;
import com.jwd.bqoa.entity.system.Menu;
import com.jwd.bqoa.entity.system.Role;
import com.jwd.bqoa.entity.system.User;
import com.jwd.bqoa.service.system.menu.MenuService;
import com.jwd.bqoa.service.system.role.RoleService;
import com.jwd.bqoa.service.system.user.UserService;
import com.jwd.bqoa.util.AppUtil;
import com.jwd.bqoa.util.Const;
import com.jwd.bqoa.util.DateUtil;
import com.jwd.bqoa.util.MenuUtil;
import com.jwd.bqoa.util.PageData;
import com.jwd.bqoa.util.RightsUtil;
import com.jwd.bqoa.util.Tools;

@Controller
public class LoginController extends BaseController{
	@Resource(name="userService")
	private UserService userService;
	@Resource(name="menuService")
	private MenuService menuService;
	@Resource(name="roleService")
	private RoleService roleService;
	Logger logger = Logger.getLogger(this.getClass());
	
	@RequestMapping("/login_toLogin")
	public ModelAndView toLogin() throws Exception{
		PageData pd = this.getPageData();
		pd.put("SYSNAME", "八谦后台管理系统");
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("system/admin/login");
		mv.addObject("pd" , pd);
		return mv;
	}
	
	@RequestMapping("/login_login")
	@ResponseBody
	public Object login() throws Exception{
		Map<String , String> map = new HashMap<String , String>();
		PageData pd = new PageData();
		pd = this.getPageData();
		String username=(String) pd.get("uName");
		String password=(String) pd.get("pass");
		String secCode=(String) pd.get("code");
		String errInfo = "";
		if(Tools.notEmpty(secCode)){
			Subject currentUser = SecurityUtils.getSubject();
			Session session = currentUser.getSession();
			String sesssion_secCode  = (String) session.getAttribute(Const.SESSION_SECURITY_CODE);
			if(sesssion_secCode.equalsIgnoreCase(secCode)){
				if(Tools.notEmpty(username) && Tools.notEmpty(password)){
					String passwd = new SimpleHash("SHA-1" , username , password).toString();
					pd.put("USERNAME", username);
					pd.put("PASSWORD", passwd);
					pd = userService.getUserByNameAndPwd(pd);
					if(pd!= null){
						pd.put("LAST_LOGIN", DateUtil.getTime().toString());
						//userService.updateLastLogin(pd);
						User user = new User();
						user.setUSER_ID(pd.getString("USER_ID"));
						user.setUSERNAME(pd.getString("USERNAME"));
						user.setIP(pd.getString("IP"));
						user.setPASSWORD(pd.getString("PASSWORD"));
						user.setNAME(pd.getString("NAME"));
						user.setRIGHTS(pd.getString("RIGHTS"));
						user.setROLE_ID(pd.getString("ROLE_ID"));
						user.setLAST_LOGIN(pd.getString("LAST_LOGIN"));
						user.setSTATUS(pd.getString("STATUS"));
						session.setAttribute(Const.SESSION_USER, user);
						session.removeAttribute(Const.SESSION_SECURITY_CODE);
						//加入Shiro身份验证
						Subject subject  =SecurityUtils.getSubject();
						UsernamePasswordToken token  = new UsernamePasswordToken(username , password);
						try{
							subject.login(token);
						}catch(AuthenticationException e){
							errInfo = "身份验证失败";
						}
					}else{
						errInfo ="usererr";
					}
				}else{
					errInfo ="nulluser";
				}
				
			}else{
				errInfo="codeerr";
			}
			System.out.println(errInfo);
			if(Tools.isEmpty(errInfo)){
				errInfo ="success";
			}
		}else{
			errInfo = "emptyCode";
		}
		map.put("result", errInfo);
		return AppUtil.returnObject(new PageData(), map);
	}
	
	@RequestMapping(value="/to_home")
	public ModelAndView login_index(){
		ModelAndView mv = this.getModelAndView();
		PageData pd = this.getPageData();
		try{
			Subject currentUser = SecurityUtils.getSubject();
			Session session = currentUser.getSession();
			User user = (User) session.getAttribute(Const.SESSION_USER);
			if(user != null){
				User userr = (User) session.getAttribute(Const.SESSION_USERROL);
				if(null == userr){
					user = userService.getUserAndRoleById(user.getUSER_ID());
					System.out.println("null==user getUserROle ="+user);
					session.setAttribute(Const.SESSION_USERROL, user);
				}else{
					user = userr;
				}
				Role role = user.getRole();
				String roleRights = role!=null?role.getRIGHTS():"";
				session.setAttribute(Const.SESSION_ROLE_RIGHTS,roleRights);
				session.setAttribute(Const.SESSION_USERNAME, user.getUSERNAME());
				
				List<Menu> allmenuList = new ArrayList<Menu>();
				if(null == session.getAttribute(Const.SESSION_allmenuList)){
					System.out.println("allmenulist null");
					allmenuList = menuService.listAllMenu();
					if(Tools.notEmpty(roleRights)){
						for(Menu menu : allmenuList){
							menu.setHasMenu(RightsUtil.testRights(roleRights, menu.getMENU_ID()));
							if(menu.isHasMenu()){
	 							List<Menu> subMenu = menu.getSubMenu();
	 							for(Menu sub : subMenu){
	 								sub.setHasMenu(RightsUtil.testRights(roleRights, sub.getMENU_ID()));
	 							}
							}
						}
					}
					
					session.setAttribute(Const.SESSION_allmenuList, allmenuList);
					session.setAttribute("subMenus", MenuUtil.MenuList2subMenu(allmenuList));
				}else{
					allmenuList = (List<Menu>) session.getAttribute(Const.SESSION_allmenuList);
					session.setAttribute("subMenus", MenuUtil.MenuList2subMenu(allmenuList));
				}
				if(null == session.getAttribute(Const.SESSION_QX)){					
					session.setAttribute(Const.SESSION_QX, this.getUserAuth(session));
				}
				session.setAttribute("user", user);
				mv.setViewName("system/admin/home");
				
			}else{
				mv.setViewName("system/admin/login");
			}
		}catch(Exception e){
			e.printStackTrace();
			mv.setViewName("system/admin/login");
		}
		pd.put("SYSNAME", "八谦律师事务所");
		
		mv.addObject(pd);
		return mv;
	}
	
	private Map<String , String> getUserAuth(Session session){
		PageData pd = new PageData();
		Map<String , String> map  = new HashMap<String , String>();
		try{
			String USERNAME = session.getAttribute(Const.SESSION_USERNAME).toString();
			pd.put(Const.SESSION_USERNAME, USERNAME);
			String ROLE_ID = userService.findByUSERNAME(pd).get("ROLE_ID").toString();
			pd.put("ROLE_ID", ROLE_ID);
			PageData pd2 = new PageData();
			pd2.put(Const.SESSION_USERNAME, USERNAME);
			pd2.put("ROLE_ID", ROLE_ID);
			pd = roleService.findRoleById(pd);
			pd2 = roleService.findManageAuthByRoleId(pd2);
			if(null != pd2){
				map.put("FX_QX", pd2.get("FX_QX").toString());
				map.put("FW_QX", pd2.get("FW_QX").toString());
				map.put("QX1", pd2.get("QX1").toString());
				map.put("QX2", pd2.get("QX2").toString());
				map.put("QX3", pd2.get("QX3").toString());
				map.put("QX4", pd2.get("QX4").toString());
				pd2.put("ROLE_ID", ROLE_ID);
				pd2 = roleService.findUserAuthByRoleId(pd2);
				map.put("C1", pd2.get("C1").toString());
				map.put("C2", pd2.get("C2").toString());
				map.put("C3", pd2.get("C3").toString());
				map.put("C4", pd2.get("C4").toString());
				map.put("Q1", pd2.get("Q1").toString());
				map.put("Q2", pd2.get("Q2").toString());
				map.put("Q3", pd2.get("Q3").toString());
				map.put("Q4", pd2.get("Q4").toString());
			}
			map.put("C_AUTHs", pd.get("C_AUTH").toString());
			map.put("R_AUTHs",  pd.get("R_AUTH").toString());
			map.put("U_AUTHs",  pd.get("U_AUTH").toString());
			map.put("D_AUTHs",  pd.get("D_AUTH").toString());
		}catch(Exception e){
			
		}
		return map;
	}
	
	@RequestMapping(value="/logout")
	public ModelAndView logout(){
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		Subject currentUser = SecurityUtils.getSubject();
		Session session = currentUser.getSession();
		
		session.removeAttribute(Const.SESSION_allmenuList);
		session.removeAttribute(Const.SESSION_menuList);
		session.removeAttribute(Const.SESSION_ROLE_RIGHTS);
		session.removeAttribute(Const.SESSION_USERROL);
		session.removeAttribute(Const.SESSION_USERNAME);
		session.removeAttribute("subMenus");
		session.removeAttribute(Const.SESSION_QX);
		Subject subject = SecurityUtils.getSubject();
		subject.logout();
		mv.setViewName("system/admin/login");
		return mv;
	}
}
