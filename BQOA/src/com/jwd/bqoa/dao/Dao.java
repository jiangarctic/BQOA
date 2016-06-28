package com.jwd.bqoa.dao;

public interface Dao {
	public Object findForObject(String str , Object obj) throws Exception;
	public Object findForList(String str , Object obj) throws Exception;
	public Object save(String str , Object obj) throws Exception;
	public Object findForObject(String str) throws Exception;
	public Object delete(String str , Object obj) throws Exception; 
	public Object update(String str , Object obj);
}
