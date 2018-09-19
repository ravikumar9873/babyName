package com.myWebProject.UserDetails;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.myWebProject.db.DBConnection;

/**
 * Servlet implementation class ContactUS
 */
@WebServlet(urlPatterns = { "/Contact" })
public class ContactUS extends HttpServlet {
	Connection con;
	String registeredMessage;
	UserAuthenticationService service;
       
  

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		response.setContentType("text/html");
		String cname = request.getParameter("custname");
		String cemail = request.getParameter("custemail");
		String cmobile = request.getParameter("custmobile");
		String cmessage = request.getParameter("custmsg");
		
		String sql = "insert into ContactUS values('" + cname + "','" + cemail + "','" + cmobile + "','"
				+ cmessage + "')";
			try {	
				con = DBConnection.connectDB();
				DBConnection.insertQueryToDB(con, sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}			
			
				registeredMessage="SUCCESS";
				response.getWriter().write(registeredMessage);
			}
}
