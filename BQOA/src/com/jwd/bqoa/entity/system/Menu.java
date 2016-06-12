package com.jwd.bqoa.entity.system;

import java.io.Serializable;
import java.util.List;

public class Menu implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String MENU_ID;
	private String MENU_NAME;
	private String MENU_URL;
	private String PARENT_ID;
	private String MENU_ORDER;
	private String MENU_DESC;
	private String target;

	private Menu parentMenu;
	private List<Menu> subMenu;

	private boolean hasMenu = false;

	public String getMENU_ID() {
		return MENU_ID;
	}

	public void setMENU_ID(String mENU_ID) {
		MENU_ID = mENU_ID;
	}

	public String getMENU_NAME() {
		return MENU_NAME;
	}

	public void setMENU_NAME(String mENU_NAME) {
		MENU_NAME = mENU_NAME;
	}

	public String getMENU_URL() {
		return MENU_URL;
	}

	public void setMENU_URL(String mENU_URL) {
		MENU_URL = mENU_URL;
	}

	public String getPARENT_ID() {
		return PARENT_ID;
	}

	public void setPARENT_ID(String pARENT_ID) {
		PARENT_ID = pARENT_ID;
	}

	public String getMENU_ORDER() {
		return MENU_ORDER;
	}

	public void setMENU_ORDER(String mENU_ORDER) {
		MENU_ORDER = mENU_ORDER;
	}

	public Menu getParentMenu() {
		return parentMenu;
	}

	public void setParentMenu(Menu parentMenu) {
		this.parentMenu = parentMenu;
	}

	public List<Menu> getSubMenu() {
		return subMenu;
	}

	public void setSubMenu(List<Menu> subMenu) {
		this.subMenu = subMenu;
	}

	public boolean isHasMenu() {
		return hasMenu;
	}

	public void setHasMenu(boolean hasMenu) {
		this.hasMenu = hasMenu;
	}

	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}
	
	

	public String getMENU_DESC() {
		return MENU_DESC;
	}

	public void setMENU_DESC(String mENU_DESC) {
		MENU_DESC = mENU_DESC;
	}

	@Override
	public String toString() {
		return "Menu [MENU_ID=" + MENU_ID + ", MENU_NAME=" + MENU_NAME + ", MENU_URL=" + MENU_URL + ", PARENT_ID="
				+ PARENT_ID + ", MENU_ORDER=" + MENU_ORDER + ", MENU_DESC=" + MENU_DESC + ", target=" + target
				+ ", parentMenu=" + parentMenu + ", subMenu=" + subMenu + ", hasMenu=" + hasMenu + "]";
	}


}
