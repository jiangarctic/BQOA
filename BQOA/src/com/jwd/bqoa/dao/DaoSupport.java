package com.jwd.bqoa.dao;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.jwd.bqoa.util.PageData;

@Repository("daoSupport")
public class DaoSupport implements  Dao{
	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public Object findForObject(String str, Object obj) throws Exception {
		return sqlSessionTemplate.selectOne(str, obj);
	}

	@Override
	public Object findForList(String str, Object obj) throws Exception {
		return sqlSessionTemplate.selectList(str, obj);
	}
	
	

	@Override
	public Object save(String str, Object obj) throws Exception {
		return sqlSessionTemplate.insert(str, obj);
	}

	@Override
	public Object findForObject(String str) throws Exception {
		return sqlSessionTemplate.selectOne(str);
	}

	@Override
	public Object delete(String str, Object obj) throws Exception {
		return sqlSessionTemplate.delete(str, obj);
	}

	@Override
	public Object update(String str, Object obj) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update(str, obj);
	}
	
	
	
	

}
