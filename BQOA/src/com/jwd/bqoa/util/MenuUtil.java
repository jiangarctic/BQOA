package com.jwd.bqoa.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.jwd.bqoa.entity.system.Menu;

public class MenuUtil {
	public static Map<String , Object> MenuList2subMenu(List<Menu> menus){
		Map<String , Object> subMenuMap = new HashMap<String , Object>();
		if(menus.size()==0){
			return subMenuMap;
		}else{
			for(int i = 0 ; i < menus.size() ; i++){
				Menu menu  = menus.get(i);
				if(menu.getSubMenu()!= null){
					subMenuMap.put(menu.getMENU_NAME(), menu.getSubMenu());
				}else{
					subMenuMap.put(menu.getMENU_NAME(), new ArrayList<Menu>());
				}
				
			}
		}
		return subMenuMap;
	}
}
