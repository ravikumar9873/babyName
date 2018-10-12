
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
   <br> 

 <h2>Baby Names by Alphabets</h2>
 <div class="card-body">
								<a href="<%=request.getContextPath() %>/ViewBabyNameByReligion/hinduName/browse/boy/letters/A.jsp"
									class="btn btn-outline-primary mb-1">A</a> <a
									href="<%=request.getContextPath() %>/ViewBabyNameByReligion/hinduName/browse/boy/letters/B.jsp"
									class="btn btn-outline-primary mb-1">B</a> <a
									href="<%=request.getContextPath() %>/ViewBabyNameByReligion/hinduName/browse/boy/letters/C.jsp"
									class="btn btn-outline-primary mb-1">C</a> <a
									href="<%=request.getContextPath() %>/ViewBabyNameByReligion/hinduName/browse/boy/letters/D.jsp"
									class="btn btn-outline-primary mb-1">D</a> <a
									href="<%=request.getContextPath() %>/ViewBabyNameByReligion/hinduName/browse/boy/letters/E.jsp"
									class="btn btn-outline-primary mb-1">E</a> <a
									href="<%=request.getContextPath() %>/ViewBabyNameByReligion/hinduName/browse/boy/letters/F.jsp"
									class="btn btn-outline-primary mb-1">F</a> <a
									href="<%=request.getContextPath() %>/ViewBabyNameByReligion/hinduName/browse/boy/letters/G.jsp"
									class="btn btn-outline-primary mb-1">G</a> <a
									href="<%=request.getContextPath() %>/ViewBabyNameByReligion/hinduName/browse/boy/letters/H.jsp"
									class="btn btn-outline-primary mb-1">H</a> <a
									href="<%=request.getContextPath() %>/ViewBabyNameByReligion/hinduName/browse/boy/letters/I.jsp"
									class="btn btn-outline-primary mb-1">I</a> <a
									href="<%=request.getContextPath() %>/ViewBabyNameByReligion/hinduName/browse/boy/letters/J.jsp"
									class="btn btn-outline-primary mb-1">J</a> <a
									href="<%=request.getContextPath() %>/ViewBabyNameByReligion/hinduName/browse/boy/letters/K.jsp"
									class="btn btn-outline-primary mb-1">K</a> <a
									href="<%=request.getContextPath() %>/ViewBabyNameByReligion/hinduName/browse/boy/letters/L.jsp"
									class="btn btn-outline-primary mb-1">L</a> <a
									href="<%=request.getContextPath() %>/ViewBabyNameByReligion/hinduName/browse/boy/letters/M.jsp"
									class="btn btn-outline-primary mb-1">M</a> <a
									href="<%=request.getContextPath() %>/ViewBabyNameByReligion/hinduName/browse/boy/letters/N.jsp"
									class="btn btn-outline-primary mb-1">N</a> <a
									href="<%=request.getContextPath() %>/ViewBabyNameByReligion/hinduName/browse/boy/letters/O.jsp"
									class="btn btn-outline-primary mb-1">O</a> <a
									href="<%=request.getContextPath() %>/ViewBabyNameByReligion/hinduName/browse/boy/letters/P.jsp"
									class="btn btn-outline-primary mb-1">P</a> <a
									href="<%=request.getContextPath() %>/ViewBabyNameByReligion/hinduName/browse/boy/letters/Q.jsp"
									class="btn btn-outline-primary mb-1">Q</a> <a
									href="<%=request.getContextPath() %>/ViewBabyNameByReligion/hinduName/browse/boy/letters/R.jsp"
									class="btn btn-outline-primary mb-1">R</a> <a
									href="<%=request.getContextPath() %>/ViewBabyNameByReligion/hinduName/browse/boy/letters/S.jsp"
									class="btn btn-outline-primary mb-1">S</a> <a
									href="<%=request.getContextPath() %>/ViewBabyNameByReligion/hinduName/browse/boy/letters/T.jsp"
									class="btn btn-outline-primary mb-1">T</a> <a
									href="<%=request.getContextPath() %>/ViewBabyNameByReligion/hinduName/browse/boy/letters/U.jsp"
									class="btn btn-outline-primary mb-1">U</a> <a
									href="<%=request.getContextPath() %>/ViewBabyNameByReligion/hinduName/browse/boy/letters/V.jsp"
									class="btn btn-outline-primary mb-1">V</a> <a
									href="<%=request.getContextPath() %>/ViewBabyNameByReligion/hinduName/browse/boy/letters/W.jsp"
									class="btn btn-outline-primary mb-1">W</a> <a
									href="<%=request.getContextPath() %>/ViewBabyNameByReligion/hinduName/browse/boy/letters/X.jsp"
									class="btn btn-outline-primary mb-1">X</a> <a
									href="<%=request.getContextPath() %>/ViewBabyNameByReligion/hinduName/browse/boy/letters/Y.jsp"
									class="btn btn-outline-primary mb-1">Y</a> <a
									href="<%=request.getContextPath() %>/ViewBabyNameByReligion/hinduName/browse/boy/letters/Z.jsp"
									class="btn btn-outline-primary mb-1">Z</a>
							</div>

     <h2>Baby Names by Category</h2> 
      
  <div class="box">
  <a href="<%=request.getContextPath() %>/ViewBabyNameByReligion/hinduName/hindu.jsp">
  <img src="<%=request.getContextPath() %>/images/hindu.jpg"/>
  </a>
  <h3>Hindu Names</h3>
  </div>
  <div class="box">
  <a href="<%=request.getContextPath() %>/ViewBabyNameByReligion/muslimName/muslim.jsp">
  <img src="<%=request.getContextPath() %>/images/muslim.jpg"/>
  </a>
  <h3>Muslim Names</h3>
  </div>
  <div class="box">
  <a href="<%=request.getContextPath() %>/ViewBabyNameByReligion/christian/christian.jsp">
  <img src="<%=request.getContextPath() %>/images/christian.jpg"/>
  </a>
  <h3>Christian Names</h3>
  </div>
  <div class="box">
  <a href="<%=request.getContextPath() %>/ViewBabyNameByReligion/sikhName/sikh.jsp">
  <img src="<%=request.getContextPath() %>/images/sikh.jpg"/>
  </a>
  <h3>Sikh Names</h3>
  </div>
  
  </div>
      
      
          
    </body>
</html>