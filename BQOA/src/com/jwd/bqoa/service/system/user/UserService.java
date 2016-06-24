package com.jwd.bqoa.service.system.user;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jwd.bqoa.dao.DaoSupport;
import com.jwd.bqoa.entity.system.PageInfo;
import com.jwd.bqoa.entity.system.User;
import com.jwd.bqoa.util.PageData;

@Service("userService")
public class UserService {
	@Resource(name="daoSupport")
	private DaoSupport dao;
	
	public PageData getUserByNameAndPwd(PageData pd) throws Exception{
		return (PageData) dao.findForObject("UserXMapper.getUserInfo", pd);
	}
	
	public User getUserAndRoleById(String USER_ID) throws Exception{
		return (User) dao.findForObject("UserMapper.getUserAndRoleById", USER_ID);
	}
	
	/*
	 * 通过username获取user
	 */
	public PageData findByUSERNAME(PageData pd) throws Exception{
		return (PageData) dao.findForObject("UserXMapper.findByUsername", pd);
	}
	
	public List<PageData> findUserAndRoleList(PageData pd) throws Exception{
		return (List<PageData>) dao.findForList("UserMapper.findUserAndRoleList", pd);
	}
	
	public PageData getUserTotal() throws Exception{
		return (PageData) dao.findForObject("UserMapper.getUserCount");
	}
	
	public List<PageData> getRoleDataList() throws Exception{
		return (List<PageData>) dao.findForList("UserMapper.queryRoleDataList", null);
	}
}
