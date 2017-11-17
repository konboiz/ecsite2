package com.internousdev.template.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.template.util.DBConnector;
import com.internousdev.template.util.DateUtil;

public class UserCreateDAO {

	private DBConnector dbConnector = new DBConnector();

	private Connection connection = dbConnector.getConnection();

	private DateUtil dateUtil = new DateUtil();

	private String sql = "INSERT INTO user_info (user_id, password, user_name, tel, gender, email, address ) VALUES(?, ? ,?, ?, ?, ?, ? )";

	public void UserCreate(String userId, String password, String userName, String tel, int gender, String email, String address ) throws SQLException {

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, userId);
			preparedStatement.setString(2, password);
			preparedStatement.setString(3, userName);
			preparedStatement.setString(4, tel);
			preparedStatement.setInt(5, gender);
			preparedStatement.setString(6, email);
			preparedStatement.setString(7, address);
			preparedStatement.setString(8, dateUtil.getDate());

			preparedStatement.execute();

		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			connection.close();
		}
	}
}
