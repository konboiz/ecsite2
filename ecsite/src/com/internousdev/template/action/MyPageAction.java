package com.internousdev.template.action;

import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.template.dao.MyPageDAO;
import com.internousdev.template.dto.MyPageDTO;
import com.opensymphony.xwork2.ActionSupport;

public class MyPageAction extends ActionSupport{


private String hiddinid;
public MyPageDAO myPageDAO = new MyPageDAO();
public ArrayList<MyPageDTO> myPageDTO = new ArrayList<MyPageDTO>();
	 String result;

		public String execute() throws SQLException{

			String result =SUCCESS;


			myPageDTO = myPageDAO.getKAO(hiddinid);

	      return result;
	}

		public String getHiddinid() {
			return hiddinid;
		}

		public void setHiddinid(String hiddinid) {
			this.hiddinid = hiddinid;
		}
}




