package com.jwd.bqoa.entity.system;

import java.io.Serializable;

public class PageInfo implements Serializable{
	private int currentPage; //当前页
	private int rows;        //每页条数
	private int totalPages;  //总页数
	private int isLastPage;  //是否是最后一页
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	public int getTotalPages() {
		return totalPages;
	}
	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}
	public int getIsLastPage() {
		return isLastPage;
	}
	public void setIsLastPage(int isLastPage) {
		this.isLastPage = isLastPage;
	}
	
	
}
