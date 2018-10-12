<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
<script	src="<%=request.getContextPath() %>/js/jquery-3.3.1.min.js"></script>
<script	src="<%=request.getContextPath() %>/js/jquery-migrate-1.4.1.min.js"></script>
<script	src="<%=request.getContextPath() %>/js/jquery-ui-1.10.3.custom.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.js"></script>
<script src="<%=request.getContextPath() %>/js/cancelForm.js"></script>
<script	src="<%=request.getContextPath() %>/js/validateForm.js"></script>
 <a class="navbar-brand logo-img" href="/MyWebProject/Index.jsp"><img src="<%=request.getContextPath() %>/images/Logo.png"></a>
</head>

<body class="mt-10">
	<div  class="m-auto text-center mt-5" style="margin: 10px 0 0 10px; width: 400px">
		<form action="Registration" method="post" id="myForm" class="mt-5 border px-4 py-5" style="padding: 10px;" > <!-- onsubmit="return validateForm() "-->
			<h3>Member Signup</h3>
			<table class="w-100">
				<tbody>
					<tr>
						<td><input type="text" placeholder="create username" name="username" id="username" class="form-control mt-2" onblur="userNameValidation()"/> 
						<span id="usernameErrorMsg" class="text-danger"></span></td>
					</tr>
					<tr></tr>
					<tr>
						<td><input type="text" placeholder="name" name="name" id="name"class="form-control mt-2" /> <span id="nameErrorMsg"
							class="text-danger"></span></td>
					</tr>
					<tr></tr>
					<tr>
						<td><input type="email" placeholder="email" name="email" id="email"
							class="form-control mt-2" onblur="emailValidation()"/> <span id="invalidEmailMsg" class="text-danger" /></span></td>
					</tr>
					<tr></tr>
					<tr>
						<td><input type="tel" placeholder="mobile number"
							name="mobile" id="mobile" class="form-control mt-2" /> <span
							id="mobileErrorMsg" class="text-danger"></span></td>
					</tr>
					<tr></tr>
					<tr>
						<td><input type="password" placeholder="password" name="pwd" id="pwd"
							class="form-control mt-2" /> <span id="pwdErrorMsg"
							class="text-danger"></span></td>
					</tr>
					<tr></tr>
					<tr>
						<td><input type="password" placeholder="confirm password"
							name="cpwd" id="cpwd" class="form-control mb-2" /> <span id="cpwdErrorMsg"
							class="text-danger"></span></td>
					</tr>
					<tr></tr>
					<%-- <img id="loading" style="display:none;" src="<%=request.getContextPath() %>/images/loader.gif" /> --%>
				</tbody>
				<tr></tr>

			</table>
			<button type="submit" name="submit" class="btn btn-primary" id="formSubmit" onclick="formValidationAndSubmit()">Register</button>
			<button type="reset" name="cancel" id="cancel" class="btn btn-primary" onclick="cancelForm()">Cancel</button>
			<br /> Already Registered? <a href="Login.jsp" class="mb-2">Signin</a><br>
			<div id="messageDiv" style="display:none;"></div>
		</form>
	</div>
	</body>
	</html>
