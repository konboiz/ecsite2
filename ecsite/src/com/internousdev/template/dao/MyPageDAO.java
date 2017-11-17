package com.internousdev.template.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.template.dto.MyPageDTO;
import com.internousdev.template.util.DBConnector;

public class MyPageDAO {

//	//mysqlのデーターベース名newecsite,テーブル名product_infoから値を持ってきましょう。
//	//この2行は必須。
	private DBConnector dbConnector = new DBConnector();
    private Connection connection = dbConnector.getConnection();

    public ArrayList<MyPageDTO> getKAO(String hiddinid) throws SQLException {
    	ArrayList<MyPageDTO> itemDTO = new ArrayList<MyPageDTO>();


		String sql = "SELECT * FROM item_info where item_id = ?";

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			String item_id = hiddinid;
			preparedStatement.setString(1, item_id);


			ResultSet resultSet = preparedStatement.executeQuery();

			while(resultSet.next()) {
				MyPageDTO dto = new MyPageDTO();

				dto.setItemId(resultSet.getInt("item_id"));
				dto.setItemName(resultSet.getString("item_name"));
				dto.setItem_description(resultSet.getString("item_description"));
				dto.setCategory_id(resultSet.getInt("category_id"));
				dto.setPrice(resultSet.getInt("price"));
				dto.setImage_file_path(resultSet.getString("image_file_path"));
				dto.setImage_file_name(resultSet.getString("image_file_name"));
				dto.setRelease_data(resultSet.getInt("release_data"));
				dto.setRelease_company(resultSet.getString("release_company"));
				System.out.println(resultSet.getString("product_id"));
		itemDTO.add(dto);
			}

		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			connection.close();
		}

		return itemDTO;
	}


    }