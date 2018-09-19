package com.myWebProject.UserDetails;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
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
 * Servlet implementation class Registration
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/UseInformation/RegisterUser" })
public class Registration extends HttpServlet {
	boolean userStatus,emailStatus;
	String emailValue,resultData,success,fail;
	PreparedStatement ps = null;
	Statement pst;
	PrintWriter out ;
	UserAuthenticationService service;
	Connection con;
	String emailMessage,userMessage,registeredMessage;
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		response.setContentType("text/html");
		String userName = request.getParameter("username");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("mobile");
		String password = request.getParameter("pwd");
		String confirmPassword = request.getParameter("cpwd");
		
		
		if(!userStatus) 
		{
			if(request.getParameter("username").equals(userName)) 
			{
				try 
				{
					userMessage = service.validateUserName(userName);
				} catch (SQLException e) 
				{
					e.printStackTrace();
				}				
				response.getWriter().write(userMessage);
				if(userMessage.equals("SUCCESS")) {
					userStatus=false;
				}else {
					userStatus=true;
				}
				
			}		
		}
		else if(!emailStatus) 
		{
			 if(request.getParameter("email").equals(email)) 
			 {
				try 
				{
					emailMessage=service.validateEmail(email);
				}			
					catch (SQLException e) 
					{
						e.printStackTrace();
					}
					response.getWriter().write(emailMessage);
					if(emailMessage.equals("SUCCESS")) {
						emailStatus=false;
					}else {
						emailStatus=true;
					}
			}
		}
		else{	
		if((userMessage.equals("FAILURE") && emailMessage.equals("FAILURE")) && (!password.equals("null") || !password.equals("")) ) {
			String sql = "insert into UserDetails values('" + name + "','" + email + "','" + phone + "','"
					+ password + "' ,'" + userName + "')";
				try {	
					con = DBConnection.connectDB();
					DBConnection.insertQueryToDB(con, sql);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}			
				if(userMessage.equals("FAILURE") && emailMessage.equals("FAILURE")) {
					registeredMessage="FAILURE";
					response.getWriter().write(registeredMessage);
				}
			}			
		}		
	}
	
	
	public void init(ServletConfig config)throws ServletException{
        service = new UserAuthenticationService();
    }
}
	
   