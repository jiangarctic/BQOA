package com.jwd.bqoa.service.flsw;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jwd.bqoa.dao.DaoSupport;
import com.jwd.bqoa.util.PageData;

@Service("flswclService")
public class FlswclService {
	@Resource(name="daoSupport")
	private DaoSupport dao;

	
	public void insertNewFlswReport(PageData pd) throws Exception{
		dao.save("FlswclMapper.insertNewFlswcl", pd);
	}
	
	@SuppressWarnings("unchecked")
	public List<PageData> queryFlswcl(PageData pd) throws Exception{
		return (List<PageData>) dao.findForList("FlswclMapper.queryAllflswcl", pd);
	}
	@SuppressWarnings("unchecked")
	public List<PageData> queryFlswcl_me(PageData pd) throws Exception{
		return (List<PageData>) dao.findForList("FlswclMapper.queryflswcl_me", pd);
	}
	@SuppressWarnings("unchecked")
	public List<PageData> queryFlswcl_WaitMe(PageData pd) throws Exception{
		return (List<PageData>) dao.findForList("FlswclMapper.queryflswcl_WaitMe", pd);
	}
	@SuppressWarnings("unchecked")
	public List<PageData> queryFlswcl_HasApproved(PageData pd) throws Exception{
		return (List<PageData>) dao.findForList("FlswclMapper.queryflswcl_HasApproved", pd);
	}
	
	public PageData queryOneFlswcl(PageData pd) throws Exception{
		return (PageData) dao.findForObject("FlswclMapper.queryOneFlswcl", pd);
	}
	
	public PageData queryFlswclAllCount(PageData pd) throws Exception{
		return (PageData) dao.findForObject("FlswclMapper.queryFlswclAllCount", pd);
	}
	public PageData queryFlswclMeCount(PageData pd) throws Exception{
		return (PageData) dao.findForObject("FlswclMapper.queryFlswclMeCount", pd);
	}
	public PageData queryFlswclWaitMeCount(PageData pd) throws Exception{
		return (PageData) dao.findForObject("FlswclMapper.queryFlswclWaitMeCount", pd);
	}
	public PageData queryFlswclHasApprovedCount(PageData pd) throws Exception{
		return (PageData) dao.findForObject("FlswclMapper.queryFlswclHasApprovedCount", pd);
	}
}
