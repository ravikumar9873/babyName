
<!DOCTYPE html>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</head>
<body>
	<!-- <div>
		<div class="text-right">
		
		<a class="navbar-brand logo-img" href="/MyWebProject/Index.jsp">Logo</a> 
			<a href="/MyWebProject/UserInformation/Login.jsp">Sign In</a> 
				<span class="devider">|</span> 
				<a href="/MyWebProject/UserInformation/RegisterUser.jsp">Register</a>
		</div>
		
</div> -->
		<div>
		  <div class="text-right"> 
		  <a class="navbar-brand logo-img" href="/MyWebProject/Index.jsp">Logo</a> 
			 <div class="dropdown welcome-dd">
			<a href="#"	class="nav-link dropdown-toggle text-right" data-toggle="dropdown">Welcome</a> 
			<ul class="dropdown-menu dropdown-menu-right">
			 <li class="dropdown text-right">
					<li><a class="dropdown-item" href="/MyWebProject/UserInformation/Login.jsp">Sign In</a></li>
					<li><a class="dropdown-item" href="/MyWebProject/UserInformation/RegisterUser.jsp">Register</a></li>

					
				</ul>
				</div>
		</div>
	</div>
  

</body>
</html>
