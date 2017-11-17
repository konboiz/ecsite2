package com.internousdev.template.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.template.dto.HistoryDTO;
import com.internousdev.template.util.DBConnector;

public class HistoryDAO {
	private DBConnector dbConnector = new DBConnector();

	private Connection connection = dbConnector.getConnection();
	public ArrayList<HistoryDTO> getMyPageInfo(String item_id, String username) throws SQLException {
		ArrayList<HistoryDTO> historyDTO = new ArrayList<HistoryDTO>();
		String sql = "select*from mypage where id = ? and username = ?";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, item_id);
			preparedStatement.setString(2, username);

			ResultSet resultSet = preparedStatement.executeQuery();

			while(resultSet.next()) {
				HistoryDTO dto = new HistoryDTO();

				historyDTO.add(dto);
			}

		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			connection.close();
		}

		return historyDTO;
	}


	public int HistoryDelete(String id, String username) throws SQLException {

		String sql = "DELETE FROM buy_info where item_id  = ? AND item_name  = ?";

		PreparedStatement preparedStatement;
		int result =0;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, id);
			preparedStatement.setString(2, username);

			result = preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			connection.close();
		}

		return result;
	}
}

