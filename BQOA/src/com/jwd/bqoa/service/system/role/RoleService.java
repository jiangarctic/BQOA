package com.jwd.bqoa.service.system.role;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jwd.bqoa.dao.DaoSupport;
import com.jwd.bqoa.util.PageData;

@Service("roleService")
public class RoleService {
	@Resource(name="daoSupport")
	private DaoSupport dao;
	
	public PageData findRoleById(PageData pd) throws Exception{
		return (PageData) dao.findForObject("RoleMapper.findRoleById", pd);
	}
	
	/*
	 * 获取当前登录用户的管理权限
	 * 
	 */
	public PageData findManageAuthByRoleId(PageData pd) throws Exception{
		return (PageData) dao.findForObject("RoleMapper.findManageAuthByRoleId", pd);
	}
	/*
	 * 获取当前登录用户的用户权限
	 */
	public PageData findUserAuthByRoleId(PageData pd) throws Exception{
		return (PageData) dao.findForObject("RoleMapper.findUserAuthByRoleId", pd);
	}
	
	
}
