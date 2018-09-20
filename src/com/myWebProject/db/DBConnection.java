package com.myWebProject.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnection {
	public static Connection con = null;
	public static Connection connectDB() {
		
		PreparedStatement ps;
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");			
			con=DriverManager.getConnection("jdbc:sqlserver://127.0.0.1:1433;databaseName=MyWebProject;integratedSecurity=true");
		}catch(Exception e) {
			e.printStackTrace();
		}
		return con;
	}

	public static ResultSet getDBResultSet(Connection con, String query) throws SQLException {
		ResultSet rs = null;
		if (null != con) {
			PreparedStatement st = con.prepareStatement(query);
			rs = st.executeQuery();
		}
		return rs;
	}
	
	public static void insertQueryToDB(Connection con, String query) throws SQLException {
		if (null != con) {
			Statement st = con.createStatement();
			st.execute(query);
		} else {
			System.out.println("Query execution failed!");
		}
	}
	
	public static void closePreparedStatement(PreparedStatement ps)	throws SQLException {
		if (null != ps) {
			ps.close();
		}
	}
	
	public static void closeResultSet(ResultSet rs) throws SQLException {
		if (null != rs) {
			rs.close();
		}
	}
	
	public static void closeDBConnection(Connection conn) throws SQLException {
		if (null != conn) {
			conn.close();
		}
	}
}
