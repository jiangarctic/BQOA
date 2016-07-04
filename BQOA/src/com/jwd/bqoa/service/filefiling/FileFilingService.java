package com.jwd.bqoa.service.filefiling;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jwd.bqoa.dao.DaoSupport;
import com.jwd.bqoa.util.PageData;

@Service("fileFilingService")
public class FileFilingService {
	@Resource(name="daoSupport")
	private DaoSupport dao;
	
	public List<PageData> getFlswclFilingList(PageData pd) throws Exception{
		return (List<PageData>) dao.findForList("FileFilingMapper.findFlswclFiling", null);
	}
}
