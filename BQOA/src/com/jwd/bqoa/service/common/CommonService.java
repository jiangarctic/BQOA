package com.jwd.bqoa.service.common;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jwd.bqoa.dao.DaoSupport;

@Service("commonService")
public class CommonService {
	@Resource(name="daoSupport")
	private DaoSupport dao;
	
	public int getTotalCountByTableName(String tableName) throws Exception{
		return (int) dao.findForObject("UserMapper.selectTableCount", tableName);
	}
}
