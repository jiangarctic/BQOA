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
	public List<PageData> queryFlswcl() throws Exception{
		return (List<PageData>) dao.findForList("FlswclMapper.queryAllflswcl", null);
	}
}
