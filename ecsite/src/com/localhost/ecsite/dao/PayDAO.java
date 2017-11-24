package com.localhost.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.localhost.ecsite.dto.PayDTO;
import com.localhost.ecsite.util.DBConnector;

public class PayDAO  {

	private PayDTO payDTO = new PayDTO();

	/**
	 *
	 *resultSet.getString/Int()内はsql文と統一
	 * @return
	 */
	public PayDTO getPay_Info() {

		DBConnector dbConnector = new DBConnector();

		Connection connection = dbConnector.getConnection();


		String sql = "SELECT * FROM user_info where user_id = ?, user_name = ? ";

		try {
				PreparedStatement ps = connection.prepareStatement(sql);
				ResultSet resultSet = ps.executeQuery();

				if(resultSet.next()) {
						payDTO.setUserId(resultSet.getString("user_id"));
						payDTO.setUserName(resultSet.getString("user_name"));
						payDTO.setAddress(resultSet.getString("address"));
						payDTO.setTel(resultSet.getString("tel"));
						payDTO.setItemName(resultSet.getString("item_name"));
						payDTO.setItemId(resultSet.getInt("item_id"));
						payDTO.setItemPrice(resultSet.getInt("item_price"));
						payDTO.setItemCount(resultSet.getInt("item_count"));
						payDTO.setPayment(resultSet.getString("payment"));
						payDTO.setTransport(resultSet.getString("transport"));
				}

		} catch(Exception e){

			e.printStackTrace();

		}
			return payDTO;
	}


	}

