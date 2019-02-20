package com.ep;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import db.util.DbConnection;

public class DataDao {
	private Connection connection;

	public DataDao() throws Exception {
		connection = DbConnection.getConnections();
	}

	public ArrayList<String> getItems(String from) {
		ArrayList<String> list = new ArrayList<String>();
		Statement ps = null;
		String data;
		try {
			ps = connection.createStatement();
			String query = "SELECT * FROM files WHERE subkey LIKE '" + from + "%' ";
			System.out.println(query);

			// ps.setString(1, from + "%");
			ResultSet rs = ps.executeQuery(query);
			while (rs.next()) {
				data = rs.getString("subkey");
				list.add(data);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}
	

	
}
