package com.myWebProject.UserDetails;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myWebProject.db.DBConnection;

/**
 * Servlet implementation class ResetPassword
 */
@WebServlet("/UserInformation/ResetPassword")
public class ResetPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Cookie cookie;
	String cookieName,cookieVal,query;
	Connection con;
	public ResetPassword() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pass  =request.getParameter("resetPassword");
		Cookie[] cks = request.getCookies();
		for(int i=0;i<cks.length;i++) {
			cookie = cks[i];
			cookieName = cookie.getName();
			if(cookieName.equals("emailAddress")) {
				cookieVal = cookie.getValue();
			}
			
		}
		con = DBConnection.connectDB();
		query  ="Update UserDetails set password= "+"'"+pass+"'"+" where email="+"'"+cookieVal+"'";
		try {
			DBConnection.insertQueryToDB(con, query);
			RequestDispatcher rd = request.getRequestDispatcher("/UserInformation/password_reset_complete.jsp");
			rd.forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
