package db.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {

	static Connection con;

	public static Connection getConnections() {

		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fast","root","root");
		

		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;

	}
}