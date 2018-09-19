<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ include file="/resources/MenuBar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ContactUS Page</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
<script	src="<%=request.getContextPath() %>/js/jquery-3.3.1.min.js"></script>
<script	src="<%=request.getContextPath() %>/js/jquery-migrate-1.4.1.min.js"></script>
<script	src="<%=request.getContextPath() %>/js/jquery-ui-1.10.3.custom.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.js"></script>
<script src="<%=request.getContextPath() %>/js/cancelForm.js"></script>
<script	src="<%=request.getContextPath() %>/js/validateForm.js"></script>
</head>

<body class="mt-10">
<img src="<%=request.getContextPath() %>/images/contact.jpg" alt="contact" width="100%" height="200" />
	<div class="m-auto text-center mt-5" style="width: 425px">

		<form action="ContactUS" name="cmyForm" id="cmyForm" method="post" class="mt-5 border px-4 py-5" style="display:block">
			<h3>Contact US</h3>
			<table class="w-100">
				<tbody>
					<tr>
						<td><input type="text" placeholder="name" name="cname" id="cname" class="form-control mt-2" /> 
						<span id="cnameErrorMsg"	class="text-danger" ></span>

					</tr>
					<tr></tr>
					<tr>
						<td><input type="email" placeholder="email" name="cemail" id="cemail"
							class="form-control mt-2" /> <span id="cemailErrorMsg"
							class="text-danger"></span>

					</tr>
					<tr></tr>
					<tr>
						<td><input type="tel" placeholder="mobile number"
							name="cmobile" id="cmobile" class="form-control mt-2" /> <span
							id="cmobileErrorMsg" class="text-danger"></span>

					</tr>
					<tr></tr>
					<tr>
						<td><textarea rows="4" cols="50" placeholder="Describe yourself here..." class="form-control mt-3" name="cmessage"  id="cmessage"></textarea>		
						<span id="cmsgErrorMsg" class="text-danger"></span>
					</tr>
				</tbody>
				<tr></tr>
			</table>
			<button type="submit" name="submit" class="btn btn-primary" id="contactFormSubmit" onclick="validateContactUSForm()">Submit</button>
			<button type="reset" name="cancel" class="btn btn-primary" onclick="cancelForm()">Cancel</button>
			<div id="cmessageDiv" style="display:none;">
			<div class="alert alert-success" role="alert">
  			<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  			<strong>Success!</strong> Thank you. We will contact you soon!</div>
</div>
		</form>
		
		</div>
</body>
</html>
