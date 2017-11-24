package com.localhost.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.localhost.ecsite.dto.ComfirmDTO;
import com.localhost.ecsite.util.DBConnector;

public class ComfirmDAO  {


	private ComfirmDTO comfirmDTO = new ComfirmDTO();

	/**
	 * getBuyItemInfo()は仮
	 *
	 *resultSet.getString/Int()内はsql文と統一
	 * @return
	 */
	public ComfirmDTO getComfirmInfo() {

		 DBConnector dbConnector = new DBConnector();

		 Connection connection = dbConnector.getConnection();

		String sql = "INSERT user_name FROM login_user_transaction where login_id = ?";

		try {
				PreparedStatement ps = connection.prepareStatement(sql);
				ResultSet rs = ps.executeQuery();

				if(rs.next()) {
						;
				}
		} catch(Exception e){

			e.printStackTrace();

		}
			return comfirmDTO;
	}


	}

