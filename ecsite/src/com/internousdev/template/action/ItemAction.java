package com.internousdev.template.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.template.dao.ItemDAO;
import com.internousdev.template.dto.ItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemAction extends ActionSupport implements SessionAware {
	// public boolean login;
	public String login;
	private Map<String, Object> session;

	private String userId = "23";
	private String itemId;

	public ItemDAO itemDAO = new ItemDAO();
	public ArrayList<ItemDTO> itemDTO = new ArrayList<ItemDTO>();

	public String execute() {

		String result = login;

		System.out.println("商品番号をCartActionから表示する:" + itemId + ":数字");
		System.out.println("自作user_idをCartActionから表示する:" + userId + ":文字列");
		// ログイン判定が成功すると、
		// データーベーステーブルのログイン判定の値を持ってくることができる。
		// デフォルト値であった0のtinyintが１に変更するｓｑｌをかく。
		// 終わりに、SearchActionで作ったような、サイト移動用のsessionパスワードを
		// つくる。
		// sessionが何らかの事情で切れてしまった場合、データーベースの値を
		// 引っ張る。1であれば、みることができる。
		// ログアウトを実行した際、sessionにあるパスワードを消去する。

		//
		itemDTO = itemDAO.getCartInfo(userId, itemId);
		if (session.containsKey("4")) {

			System.out.println(session.get("4"));
			System.out.println(session.containsKey("4"));
			result = SUCCESS;

		}

		return result;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;

	}

	public Object getItemId() {
		return itemId;
	}

	public void setItemId(String itemId) {
		this.itemId = itemId;
	}

	public Object getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

}