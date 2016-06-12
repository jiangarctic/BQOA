package com.jwd.bqoa.entity.system;

import java.io.Serializable;

public class Role implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String ROLE_ID;
	private String ROLE_NAME;
	private String RIGHTS;
	private String PARENT_ID;
	private String C_AUTH;
	private String R_AUTH;
	private String U_AUTH;
	private String D_AUTH;
	private String AUTH_ID;
	public String getROLE_ID() {
		return ROLE_ID;
	}
	public void setROLE_ID(String rOLE_ID) {
		ROLE_ID = rOLE_ID;
	}
	public String getROLE_NAME() {
		return ROLE_NAME;
	}
	public void setROLE_NAME(String rOLE_NAME) {
		ROLE_NAME = rOLE_NAME;
	}
	public String getRIGHTS() {
		return RIGHTS;
	}
	public void setRIGHTS(String rIGHTS) {
		RIGHTS = rIGHTS;
	}
	public String getPARENT_ID() {
		return PARENT_ID;
	}
	public void setPARENT_ID(String pARENT_ID) {
		PARENT_ID = pARENT_ID;
	}
	public String getC_AUTH() {
		return C_AUTH;
	}
	public void setC_AUTH(String c_AUTH) {
		C_AUTH = c_AUTH;
	}
	public String getR_AUTH() {
		return R_AUTH;
	}
	public void setR_AUTH(String r_AUTH) {
		R_AUTH = r_AUTH;
	}
	public String getU_AUTH() {
		return U_AUTH;
	}
	public void setU_AUTH(String u_AUTH) {
		U_AUTH = u_AUTH;
	}
	public String getD_AUTH() {
		return D_AUTH;
	}
	public void setD_AUTH(String d_AUTH) {
		D_AUTH = d_AUTH;
	}
	public String getAUTH_ID() {
		return AUTH_ID;
	}
	public void setAUTH_ID(String aUTH_ID) {
		AUTH_ID = aUTH_ID;
	}
	@Override
	public String toString() {
		return "Role [ROLE_ID=" + ROLE_ID + ", ROLE_NAME=" + ROLE_NAME + ", RIGHTS=" + RIGHTS + ", PARENT_ID="
				+ PARENT_ID + ", C_AUTH=" + C_AUTH + ", R_AUTH=" + R_AUTH + ", U_AUTH=" + U_AUTH + ", D_AUTH=" + D_AUTH
				+ ", AUTH_ID=" + AUTH_ID + "]";
	}



}
