package com.jwd.bqoa.service.flsw;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jwd.bqoa.dao.DaoSupport;
import com.jwd.bqoa.util.PageData;

@Service("flswclService")
public class FlswclService {
	@Resource(name="daoSupport")
	private DaoSupport dao;

	
	public Object insertNewFlswReport(PageData pd) throws Exception{
		
		 dao.save("FlswclMapper.insertNewFlswcl", pd);
		 return  dao.findForObject("FlswclMapper.lastInsertId");
	}
	public void insertFlswclStatus(PageData pd) throws Exception{
		dao.save("FlswclMapper.insertNewFlswclStatus", pd);
	}
	
	public void deleteFlswcl(PageData pd) throws Exception{
		dao.delete("FlswclMapper.deleteFlswcl", pd);
		dao.delete("FlswclMapper.deleteFlswclStatus", pd);
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
		List<String> ids = (List<String>) dao.findForList("FlswclMapper.queryApprovedIdsByApprover", pd);
		if(ids.size()>0){
			Map<String , Object> map = new HashMap<String , Object>();
			map.put("ids", ids);
			map.put("startIndex", pd.get("startIndex"));
			map.put("rows", pd.get("rows"));			
			return (List<PageData>) dao.findForList("FlswclMapper.queryflswcl_HasApproved", map);
		}else{
			return null;
		}
		
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
	public List<PageData> queryFlswclStatusById(PageData pd) throws Exception{
		return (List<PageData>) dao.findForList("FlswclMapper.queryFlswclStatusById", pd);
	}
	public void updateFlswcl(PageData pd) throws Exception{
		dao.update("FlswclMapper.updateFlsw", pd);
		dao.save("FlswclMapper.insertNewFlswclStatus", pd);
	}
}
