package com.myWebProject.UserDetails;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.Properties;

import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myWebProject.db.DBConnection;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
/**
 * Servlet implementation class ForgotPassword
 */
@WebServlet("/UserInformation/ForgotPassword")
public class ForgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection  con;
	String query,message;
	ResultSet rs;
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter write = response.getWriter();
		String email=request.getParameter("emailAddress");
		
		con=DBConnection.connectDB();
		query="Select * from UserDetails where email="+"'"+email+"'";
		try {
			rs=DBConnection.getDBResultSet(con, query);
			if(rs.next()) {
				/*message="SUCCESS";*/
				Cookie ck = new Cookie("emailAddress", email);
				response.addCookie(ck);
				String host = "smtp.gmail.com";
				String user="babyname9873@gmail.com";
				String pass = "ravi@9873";
				String to = email;
				String from = "babyname9873@gmail.com";
				String subject = "Password Reset Request";
				StringBuilder messageText = new StringBuilder();
				messageText.append("<h2>").append("Reset your password?").append("</h2>").append("<br>If you requested a password reset, click the button below. If you didn't make this request, ignore this email.")
				.append("<br>")
				.append("<a href=\"http://localhost:8080/MyWebProject/UserInformation/ResetPassword.jsp\" style=\"text-decoration:none;border-style:none;border:0;padding:0;margin:0;font-size:12px;font-family:'HelveticaNeue','Helvetica Neue',Helvetica,Arial,sans-serif;color: black;background: 1px solid #1da1f2;text-decoration:none;border-radius:4px;padding:8px 17px;border:1px solid #1da1f2;display:inline-block;font-weight:bold\" target=\"_blank\">\r\n" + 
						" <strong><span class=\"il\">Reset</span> <span class=\"il\">password</span></strong>\r\n" + 
						" </a>");
				boolean sessionDebug = false;				
				Properties props = System.getProperties();
				props.put("mail.smtp.starttls.enable", "true");
				props.put("mail.smtp.host", host);
				props.put("mail.smtp.port", "587");
				props.put("mail.smtp.auth", "true"); 
				props.put("mail.smtp.starttls.required", "true");
				props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
				
				//Need to enable https://myaccount.google.com/lesssecureapps to send email
						                 
				Session mailSession = Session.getDefaultInstance(props, null);
				mailSession.setDebug(sessionDebug);
				Message msg = new MimeMessage(mailSession);
				msg.setFrom(new InternetAddress(from));
				InternetAddress[] address = {new InternetAddress(to)};
				msg.setRecipients(Message.RecipientType.TO, address);
				msg.setSubject(subject);
				msg.setSentDate(new Date());
				msg.setContent(messageText.toString(), "text/html");
				/*msg.setText(messageText.toString(),"text/html");*/
				
				Transport transport = mailSession.getTransport("smtp");
				transport.connect(host, user, pass);
				transport.sendMessage(msg, msg.getAllRecipients());
				transport.close();
				System.out.println("Message sent successfully");
				message="SUCCESS";
			}else {
				message="FAILURE";
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (AddressException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.getWriter().write(message);
	}

}
