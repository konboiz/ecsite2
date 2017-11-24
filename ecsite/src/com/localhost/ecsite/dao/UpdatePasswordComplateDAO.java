package com.localhost.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.localhost.ecsite.util.DBConnector;

public class UpdatePasswordComplateDAO {


	private String sql = "UPDATE user_info SET password  = ? WHERE user_id  =?";

	public void createPassword(String password, String user_id) throws SQLException {

		 DBConnector dbConnector = new DBConnector();

		 Connection connection = dbConnector.getConnection();

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, password);
			preparedStatement.setString(2, user_id);

			preparedStatement.execute();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			connection.close();
		}
	}

}