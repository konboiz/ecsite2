package com.internousdev.template.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.internousdev.template.dto.ComfirmDTO;
import com.internousdev.template.util.DBConnector;

public class ComfirmDAO  {

	private DBConnector dbConnector = new DBConnector();

	private Connection connection = dbConnector.getConnection();

	private ComfirmDTO comfirmDTO = new ComfirmDTO();

	/**
	 * getBuyItemInfo()は仮
	 *
	 *resultSet.getString/Int()内はsql文と統一
	 * @return
	 */
	public ComfirmDTO getComfirmInfo() {

		String sql = "SELECT user_name FROM login_user_transaction where login_id = ?";

		try {
				PreparedStatement preparedStatement = connection.prepareStatement(sql);
				ResultSet resultSet = preparedStatement.executeQuery();

				if(resultSet.next()) {
						comfirmDTO.setId(resultSet.getInt("user_id"));
						comfirmDTO.setUserName(resultSet.getString("user_name"));
						comfirmDTO.setAddress(resultSet.getString("address"));
						comfirmDTO.setTel(resultSet.getString("tel"));
						comfirmDTO.setItemName(resultSet.getString("item_name"));
						comfirmDTO.setItemId(resultSet.getInt("item_id"));
						comfirmDTO.setItemPrice(resultSet.getInt("item_price"));
						comfirmDTO.setItemCount(resultSet.getInt("item_count"));
						comfirmDTO.setPayment(resultSet.getString("payment"));
						comfirmDTO.setTransport(resultSet.getString("transport"));
				}
		} catch(Exception e){

			e.printStackTrace();

		}
			return comfirmDTO;
	}


	}

