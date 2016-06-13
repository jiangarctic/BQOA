package com.jwd.bqoa.service.system.client;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jwd.bqoa.dao.DaoSupport;
import com.jwd.bqoa.util.PageData;

@Service("clientService")
public class ClientService {
@Resource(name="daoSupport")
private DaoSupport dao;

public void addClient(PageData pd) throws Exception{
	dao.save("ClientMapper.saveClient", pd);
}
}
