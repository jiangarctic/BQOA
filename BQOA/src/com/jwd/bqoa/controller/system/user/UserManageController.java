package com.jwd.bqoa.controller.system.user;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jwd.bqoa.controller.base.BaseController;
import com.jwd.bqoa.entity.system.PageInfo;
import com.jwd.bqoa.service.system.user.UserService;
import com.jwd.bqoa.util.Const;
import com.jwd.bqoa.util.PageData;
import com.jwd.bqoa.util.PageUtil;

@Controller
public class UserManageController extends BaseController{
	@Resource(name="userService")
	private UserService userService;

	@RequestMapping("/userManage")
	public ModelAndView toUserList(@RequestParam(value="currentPage", required=false, defaultValue="1" ) int currentPage) throws Exception{
		Long total = (Long) userService.getUserTotal().get("total");
		int totalPages = (int) (Math.floor(total/Const.ROWSPERPAGE)+1);
		PageData pd = new PageData();
		pd.put("startIndex", (currentPage-1)*Const.ROWSPERPAGE);
		pd.put("rows", Const.ROWSPERPAGE);
		String pageStr = PageUtil.getPagenationInfo(total, currentPage);
		List<PageData> usersList = userService.findUserAndRoleList(pd);
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("system/admin/userList");
		mv.addObject("users" , usersList);
		mv.addObject("page" , pageStr);
		mv.addObject("currentPage" , currentPage);
		mv.addObject("maxPage" , totalPages);
		return mv;
	}
	
	@RequestMapping("/roleDataList")
	@ResponseBody
	public List<PageData> getRoleDataList() throws Exception{		
		return userService.getRoleDataList();		
	}
	
	@RequestMapping("/addUser")
	public ModelAndView addUser() throws Exception{
		PageData pd = this.getPageData();
		System.out.println(pd);
		return null;
	}
}
