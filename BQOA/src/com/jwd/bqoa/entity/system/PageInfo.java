package com.jwd.bqoa.entity.system;

import java.io.Serializable;

public class PageInfo implements Serializable{
	private int currentPage; //当前页
	private int rows;        //每页条数
	private int totalPages;  //总页数
	private int isLastPage;  //是否是最后一页
	private int startIndex;  //查询参数 ， 当前是第几条
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
	
	
	public int getStartIndex() {
		return startIndex;
	}
	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}
	public PageInfo(){}
	
	public PageInfo(int currentPage , int rows){
		this.rows = rows;
		this.currentPage = currentPage;
		this.startIndex = (currentPage-1)*rows;
	}
	
	
}
