package com.myWebProject.UserDetails;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.myWebProject.db.DBConnection;

public class UserAuthenticationService {
	String name,email,phone,password;
	HashMap<String, String> hashmap;;
	GetterSetter getterSetter;
	public String  validateEmail(String email) throws SQLException {
		Connection con = null;
        String message = null;
        String query;
        try {
        	con = DBConnection.connectDB();
        	query ="SELECT TOP 1 * FROM UserDetails WHERE email="+"'"+email+"'";
        	ResultSet rs =DBConnection.getDBResultSet(con, query);
        	if(rs.next()){
                message = "SUCCESS";
            }else{
                message = "FAILURE";
            }
        }catch(Exception e) {
        	message = "FAILURE";
            e.printStackTrace();
        }finally {
        	DBConnection.closeDBConnection(con);
        }
        return message;
	}
	
	public String  validateUserName(String userName) throws SQLException {
		Connection con = null;
        String message = null;
        String query;
        try {
        	con = DBConnection.connectDB();
        	query ="SELECT TOP 1 * FROM UserDetails WHERE username="+"'"+userName+"'";
        	ResultSet rs =DBConnection.getDBResultSet(con, query);
        	if(rs.next()){
                message = "SUCCESS";
            }else{
                message = "FAILURE";
            }
        }catch(Exception e) {
        	message = "FAILURE";
            e.printStackTrace();
        }finally {
        	DBConnection.closeDBConnection(con);
        }
        return message;
	}
	
	public String validateLogin(String username, String pwd) {
		Connection con = null;
        String message = null;
        String query;
        try {
        	con = DBConnection.connectDB();
        	query ="SELECT * FROM USERDETAILS WHERE (EMAIL="+"'"+username+"'"+ " OR  USERNAME="+"'"+username+"'"+" ) AND PASSWORD="+"'"+pwd+"'";
        	ResultSet rs =DBConnection.getDBResultSet(con, query);
        	if(rs.next()){
                message = "SUCCESS";
            }else{
                message = "FAILURE";
            }
        }catch(Exception e) {
        	message = "FAILURE";
            e.printStackTrace();
        }
        return message;
	}
		
	public HashMap<String, String> getUserDetailsFromDB(String username) throws SQLException {
		Connection con = null;
        String message = null;
        String query;
        try {
        	hashmap= new HashMap<>();
        	con = DBConnection.connectDB();
        	query ="SELECT TOP 1 * FROM USERDETAILS WHERE (EMAIL="+"'"+username+"'"+ " OR  USERNAME="+"'"+username+"'"+" )";
        	ResultSet rs =DBConnection.getDBResultSet(con, query);
        	while(rs.next()){
        		getterSetter = new GetterSetter();
        		getterSetter.setName(rs.getString(1)); 
        		getterSetter.setEmail(rs.getString(2));
        		getterSetter.setPhoneNumber(rs.getString(3));
        		getterSetter.setPass(rs.getString(4));
        		getterSetter.setUserName(rs.getString(5));
        		
        		hashmap.put("username", getterSetter.getUserName());
        		hashmap.put("name", getterSetter.getName());
        		hashmap.put("email", getterSetter.getEmail());
        		hashmap.put("phone", getterSetter.getPhoneNumber());
        		
            }
        	
        }catch(Exception e) {
            e.printStackTrace();
        }finally {
        	DBConnection.closeDBConnection(con);
        }
        
        return hashmap;
	}	
	

}
