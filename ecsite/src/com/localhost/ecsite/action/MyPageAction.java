package com.localhost.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.localhost.ecsite.dao.MyPageDAO;
import com.localhost.ecsite.dto.MyPageDTO;
import com.opensymphony.xwork2.ActionSupport;

public class MyPageAction extends ActionSupport implements SessionAware{

	public String item_id ;

	/**
	 * MyPageDAO
	 */
	public MyPageDAO myPageDAO = new MyPageDAO();

	/**
	 * MyPageDTOをArrayList化
	 */
	public ArrayList<MyPageDTO> myPageDTO = new ArrayList<MyPageDTO>();

	/**
	 * セッション
	 */
	public Map<String,Object> session;

	/**
	 * 実行結果
	 */
	String result;

	@SuppressWarnings("unchecked")
	public String execute() throws SQLException {

		// アイテム情報を取得
		// アイテム情報をitem.japに表示させる

		myPageDTO = myPageDAO.getItemInfo();


		Iterator<MyPageDTO> iterator = myPageDTO.iterator();
		while(iterator.hasNext()){
			MyPageDTO myPageDTO = new MyPageDTO();
			myPageDTO = iterator.next();

		System.out.println(myPageDTO.getItemId());


		}
		session.put("myPageDTO", myPageDTO);
		myPageDTO =(ArrayList<MyPageDTO>)session.get("myPageDTO");


		result = SUCCESS;

		return result;


	}



	public MyPageDAO getMyPageDAO() {
		return myPageDAO;
	}

	public void setMyPageDAO(MyPageDAO MyPageDAO) {
		this.myPageDAO = MyPageDAO;
	}

	public ArrayList<MyPageDTO> getMyPageDTO() {
		return myPageDTO;
	}

	public void setMyPageDTO(ArrayList<MyPageDTO> myPageDTO) {
		this.myPageDTO = myPageDTO;
	}


	public String getItem_id() {
		return item_id;
	}



	public void setItem_id(String item_id) {
		this.item_id = item_id;
	}

	@Override
	public void setSession(Map<String, Object>session){
		this.session = session;
	}
}


