package com.jwd.bqoa.entity.system;

import java.io.Serializable;

public class Client implements Serializable{
	private int ClientId;
	private String clientName;
	private String clientAddress;
	private String clientType;
	private String clientContactor;
	private String clientPhone;
	private String commissionStart;
	private String commissionEnd;
	private String shortName;
	private String clientEmail;
	private String contactorDesc;
	private int status;
	public int getClientId() {
		return ClientId;
	}
	public void setClientId(int clientId) {
		ClientId = clientId;
	}
	public String getClientName() {
		return clientName;
	}
	public void setClientName(String clientName) {
		this.clientName = clientName;
	}
	public String getClientAddress() {
		return clientAddress;
	}
	public void setClientAddress(String clientAddress) {
		this.clientAddress = clientAddress;
	}
	public String getClientType() {
		return clientType;
	}
	public void setClientType(String clientType) {
		this.clientType = clientType;
	}
	public String getClientContactor() {
		return clientContactor;
	}
	public void setClientContactor(String clientContactor) {
		this.clientContactor = clientContactor;
	}
	public String getClientPhone() {
		return clientPhone;
	}
	public void setClientPhone(String clientPhone) {
		this.clientPhone = clientPhone;
	}
	public String getCommissionStart() {
		return commissionStart;
	}
	public void setCommissionStart(String commissionStart) {
		this.commissionStart = commissionStart;
	}
	public String getCommissionEnd() {
		return commissionEnd;
	}
	public void setCommissionEnd(String commissionEnd) {
		this.commissionEnd = commissionEnd;
	}
	
	
	public String getShortName() {
		return shortName;
	}
	public void setShortName(String shortName) {
		this.shortName = shortName;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	
	public String getClientEmail() {
		return clientEmail;
	}
	public void setClientEmail(String clientEmail) {
		this.clientEmail = clientEmail;
	}
	public String getContactorDesc() {
		return contactorDesc;
	}
	public void setContactorDesc(String contactorDesc) {
		this.contactorDesc = contactorDesc;
	}
	@Override
	public String toString() {
		return "Client [ClientId=" + ClientId + ", clientName=" + clientName + ", clientAddress=" + clientAddress
				+ ", clientType=" + clientType + ", clientContactor=" + clientContactor + ", clientPhone=" + clientPhone
				+ ", commissionStart=" + commissionStart + ", commissionEnd=" + commissionEnd + ", shortName="
				+ shortName + ", clientEmail=" + clientEmail + ", contactorDesc=" + contactorDesc + ", status=" + status
				+ "]";
	}

	
	
}
