package com.jwd.bqoa.util;

import java.util.Map;

import org.codehaus.jackson.map.util.JSONPObject;

public class AppUtil {
	public static Object returnObject(PageData pd , Map map){
		if(pd.containsKey("callback")){
			String callback = pd.get("callback").toString();
			return new JSONPObject(callback , map);
		}else{
			return map;
		}
	}
}
