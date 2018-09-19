package com.myWebProject.UserDetails;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	 String dbUsername, dbPassword,dbemail, email;
	 PreparedStatement pst;
	 boolean login = false;
	 UserAuthenticationService service;
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		String userName = request.getParameter("username");
		String password = request.getParameter("pwd");
		email=userName;
		
		
		String message = service.validateLogin(userName, password);
		response.getWriter().write(message);
		HttpSession session  = request.getSession();
        session.setAttribute("username", userName);

		/*if(message.equals("SUCCESS")) {			
			try {
				service.getUserDetailsFromDB(userName);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		HttpSession session  = request.getSession();		
		session.setAttribute("username", GetterSetter.getUserName());		
		session.setAttribute("name", GetterSetter.getName());
		session.setAttribute("email", GetterSetter.getEmail());
		session.setAttribute("phone", GetterSetter.getPhoneNumber());
		System.out.println(GetterSetter.getUserName()+ " " + GetterSetter.getName()+ " " + GetterSetter.getEmail()+ " " +  GetterSetter.getPhoneNumber());
		}
		response.getWriter().write(message);*/
}
	
	public void init(ServletConfig config)throws ServletException{
        service = new UserAuthenticationService();
    }


}
