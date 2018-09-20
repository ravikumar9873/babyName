<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"	href="<%=request.getContextPath()%>/css/style.css"	crossorigin="anonymous">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script>
	$(document).ready(function() {

		$(".dropdown").hover(function() {
			$('.dropdown-menu', this).stop(true, true).fadeIn("fast");
			$(this).toggleClass('open');
			$('b', this).toggleClass("caret caret-up");
		}, function() {
			$('.dropdown-menu', this).stop(true, true).fadeOut("fast");
			$(this).toggleClass('open');
			$('b', this).toggleClass("caret caret-up");
		});

	});
</script>
</head>
<body>


	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", 0);
		if (session.getAttribute("name") == null) {
	%>
	<jsp:include page="/resources/UnAuthHeader.jsp"></jsp:include>
	<%
		} else {
	%>

	<jsp:include page="/resources/AuthHeader.jsp"></jsp:include>
	
	<%
		}
	%>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">


		<!-- <a class="navbar-brand" href="/MyWebProject/Index.jsp">Logo</a> -->

		<!-- Links -->
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link"
				href="/MyWebProject/Index.jsp">Home</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown">Baby Name</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#">Hinduism Baby Name</a> <a
						class="dropdown-item" href="#">Islam Baby Name</a> <a
						class="dropdown-item" href="#">Christianity Baby Name</a> <a
						class="dropdown-item" href="#">Sikhism Baby Name</a> <a
						class="dropdown-item" href="#">Buddhism Baby Name</a> <a
						class="dropdown-item" href="#">Jainism Baby Name</a> <a
						class="dropdown-item" href="#">Zoroastrianism Baby Name</a>
				</div></li>
			<li class="nav-item"><a class="nav-link"
				href="/MyWebProject/resources/Tips.jsp">Tips</a></li>
			<li class="nav-item"><a class="nav-link"
				href="/MyWebProject/resources/Food.jsp">Food</a></li>
			<li class="nav-item"><a class="nav-link"
				href="/MyWebProject/resources/Product.jsp">Product</a></li>
			<!-- Dropdown -->
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown"> Forum </a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#">Forum 1</a> <a
						class="dropdown-item" href="#">Forum 2</a> <a
						class="dropdown-item" href="#">Forum 3</a>
				</div></li>
			<li class="nav-item"><a class="nav-link"
				href="/MyWebProject/UserInformation/Contact.jsp">Contact</a></li>
		</ul>
	</nav>
	<br>


</body>
</html>
