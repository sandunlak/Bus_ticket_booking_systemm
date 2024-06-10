package com;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	private static String url ="jdbc:mysql://localhost:3306/spareparts?useSSL=false";
	private static String user ="root";
	private static String pass = "cargasnight";
	private static Connection con;

	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, user, pass);
			
		}catch(Exception e){
			System.out.println("Database connection is not success!");
		}
		return con;
	}
}
