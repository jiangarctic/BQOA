package com.jwd.bqoa.util;

import com.jwd.bqoa.entity.system.PageInfo;

public class PageUtil {
	public static	PageInfo geneTotalPages(int total , int currentPage ){
		PageInfo pageInfo = new PageInfo();
		int totalPages = (int) (Math.floor(total/Const.ROWSPERPAGE)+1);
		pageInfo.setTotalPages(totalPages);
		if(currentPage == totalPages){
			pageInfo.setIsLastPage(1);
		}else{
			pageInfo.setIsLastPage(0);
		}
		pageInfo.setCurrentPage(currentPage);
		pageInfo.setRows(Const.ROWSPERPAGE);
		return pageInfo;	
	}
}
