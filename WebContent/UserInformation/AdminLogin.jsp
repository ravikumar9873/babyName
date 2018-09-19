<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
</head>
<script>
	function validateForm() {
		if (document.forms["myForm"]["uname"].value == "") {
			alert("Username/Email can't be blank")
			document.forms["myForm"]["uname"].focus();
			return false;
		}
		if (document.forms["myForm"]["pwd"].value == "") {
			alert("Password can't be blank")
			document.forms["myForm"]["pwd"].focus();
			return false;
		}
	}
</script>
<body class="mt-8">

	<%
		String login_msg = (String) request.getAttribute("error");
		if (login_msg != null)
			out.println("<font color=red size=4px>" + login_msg + "</font>");
	%>
	<div class="m-auto text-center mt-5" style="width: 325px">

		<form action="Login" name="myForm" method="post"
			class="mt-5 border px-4 py-5" onsubmit="return validateForm()">
			<h3>Admin Login</h3>
			<table class="w-100">
				<tbody>
					<tr>
						<td><input type="text" placeholder="Username/email"
							name="uname" class="form-control mt-2" /></td>
					</tr>
					<tr></tr>

					<tr>
						<td><input type="password" placeholder="Password" name="pwd"
							class="form-control mt-2" /> <br>
					</tr>
					
				</tbody>


				<tr></tr>

			</table>
			<button type="submit" name="submit" class="btn btn-primary">Login</button>
			<a href="ForgotPassword.jsp">Forgot Password?</a><br> <br>
			
		</form>
	</div>
</body>
</html>