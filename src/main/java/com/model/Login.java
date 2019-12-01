package com.model;

public class Login {

	/*private Integer uid;// 用户id*/
	private Integer loginCode;// 用户账号
	/*private String usex;// 用户性别 0-男 1-女*/
	private String loginPassword;// 用户密码
	private String loginState;//用户状态
	private Integer personTypeId;//人员类别编号
	private String loginSession;//用户登录session
	public Integer getLoginCode() {
		return loginCode;
	}

	public void setLoginCode(Integer loginCode) {
		this.loginCode = loginCode;
	}
	public String getLoginPassword() {
		return loginPassword;
	}
	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}
	public String getLoginState() {
		return loginState;
	}
	public void setLoginState(String loginState) {
		this.loginState = loginState;
	}
	public Integer getPersonTypeId() {
		return personTypeId;
	}
	public void setPersonTypeId(Integer personTypeId) {
		this.personTypeId = personTypeId;
	}
	public String getLoginSession() {
		return loginSession;
	}

	public void setLoginSession(String loginSession) {
		this.loginSession = loginSession;
	}

	@Override
	public String toString() {
		return "Login [loginCode=" + loginCode + ", loginPassword=" + loginPassword + ", loginState=" + loginState
				+ ", personTypeId=" + personTypeId + ", loginSession=" + loginSession + "]";
	}
}
