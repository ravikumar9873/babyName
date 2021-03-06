<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
<link rel="stylesheet"	href="<%=request.getContextPath()%>/css/style.css"	crossorigin="anonymous">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script	src="<%=request.getContextPath()%>/js/validateForm.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<a class="navbar-brand logo-img" href="/MyWebProject/Index.jsp"><img src="<%=request.getContextPath() %>/images/Logo.png"></a>

</head>
<body>
<br><br>
 <div class="m-auto text-center mt-5" style="width: 425px">
	<form action="ForgotPassword" method="post" class="mt-5 border px-4 py-5">
	<h3><i class="fa fa-lock" style="font-size:100px"></i></i></h3>
		<h2>Forgot Password?</h2>
		<p class="text-center">We are here to help you.</p>
		<input type="text" placeholder="email address" name="emailAddress" id="emailAddress" class="form-control mt-2" />
		<div id="emailAddressErrorMsg" style="display:none"></div>
		<br>
		<button type="submit" name="forgotPwdSubmit" id="forgotPwdSubmit" class="btn btn-primary" onclick="forgotPasswordPageValidation()">Reset Password</button>
	</form> 
	
	
</form>
</body>
</html>