<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
</head>
<body>
<div class="m-auto text-center mt-5" style="width: 325px">
	<form action="login" method="post" class="mt-5 border px-4 py-5">
		<h3>Forgot Password</h3>
		<p>You can reset your password here.</p>
		<input type="text" placeholder="email address" name="emailAddress" class="form-control mt-2" /><br>
		<br>
		<button type="submit" name="submit" class="btn btn-primary">Reset Password</button>


	</form>
</body>
</html>