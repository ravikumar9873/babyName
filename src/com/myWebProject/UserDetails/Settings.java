package com.myWebProject.UserDetails;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.myWebProject.db.DBConnection;

/**
 * Servlet implementation class Settings
 */
@WebServlet("/UserInformation/Settings")
public class Settings extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con;
	String query,message,password,username,currentPwd,newPwd;
	UserAuthenticationService service;
	HttpSession session;
	GetterSetter getterSetter;
	HashMap<String, String> hashmap;

   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("username");	
		if(request.getParameter("newPwd")!=null) {
	        String username = (String) request.getSession(false).getAttribute("username");  
			String currentPwd = request.getParameter("currentPwd");
			String newPwd = request.getParameter("newPwd");
			try {
				this.updatePassword(username, currentPwd, newPwd);
				response.getWriter().write(message);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		else {
		Gson gson = new Gson(); 
        JsonObject myObj = new JsonObject();		
		try {
			hashmap=service.getUserDetailsFromDB(userName);
			JsonElement userDetailsObj =gson.toJsonTree(hashmap);
			myObj.add("getterSetter", userDetailsObj);
			response.getWriter().write(myObj.toString());
		} catch (SQLException e1) {
			e1.printStackTrace();
		}	
		}
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("username");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");

		
		con = DBConnection.connectDB();			
		query = "Update UserDetails set "+ "name="+"'"+name+"'"+","+"email="+"'"+email+"'"+","+"phone="+"'"+phone+ "'"+"where username="+"'"+userName+"'";
		try {
			DBConnection.insertQueryToDB(con, query);
			message="SUCCESS";
		} catch (SQLException e) {
			message="FAILURE";
			e.printStackTrace();
		}
		if(message.equals("SUCCESS")) {			
			response.getWriter().write(message);
		}
	}
	public void init(ServletConfig config)throws ServletException{
        service = new UserAuthenticationService();
    }
	
	public String updatePassword(String username, String currentPwd, String newPwd) throws SQLException {
		this.username=username;
		this.currentPwd=currentPwd;
		this.newPwd=newPwd;
        
		con = DBConnection.connectDB();
		query = "Select password from UserDetails where username=" +"'"+username +"'" +"and password=" +"'" +currentPwd +"'";
		ResultSet rs = DBConnection.getDBResultSet(con, query);
		if(rs.next()) {
			String currentDBPwd = rs.getString(1);
			if(currentDBPwd==currentPwd) {
				message="FAILURE";
			}else {
				String updatequery ="Update UserDetails set password="+"'"+newPwd+"'"+ " where  username="+"'"+username+"'";
				DBConnection.insertQueryToDB(con, updatequery);
				message="SUCCESS";
			}
		}else {
			message="FAILURE";
		}
		return message;
	}
}
