package com.jwd.bqoa.service.system.menu;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jwd.bqoa.dao.DaoSupport;
import com.jwd.bqoa.entity.system.Menu;

@Service("menuService")
public class MenuService {
	@Resource(name="daoSupport")
	private DaoSupport daoSupport;
	
	public List<Menu> listAllParentMenu() throws Exception{
		return (List<Menu>) daoSupport.findForList("MenuMapper.listAllParentMenu", null);
	}
	
	public List<Menu> listSubMenuByParentId(String PARENT_ID) throws Exception{
		return (List<Menu>) daoSupport.findForList("MenuMapper.listAllSubMenuByParentId", PARENT_ID);
	}
	
	public List<Menu> listAllMenu() throws Exception{
		List<Menu> parentMenus = this.listAllParentMenu();
		for(Menu menu : parentMenus){
			List<Menu> subMenu = this.listSubMenuByParentId(menu.getMENU_ID());
			menu.setSubMenu(subMenu);
		}
		return parentMenus;
	}
 	
}
