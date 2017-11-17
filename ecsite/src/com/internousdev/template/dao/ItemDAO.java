package com.internousdev.template.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;

import com.internousdev.template.dto.ItemDTO;
import com.internousdev.template.util.DBConnector;

public class ItemDAO {
	private DBConnector dbConnector = new DBConnector();

	private Connection connection = dbConnector.getConnection();

	private Object result;
	PreparedStatement preparedStatement;

	public ArrayList<ItemDTO> getCartInfo( String userId,  String itemId){
		ArrayList<ItemDTO> itemDTO = new ArrayList<ItemDTO>();


		String[] strArray = { "\'" + userId + "\'", "" + itemId + ""};
		String sep = ",";

		StringBuilder sb = new StringBuilder();
		for (String str : strArray) {
			if (sb.length() > 0) {
				sb.append(sep);
			}

			sb.append(str);
		}


			//カート情報を入れる。
		String sql = "INSERT INTO cart_info (user_id, item_id) VALUES ( " + sb.toString()+ ") ";

		System.out.println(sb.toString());
		PreparedStatement preparedStatement;
		try {
			preparedStatement = connection.prepareStatement(sql);

			connection.prepareStatement(sql);
			preparedStatement.executeUpdate();


	} catch(Exception e) {
		e.printStackTrace();
	}


		return itemDTO;



}


	public Connection getConnection() {
		return connection;
	}



	public void setConnection(Connection connection) {
		this.connection = connection;
	}


	public Object getResult() {
		return result;
	}


	public void setResult(Object result) {
		this.result = result;
	}

}
