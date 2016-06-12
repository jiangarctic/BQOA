package com.jwd.bqoa.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.jwd.bqoa.entity.system.User;
import com.jwd.bqoa.util.AuthUtil;
import com.jwd.bqoa.util.Const;

public class LoginHandlerInterceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest req , HttpServletResponse resp , Object handler) throws Exception{
		String path = req.getServletPath();
		if(path.matches(Const.NO_INTERCEPTOR_PATH)){
			return true;
		}else{
			Subject currentUser = SecurityUtils.getSubject();
			Session session = currentUser.getSession();
			User user = (User) session.getAttribute(Const.SESSION_USER);
			if(user != null){
				if(session.getAttribute(Const.SESSION_allmenuList)==null){
					return true;
				}else{
					path = path.substring(1, path.length());
					boolean b = AuthUtil.hasAuth(path);
					if(!b){
						resp.sendRedirect(req.getContextPath()+Const.LOGIN);
					}
					return b;
				}
				
			}else{
				resp.sendRedirect(req.getContextPath() + Const.LOGIN);
				return false;
			}
		}

		
	}
}
