package com.localhost.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.localhost.ecsite.dto.HistoryDTO;
import com.localhost.ecsite.util.DBConnector;

public class HistoryDAO {

	public ArrayList<HistoryDTO> getMyPageInfo(String user_id) throws SQLException {

		 DBConnector dbConnector = new DBConnector();

		 Connection connection = dbConnector.getConnection();

		ArrayList<HistoryDTO> historyDTO = new ArrayList<HistoryDTO>();
		String sql = "select * from buy_info where user_id = ? ";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, user_id);

			ResultSet resultSet = preparedStatement.executeQuery();

			while(resultSet.next()) {
				HistoryDTO dto = new HistoryDTO();

				dto.setItemName(resultSet.getString("item_name"));
				dto.setAmount(resultSet.getInt("amount"));
				dto.setCount(resultSet.getInt("count"));
				dto.setPayment(resultSet.getString("payment"));
				dto.setInsert_date(resultSet.getString("insert_date"));

				historyDTO.add(dto);
			}

		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			connection.close();
		}

		return historyDTO;
	}


	public int HistoryDelete(String item_id, String item_name) throws SQLException {

		 DBConnector dbConnector = new DBConnector();

		 Connection connection = dbConnector.getConnection();


		String sql = "DELETE FROM item_info where item_id  = ? AND item_name  = ?";

		PreparedStatement preparedStatement;
		int result =0;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, item_id);
			preparedStatement.setString(2, item_name);

			result = preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			connection.close();
		}

		return result;
	}
}

