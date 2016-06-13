package com.jwd.bqoa.util;

import java.util.List;
import java.util.Map;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;

import com.jwd.bqoa.entity.system.Menu;

public class AuthUtil {
	public static boolean hasAuth(String menuUrl){
		Subject currentUser  = SecurityUtils.getSubject();
		Session session = currentUser.getSession();
		@SuppressWarnings("unchecked")
		List<Menu> menuList = (List<Menu>) session.getAttribute(Const.SESSION_allmenuList);
		System.out.println("menuUrl="+menuUrl);
		System.out.println("sysMenu="+menuList);
		for(int i =0 ; i < menuList.size() ; i++){
			for(int j =0 ; j < menuList.get(j).getSubMenu().size() ; j++){
				//这个if判断传递过来的menuUrl是否在session中存的所有菜单中，设定认为session中存储的是所有的菜单
				//如果session中没有包含传过来的menuUrl，直接判断没有
				if(menuList.get(i).getSubMenu().get(j).getMENU_URL().split(".do")[0].equals(menuUrl.split(".do")[0])){
					//这个if-else判断的是如果session中存在传入菜单，再判断该菜单的hasMenu是否为真
					//如果为真，说明有这个菜单权限，然后就开始判断该菜单下的按钮权限
					//注：在菜单列表存入session时，已经使用RIGHTS判断过该菜单的hasMenu了，就是说如果hasMenu为真
					//该菜单已经符合菜单权限RIGHTS
					if(!menuList.get(i).getSubMenu().get(j).isHasMenu()){
						return false;
					}else{
						Map<String , String> map = (Map<String, String>) session.getAttribute(Const.SESSION_QX);
						map.remove("create");
						map.remove("delete");
						map.remove("update");
						map.remove("retrive");
						String MENU_ID = menuList.get(i).getSubMenu().get(j).getMENU_ID();
						String USERNAME = (String) session.getAttribute(Const.SESSION_USERNAME);
						Boolean isAdmin = USERNAME.equals("admin");
						map.put("C_AUTH", (RightsUtil.testRights(map.get("C_AUTHs"), MENU_ID)) ? "1" : "0");
						map.put("R_AUTH", (RightsUtil.testRights(map.get("R_AUTHs"), MENU_ID))? "1" : "0");
						map.put("U_AUTH", (RightsUtil.testRights(map.get("U_AUTHs"), MENU_ID)) ? "1" : "0");
						map.put("D_AUTH", (RightsUtil.testRights(map.get("D_AUTHs"), MENU_ID))  ? "1" : "0");
						session.removeAttribute(Const.SESSION_QX);
						session.setAttribute(Const.SESSION_QX, map);
					}
				}
			}
		}
		//在这里返回true是指如果url不是menu的，就不用验证了，因为LoginHandlerIntercepter会调用该函数
		//传过来的url并不全是menu的，因此，是menu的验证已经在上面for循环完成并返回
		return true;
	}
}
