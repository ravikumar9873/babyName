<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
<link rel="stylesheet"	href="<%=request.getContextPath()%>/css/style.css"	crossorigin="anonymous">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script	src="<%=request.getContextPath()%>/js/validateForm.js"></script>
<script	src="<%=request.getContextPath()%>/css/style.css"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<a class="navbar-brand logo-img" href="/MyWebProject/Index.jsp"><img src="<%=request.getContextPath() %>/images/Logo.png"></a>
<meta charset="ISO-8859-1">
<title>Password Reset</title>
</head>
<body>
<div class="container">
<br><br><br><br>
<h2>Check your email</h2>
<p>We've sent an email to your registered email. Click the link in the email to reset your password.</p>
<div class="Section-footer">
        <a href="<%=request.getContextPath()%>/UserInformation/ForgotPassword.jsp">
          I didn't receive the email
        </a>
   </div> 
</div>
</body>
</html>