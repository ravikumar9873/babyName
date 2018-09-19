<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="/resources/MenuBar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel='stylesheet' type="text/css"
	href="<%=request.getContextPath()%>/css/style.css" />
<meta charset="ISO-8859-1">
<title>Food Page</title>
</head>
<body>
	<%
		response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", 0);
		if (session.getAttribute("username") == null) {
			response.sendRedirect("/MyWebProject/UserInformation/RegisterUser.jsp");
		}
	%>

	<div class="container">
		<h2 class="home-middle-title">Healthy Baby Food</h2>
		<h4 class="home-middle-subtitle">One hour per week is all it
			takes! You can make your baby&#8217;s food fresh &amp; tasty in only
			one hour per week &#8211; it really is that easy to make homemade
			baby food!</h4>

		<div class="box">
			<a class="wbf-middle-img"
				href="http://wholesomebabyfood.momtastic.com/pumpkin-babyfood-recipes.htm">
				<img
				src="http://cdn2-www.wholesomebabyfood.momtastic.com/wp-content/themes/wholesomebabyfood/images/pumpkin.jpg"
				alt="Wholesome Baby Food - Yum Yum Pumpkin" />
			</a> <span class="wbf-middle-title-link"><a
				href="http://wholesomebabyfood.momtastic.com/pumpkin-babyfood-recipes.htm">Yum
					Yum Pumpkin</a></span>
			<p>Pumpkin makes a great baby food that&#8217;s loaded with
				Vitamin A &amp; many other important nutrients. Quick Tip &#8211;
				try canned pumpkin in a pinch!</p>
		</div>

		<div class="box">
			<a class="wbf-middle-img"
				href="http://wholesomebabyfood.momtastic.com/peasbabyfoodrecipes.htm"><img
				src="http://cdn1-www.wholesomebabyfood.momtastic.com/wp-content/themes/wholesomebabyfood/images/peas.jpg"
				alt="Wholesome Baby Food - Yes Peas!" /></a><span
				class="wbf-middle-title-link"><a
				href="http://wholesomebabyfood.momtastic.com/peasbabyfoodrecipes.htm">Yes
					Peas!</a></span>
			<p>One cup of peas contains more protein that a tablespoon of
				peanut butter and also provides calcium, Vitamin A and C and Iron
				too.</p>
		</div>
		<div class="box">
			<a class="wbf-middle-img"
				href="http://wholesomebabyfood.momtastic.com/squashbabyfoodrecipes.htm"><img
				src="http://cdn3-www.wholesomebabyfood.momtastic.com/wp-content/themes/wholesomebabyfood/images/squash.jpg"
				alt="Wholesome Baby Food - Squishy Squashy" /></a><span
				class="wbf-middle-title-link"><a
				href="http://wholesomebabyfood.momtastic.com/squashbabyfoodrecipes.htm">Squishy
					Squashy</a></span>
			<p>Winter Squash is a wonderful, nutritious first food for your
				baby. Delicious &amp; very nutritious, squash is sure to be a hit
				with your little one.</p>
		</div>
		<div class="box">
			<a class="wbf-middle-img"
				href="http://wholesomebabyfood.momtastic.com/eggsbabyfoodrecipes.html"><img
				src="http://cdn2-www.wholesomebabyfood.momtastic.com/wp-content/themes/wholesomebabyfood/images/eggs.jpg"
				alt="Wholesome Baby Food - Eggs for your baby" /></a><span
				class="wbf-middle-title-link"><a
				href="http://wholesomebabyfood.momtastic.com/eggsbabyfoodrecipes.htm">Eggs
					for Your Baby</a></span>
			<p>Recommendations for introducing eggs to baby are changing! A
				2008 study, and many studies done after, show waiting to introduce
				eggs may not be necessary.</p>
		</div>
		<div class="box">
			<a class="wbf-middle-img"
				href="http://wholesomebabyfood.momtastic.com/mangobabyfoodrecipes.htm"><img
				src="http://cdn3-www.wholesomebabyfood.momtastic.com/wp-content/themes/wholesomebabyfood/images/mango.jpg"
				alt="Wholesome Baby Food - Mango baby!" /></a><span
				class="wbf-middle-title-link"><a
				href="http://wholesomebabyfood.momtastic.com/mangobabyfoodrecipes.htm">Mango
					Baby!</a></span>
			<p>Like Papayas, Mangos are tropical fruits and their age for
				introduction is varied from 6 months and older with 8-10 months
				being the average recommended age.</p>
		</div>
		<div class="box">
			<a class="wbf-middle-img"
				href="http://wholesomebabyfood.momtastic.com/tipspices.htm"><img
				src="http://cdn1-www.wholesomebabyfood.momtastic.com/wp-content/themes/wholesomebabyfood/images/spices.jpg"
				alt="Wholesome Baby Food - Spice of Life" /></a><span
				class="wbf-middle-title-link"><a
				href="http://wholesomebabyfood.momtastic.com/tipspices.htm">Spice
					of Life</a></span>
			<p>Use spices and herbs to liven up baby&#8217;s foods. This is a
				wonderful way to help expand your baby&#8217;s taste buds and get
				her used to the tastes of the family&#8217;s foods.
		</div>
		<div class="box">
			<a class="wbf-middle-img"
				href="http://wholesomebabyfood.momtastic.com/pureebabyfoodandstore.htm"><img
				src="http://cdn2-www.wholesomebabyfood.momtastic.com/wp-content/themes/wholesomebabyfood/images/puree.jpg"
				alt="Wholesome Baby Food - Pureeing &amp; Storing" /></a><span
				class="wbf-middle-title-link"><a
				href="http://wholesomebabyfood.momtastic.com/pureebabyfoodandstore.htm">Pureeing
					&amp; Storing</a></span>
			<p>Pureeing homemade baby food is very simple. Making homemade
				food can be done in 1 hour per week!
			<p />
		</div>
		<div class="box">
			<a class="wbf-middle-img"
				href="http://wholesomebabyfood.momtastic.com/avocadobabyfoodrecipes.html"><img
				src="http://cdn1-www.wholesomebabyfood.momtastic.com/wp-content/themes/wholesomebabyfood/images/avocado.jpg"
				alt="Wholesome Baby Food - Avocado, a first food" /></a><span
				class="wbf-middle-title-link"><a
				href="http://wholesomebabyfood.momtastic.com/avocadobabyfoodrecipes.htm">Avocado
					&#8211; A First Food</a></span>
			<p>Convenient, creamy, smooth &amp; loaded with nutrients, try
				Avocado as a first food for your baby.</p>
		</div>
		<div class="box">
			<a class="wbf-middle-img"
				href="http://wholesomebabyfood.momtastic.com/sweetpotatobabyfoodrecipes.htm"><img
				src="http://cdn2-www.wholesomebabyfood.momtastic.com/wp-content/themes/wholesomebabyfood/images/sweet-potato.jpg"
				alt="Wholesome Baby Food - Sweet Potatoes" /></a><span
				class="wbf-middle-title-link"><a
				href="http://wholesomebabyfood.momtastic.com/sweetpotatobabyfoodrecipes.htm">Sweet
					Potatoes</a></span>
			<p>Sweet Potatoes are a very healthy &amp; totally yummy first
				Food option for baby.</p>
		</div>

	</div>
</body>
</html>