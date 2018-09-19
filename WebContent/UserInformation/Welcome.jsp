<!DOCTYPE html>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
<jsp:include page="/resources/MenuBar.jsp"/> 


 <div id="carouselExampleIndicators" class="carousel slide mt50" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="<%=request.getContextPath() %>/images/baby1.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="<%=request.getContextPath() %>/images/baby2.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="<%=request.getContextPath() %>/images/baby4.jpg" alt="Third slide">
    </div>
  </div>
  
</div>  
        <h2>Baby Name by Alphabets</h2>  

</body>
</html>