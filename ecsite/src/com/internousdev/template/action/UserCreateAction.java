package com.internousdev.template.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author internous
 *
 */
public class UserCreateAction extends ActionSupport implements SessionAware {

	private String userId;

	private String password;

	private String first_name;

	private String family_name;

	private String userName = first_name + family_name;

	private int gender;

	private String genderStr;

	private String pc_1;

	private String pc_2;

	private String pc = pc_1 + pc_2;

	private String prefecture;

	private String city;

	private String banchi;

	private String building_name;

	private String company;

	private String tel_1;

	private String tel_2;

	private String tel_3;

	private String tel;

	private String address;

	private String email;



	public Map<String,Object> session;

	private String errorMassage;

	public String execute() {
		 tel= tel_1 + tel_2 + tel_3;
		 address = pc + prefecture + city + banchi + building_name + company;
		String result = SUCCESS;

		/**
		 * 性別のint型での送り方を確認すべし
		 */


		if (gender == 0) {
			genderStr = "Man";
		} else {
			genderStr = "Woman";
		}

		if(!(userId.equals("")) && !(password.equals("")) && !(userName.equals(""))&& !(tel.equals(""))&&  !(address.equals(""))&& !(email.equals(""))) {

			/**
			 * 何故ここでsessionに入れ込むかがわからない
			 *
			 */

			session.put("userId", userId);
			session.put("password", password);
			session.put("userName", userName);
			session.put("tel", tel);
			session.put("address", address);
			session.put("email", email);

		} else {

			setErrorMassage("未入力の項目があります。");
			result = ERROR;
		}

		return result;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getErrorMassage() {
		return errorMassage;
	}

	public void setErrorMassage(String errorMassage) {
		this.errorMassage = errorMassage;
	}

	public int getGender(){
		return gender;
	}
	public void setGender(int gender){
		this.gender = gender;
	}


	public String getGenderStr() {
		return genderStr;
	}

	public void setGenderStr(String genderStr) {
		this.genderStr = genderStr;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}



	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getFamily_name() {
		return family_name;
	}

	public void setFamily_name(String family_name) {
		this.family_name = family_name;
	}

	public String getPc_1() {
		return pc_1;
	}

	public void setPc_1(String pc_1) {
		this.pc_1 = pc_1;
	}

	public String getPc_2() {
		return pc_2;
	}

	public void setPc_2(String pc_2) {
		this.pc_2 = pc_2;
	}

	public String getPc() {
		return pc;
	}

	public void setPc(String pc) {
		this.pc = pc;
	}

	public String getPrefecture() {
		return prefecture;
	}

	public void setPrefecture(String prefecture) {
		this.prefecture = prefecture;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getBanchi() {
		return banchi;
	}

	public void setBanchi(String banchi) {
		this.banchi = banchi;
	}

	public String getBuilding_name() {
		return building_name;
	}

	public void setBuilding_name(String building_name) {
		this.building_name = building_name;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getTel_1() {
		return tel_1;
	}

	public void setTel_1(String tel_1) {
		this.tel_1 = tel_1;
	}

	public String getTel_2() {
		return tel_2;
	}

	public void setTel_2(String tel_2) {
		this.tel_2 = tel_2;
	}

	public String getTel_3() {
		return tel_3;
	}

	public void setTel_3(String tel_3) {
		this.tel_3 = tel_3;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


}
