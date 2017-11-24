package com.localhost.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.localhost.ecsite.util.DBConnector;
import com.localhost.ecsite.util.DateUtil;

public class UserCreateConfirmDAO {

	private DateUtil dateUtil = new DateUtil();

	private String sql = "INSERT INTO user_info (user_id, password, user_name, tel, gender, email, address, insert_date ) VALUES(?, ? ,?, ?, ?, ?, ?, ?)";

	public void UserCreate(String userId, String password, String userName, String tel, int gender, String email, String address ) throws SQLException {

		 DBConnector dbConnector = new DBConnector();

		 Connection connection = dbConnector.getConnection();

		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, userId);
			ps.setString(2, password);
			ps.setString(3, userName);
			ps.setString(4, tel);
			ps.setInt(5, gender);
			ps.setString(6, email);
			ps.setString(7, address);
			ps.setString(8, dateUtil.getDate());


			ps.execute();

		} catch(Exception e) {
			e.printStackTrace();

		} finally {
			connection.close();
		}
	}

}