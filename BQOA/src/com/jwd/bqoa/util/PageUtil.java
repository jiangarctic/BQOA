package com.jwd.bqoa.util;

import com.jwd.bqoa.entity.system.PageInfo;
import com.jwd.bqoa.service.common.CommonService;

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
	
	public static String getPagenationInfo(long totalCount , int currentPage ){
		int rowsPerPage = Const.ROWSPERPAGE;
		int totalPages = PageUtil.getTotalPages(totalCount);
		int isLast = currentPage==totalPages?1:0;
		StringBuffer sb = new StringBuffer();
		sb.append("<ul class=\"pagination no-margin\">");
		if(currentPage<=1){
			sb.append(" <li class=\"disabled\"><a href=\"#\">«</a></li>");
		}else{
			sb.append(" <li><a href=\"javascript:prevPage();\">«</a></li>");
		}
		
		if(totalPages<=10){
			for(int i = 1 ; i <=totalPages ; i++){
				if(currentPage==i){
					sb.append(" <li class=\"active\"><a href=\"#\">"+i+"</a></li>");
				}else{
					sb.append("<li><a href=\"javascript:changePage("+i+");\">"+i+"</a></li>");
				}
			}
		}else{
			if(currentPage>10){
				for(int i =1 ; i <=10 ; i++){
					sb.append("<li><a href=\"javascript:changePage("+i+");\">"+i+"</a></li>");
				}
				sb.append("<li><a>...</a></li><li class=\"active\"><a href=\"#\">"+currentPage+"</a></li>");
			}else{
				for(int i =1 ; i <=10 ; i++){
					if(i== currentPage){
						sb.append("<li class=\"active\"><a href=\"#\">"+i+"</a></li>");
					}else{
						sb.append("<li><a href=\"javascript:changePage("+i+");\">"+i+"</a></li>");
					}
					
				}
			}
			sb.append("<li><a  style=\"padding:4px;\">跳转到：<input type=\"number\" id=\"toPageIndex\" size=\"1\" style=\"width:35px\">/"+totalPages+"</a></li><li><a href=\"javascript:toPageIndex();\">Go</a></li>");
		}
		
		if(currentPage>=totalPages){
			sb.append("<li class=\"disabled\"><a href=\"#\">»</a></li></ul>");
		}else if(currentPage<totalPages){
			sb.append("<li ><a href=\"javascript:nextPage();\">»</a></li></ul>");
		}
		return sb.toString();
	}
	
	public static int getTotalPages (long total){
		int rowsPerpage = Const.ROWSPERPAGE;
		long totalPages =0;
		if(total%rowsPerpage==0){
			totalPages = total/rowsPerpage;
		}else{
		 totalPages = (int) (Math.floor(total/Const.ROWSPERPAGE)+1);
		}
		return (int) totalPages;
	}
	
}
