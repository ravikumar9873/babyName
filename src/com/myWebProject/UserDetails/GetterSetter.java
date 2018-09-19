package com.myWebProject.UserDetails;

public class GetterSetter {
	private static String username;
	private static String name;
	private static String email;
	private static String phoneNumber;
	private static String password;
	
	
	
	public void setUserName(String username) {
		this.username = username;
	}	
	public static String getUserName() {
		return username;
	}
	
	public void setName(String name) {
		this.name = name;
	}	
	public static String getName() {
		return name;
	}
	
	
	public void setEmail(String email) {
		this.email=email;
	}
	public static String getEmail() {
		return email;
	}
	
	
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber=phoneNumber;
	}
	public static String getPhoneNumber() {
		return phoneNumber;
	}
	
	
	public void setPass(String password) {
		this.password=password;
	}
	public static String getPass() {
		return password;
	}
	
	
}
