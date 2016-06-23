package com.jwd.bqoa.service.system.client;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jwd.bqoa.dao.DaoSupport;
import com.jwd.bqoa.entity.system.Client;
import com.jwd.bqoa.entity.system.PageInfo;
import com.jwd.bqoa.util.PageData;

@Service("clientService")
public class ClientService {
@Resource(name="daoSupport")
private DaoSupport dao;

public void addClient(PageData pd) throws Exception{
	dao.save("ClientMapper.saveClient", pd);
}

public List<Client> queryClients(PageInfo pageInfo) throws Exception{
	return (List<Client>) dao.findForList("ClientMapper.queryClientsByPage", pageInfo);
}

public List<PageInfo> queryClients() throws Exception{
	return (List<PageInfo>) dao.findForList("ClientMapper.queryClients" , null);
}

public PageData queryClientByName(PageData pd) throws Exception{
	return (PageData) dao.findForObject("ClientMapper.QueryClientByName" , pd);
}

public Integer getCountOfClient() throws Exception{
	return (Integer) dao.findForObject("ClientMapper.queryClientCount");
}
}
