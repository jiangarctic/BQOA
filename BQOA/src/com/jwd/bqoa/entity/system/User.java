package com.jwd.bqoa.entity.system;

import java.io.Serializable;

import com.jwd.bqoa.entity.Page;

public class User implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String USER_ID; // 用户id
	private String USERNAME; // 用户名
	private String PASSWORD; // 密码
	private String NAME; // 姓名
	private String RIGHTS; // 权限
	private String ROLE_ID; // 角色id
	private String LAST_LOGIN; // 最后登录时间
	private String IP; // 用户登录ip地址
	private String STATUS; // 状态
	private Role role; // 角色对象
	private String PHONE ;
	private String EMAIL;


	public String getUSER_ID() {
		return USER_ID;
	}

	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
	}

	public String getUSERNAME() {
		return USERNAME;
	}

	public void setUSERNAME(String uSERNAME) {
		USERNAME = uSERNAME;
	}

	public String getPASSWORD() {
		return PASSWORD;
	}

	public void setPASSWORD(String pASSWORD) {
		PASSWORD = pASSWORD;
	}

	public String getNAME() {
		return NAME;
	}

	public void setNAME(String nAME) {
		NAME = nAME;
	}

	public String getRIGHTS() {
		return RIGHTS;
	}

	public void setRIGHTS(String rIGHTS) {
		RIGHTS = rIGHTS;
	}

	public String getROLE_ID() {
		return ROLE_ID;
	}

	public void setROLE_ID(String rOLE_ID) {
		ROLE_ID = rOLE_ID;
	}

	public String getLAST_LOGIN() {
		return LAST_LOGIN;
	}

	public void setLAST_LOGIN(String lAST_LOGIN) {
		LAST_LOGIN = lAST_LOGIN;
	}

	public String getIP() {
		return IP;
	}

	public void setIP(String iP) {
		IP = iP;
	}

	public String getSTATUS() {
		return STATUS;
	}

	public void setSTATUS(String sTATUS) {
		STATUS = sTATUS;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}



	public String getPHONE() {
		return PHONE;
	}

	public void setPHONE(String pHONE) {
		PHONE = pHONE;
	}

	public String getEMAIL() {
		return EMAIL;
	}

	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}

	@Override
	public String toString() {
		return "User [USER_ID=" + USER_ID + ", USERNAME=" + USERNAME + ", PASSWORD=" + PASSWORD + ", NAME=" + NAME
				+ ", RIGHTS=" + RIGHTS + ", ROLE_ID=" + ROLE_ID + ", LAST_LOGIN=" + LAST_LOGIN + ", IP=" + IP
				+ ", STATUS=" + STATUS + ", role=" + role + ", PHONE=" + PHONE + ", EMAIL=" + EMAIL + "]";
	}



}
