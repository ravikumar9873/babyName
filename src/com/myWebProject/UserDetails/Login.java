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
import javax.servlet.http.Cookie;
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
	 String name, message;
	 GetterSetter getter;
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("username");
		String password = request.getParameter("pwd");
		email=username;
		
		
		
		try {
			message = service.validateLogin(username, password);
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		response.getWriter().write(message);
		if(message.equals("SUCCESS")) {
			try {
				name = service.getName(username);
			} catch (SQLException e) {
				e.printStackTrace();
			}			
		HttpSession session  = request.getSession();
        session.setAttribute("username", getter.getUserName());
        session.setAttribute("name", name);
		}
	
}
	
	public void init(ServletConfig config)throws ServletException{
        service = new UserAuthenticationService();
    }


}
