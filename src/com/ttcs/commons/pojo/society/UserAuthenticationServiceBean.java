package com.ttcs.commons.pojo.society;

import com.ttcs.commons.pojo.Bean;

public class UserAuthenticationServiceBean implements Bean{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1594126840727900279L;

	private Integer objId;
	
	private String userName;
	
	private String userId;
	
	private String password;
	
	private String userEmailId;
	
	private String userFunction;
	
	private String validUser;
	
	private Integer mobileNumber;
	
	
	public Integer getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(Integer mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getValidUser() {
		return validUser;
	}

	public void setValidUser(String validUser) {
		this.validUser = validUser;
	}

	public String getUserEmailId() {
		return userEmailId;
	}

	public void setUserEmailId(String userEmailId) {
		this.userEmailId = userEmailId;
	}

	public String getUserFunction() {
		return userFunction;
	}

	public void setUserFunction(String userFunction) {
		this.userFunction = userFunction;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Integer getObjId() {
		return objId;
	}

	public void setObjId(Integer objId) {
		this.objId = objId;
	}
	
	

}
