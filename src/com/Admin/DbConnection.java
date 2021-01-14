package com.Admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DbConnection {
	private static final String DRIVER="oracle.jdbc.driver.OracleDriver";
	private static final String URL="jdbc:oracle:thin:@localhost:1521:XE";
	private static final String USERNAME="aditya";
	private static final String PASSWORD="aditya";
	
	
	public static Connection getConnection(){
		Connection con=null;
		
		try {
			Class.forName(DRIVER);
            con=DriverManager.getConnection(URL, USERNAME, PASSWORD);
		   System.out.println("connection established"+con);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				System.out.println(e);
			}catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e);
		}
		  return con;
		
	}
	
	
	public static void closeStatement(PreparedStatement pst){
		
		if(pst!=null){
			
			try {
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println(e);
			}
		}
	}
	public static void closeConnection(Connection con){
		
		if(con!=null){
			
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println(e);
			}
		}
	}
}
