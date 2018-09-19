
<!DOCTYPE html>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>		
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
<jsp:include page="/resources/MenuBar.jsp"/> 
 <div id="carouselExampleIndicators" class="carousel slide mt50" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="<%=request.getContextPath() %>/images/baby1.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="<%=request.getContextPath() %>/images/baby2.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="<%=request.getContextPath() %>/images/baby3.jpg" alt="Third slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="<%=request.getContextPath() %>/images/baby4.jpg" alt="Forth slide">
    </div>
  </div>
  
</div>  
     

 <h2>Baby Names by Alphabets</h2>
  <ul class="pagination pagination">
    <li class="page-item"><a class="page-link" href="#">A</a></li>
    <li class="page-item"><a class="page-link" href="#">B</a></li>
    <li class="page-item"><a class="page-link" href="#">C</a></li>
    <li class="page-item"><a class="page-link" href="#">D</a></li>
    <li class="page-item"><a class="page-link" href="#">E</a></li>
    <li class="page-item"><a class="page-link" href="#">F</a></li>
    <li class="page-item"><a class="page-link" href="#">G</a></li>
    <li class="page-item"><a class="page-link" href="#">H</a></li>
    <li class="page-item"><a class="page-link" href="#">I</a></li>
    <li class="page-item"><a class="page-link" href="#">J</a></li>
    <li class="page-item"><a class="page-link" href="#">K</a></li>
    <li class="page-item"><a class="page-link" href="#">L</a></li>
    <li class="page-item"><a class="page-link" href="#">M</a></li>
    <li class="page-item"><a class="page-link" href="#">N</a></li>
    <li class="page-item"><a class="page-link" href="#">O</a></li>
    <li class="page-item"><a class="page-link" href="#">Q</a></li>
    <li class="page-item"><a class="page-link" href="#">R</a></li>
    <li class="page-item"><a class="page-link" href="#">S</a></li>
    <li class="page-item"><a class="page-link" href="#">T</a></li>
    <li class="page-item"><a class="page-link" href="#">U</a></li>
    <li class="page-item"><a class="page-link" href="#">V</a></li>
    <li class="page-item"><a class="page-link" href="#">W</a></li>
    <li class="page-item"><a class="page-link" href="#">X</a></li>
    <li class="page-item"><a class="page-link" href="#">Y</a></li>
    <li class="page-item"><a class="page-link" href="#">Z</a></li>
  </ul>

     <h2>Baby Names by Category</h2> 
      
  <div class="box">
  <a href="<%=request.getContextPath() %>/ViewBabyNameByReligion/hindu.jsp">
  <img src="<%=request.getContextPath() %>/images/hindu.jpg"/>
  </a>
  <h3>Hindu Names</h3>
  </div>
  <div class="box">
  <a href="<%=request.getContextPath() %>/ViewBabyNameByReligion/muslim.jsp">
  <img src="<%=request.getContextPath() %>/images/muslim.jpg"/>
  </a>
  <h3>Muslim Names</h3>
  </div>
  <div class="box">
  <a href="<%=request.getContextPath() %>/ViewBabyNameByReligion/christian.jsp">
  <img src="<%=request.getContextPath() %>/images/christian.jpg"/>
  </a>
  <h3>Christian Names</h3>
  </div>
  <div class="box">
  <a href="<%=request.getContextPath() %>/ViewBabyNameByReligion/sikh.jsp">
  <img src="<%=request.getContextPath() %>/images/sikh.jpg"/>
  </a>
  <h3>Sikh Names</h3>
  </div>
  
  </div>
      
      
          
    </body>
</html>