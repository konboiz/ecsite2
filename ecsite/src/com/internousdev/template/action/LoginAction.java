package com.internousdev.template.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.template.dao.LoginDAO;
import com.internousdev.template.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware {
	/**
	 * ユーザーネーム
	 */
	private String userName;
	/**
	 * パスワード
	 */
	private String password;

	/**
	 * ユーザーID
	 */
	private String userId;

	/**
	 * LoginDTOへ情報格納
	 */
	private LoginDTO loginDTO = new LoginDTO();
	/**
	 * LoginDAOから情報を引き出す
	 */
	private LoginDAO loginDAO = new LoginDAO();

	public Map<String, Object> session;


public String execute() {
	String result = ERROR;

	// ログイン実行

			/**
			 * DAO DTOから情報引き出しを再確認
			 */

			loginDTO = loginDAO.getUserInfo( userId, password, userName );

			if(userId.equals(loginDTO.getUserId())){
				if(password.equals(loginDTO.getPassword())){

				result = SUCCESS;
				}
			}
			return result;
			}


	@Override
	public void setSession(Map<String, Object> session) {
		// TODO 自動生成されたメソッド・スタブ
		this.session = session;

	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
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



}
