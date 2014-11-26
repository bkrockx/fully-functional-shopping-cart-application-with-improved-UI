<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function myFunction() {
	document.getElementById('form1').submit();
}
</script>
<style>

</style>
<title>E-Shop</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-5">

<link rel="stylesheet" type="text/css" href="/Project1/css/style1.css" />

</head>

<body bgcolor="#999ed3">
	<div id="header">
		<a href="index.html" class="float"><img src="/Project1/img/logo.jpg" alt="" width="171" height="73" /></a>																																																		
	  
	  	<div class="topblock1">
	  	<%-- 
			Currency:<br /><select><option>Indian rupee</option></select>
		--%>
		</div>
	    <div class="topblock2">
	    <%-- 
			Lanquage:<br />
		    <a href="#"><img src="/Project1/img/flag1.gif" alt="" width="19" height="11" /></a>																																		
		    <a href="#"><img src="/Project1/img/flag2.gif" alt="" width="19" height="11" /></a>
		    <a href="#"><img src="/Project1/img/flag3.gif" alt="" width="19" height="11" /></a>
		    <a href="#"><img src="/Project1/img/flag4.gif" alt="" width="19" height="11" /></a>
		    <a href="#"><img src="/Project1/img/flag5.gif" alt="" width="19" height="11" /></a>
		    <a href="#"><img src="/Project1/img/flag6.gif" alt="" width="19" height="11" /></a>
		--%>
		</div>
		<div class="topblock2">
			<img src="/Project1/img/shopping.gif" alt="" width="24" height="24" class="shopping" />																																																																									
		 	<p>Shopping cart</p> <p><strong></strong> <span></span></p>
		</div>
		
		<ul id="menu">
		<%-- 
			<li><img src="images/li.gif" alt="" width="19" height="29" /></li>
			<li><a href="#"><img src="/Project1/img/but1_a.gif" alt="" width="90" height="29" /></a></li>
			<li><a href="#"><img src="/Project1/img/but2.gif" alt="" width="129" height="29" /></a></li>
			<li><a href="#"><img src="/Project1/img/but3.gif" alt="" width="127" height="29" /></a></li>
			<li><a href="#"><img src="/Project1/img/but4.gif" alt="" width="113" height="29" /></a></li>
			<li><a href="#"><img src="/Project1/img/but5.gif" alt="" width="132" height="29" /></a></li>
			<li><a href="#"><img src="/Project1/img/but6.gif" alt="" width="105" height="29" /></a></li>
			<li><a href="#"><img src="/Project1/img/but7.gif" alt="" width="82" height="29" /></a></li>
			<li><a href="#"><img src="/Project1/img/but8.gif" alt="" width="112" height="29" /></a></li>
			<li><a href="#"><img src="/Project1/img/but9.gif" alt="" width="71" height="29" /></a></li>
			--%>
		</ul>
		
	</div>
	
	<div id="container">																																																																																																																																																																											
	  <div id="center" class="column">
	  	<a href="#" class="banner"><img src="/Project1/img/bigbanner.jpg" alt="" width="572" height="236" /></a><br />
	  	<div id="content">
			<img src="/Project1/img/title2.gif" alt="" width="540" height="29" /><br />
			<p>Eshop went live with the objective of making items easily available to anyone who had internet access. Today, we're present across various categories including movies, music, games, mobiles, cameras, computers, healthcare and personal products, home appliances and electronics, stationery, perfumes, toys, apparels, shoes and still counting!
Be it our path-breaking services like Cash on Delivery, a 30-day replacement policy, EMI options, free shipping - and of course the great prices that we offer, everything we do revolves around our obsession with providing our customers a memorable online shopping experience. Then there's our dedicated delivery partners who work round the clock to personally make sure the packages reach on time.

So it's no surprise that we're a favourite online shopping destination.</p>
			<img src="/Project1/img/title3.gif" alt="" width="540" height="26" class="pad25" />
			
			<div class="stuff">
			<c:forEach items="${items}" var="item">
				<c:choose>
						<c:when test="${i.index % 2 == 0}">	
							<div class="item">
								<img src="/Project1/myImage/imageDisplay?id=${item.itemId}" alt="" width="124" height="90" />
								<h3><c:out value="${item.itemName}"/></h3>
								<span><c:out value="Rs${item.itemPrice}.00"/></span>
								<a href="http://localhost:8080/Project1/item/addToUser?bid=${userName}&cid=${item.itemId}"><img src="/Project1/img/cart.gif" alt="" width="71" height="19" /></a>
							</div>
						</c:when>
						<c:otherwise>
							<div class="item">
								<img src="/Project1/myImage/imageDisplay?id=${item.itemId}" alt="" width="124" height="90" />
								<h3><c:out value="${item.itemName}"/></h3>
								<span><c:out value="Rs${item.itemPrice}.00"/></span>
								<a href="http://localhost:8080/Project1/item/addToUser?bid=${userName}&cid=${item.itemId}"><img src="/Project1/img/cart.gif"" alt="" width="71" height="19" />
							</div>
						</c:otherwise>
				</c:choose>
			</c:forEach>
			</div>
		</div>
	  </div>
	  <div id="left" class="column">
	  	<div class="block">
		<img src="/Project1/img/title1.gif" alt="" width="168" height="42" /><br />
			<ul id="navigation">
				<c:forEach items="${categories}" var="category">
					<c:choose>
						<c:when test="${i.index % 2 == 0}">		
    						<li class="color"><a href="#"><c:out value="${category.categoryName}"/></a></li>
						</c:when>
						<c:otherwise>
							<li><a href="#"><c:out value="${category.categoryName}"/></a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</ul>
		</div>
		<a href="#"><img src="/Project1/img/banner1.jpg" alt="" width="172" height="200" /></a>
	  </div>
	  <div id="right" class="column">
	  	<a href="#"><img src="/Project1/img/banner2.jpg" alt="" width="237" height="216" /></a><br />
		<div class="rightblock">
			<img src="images/title4.gif" alt="" width="223" height="29" /><br />
			<div class="blocks">
				<img src="images/top_bg.gif" alt="" width="218" height="12" />
				<c:url var="url" value="/item/list" />
				<form:form id="form1" modelAttribute="categoryAttribute" method="POST" action="${url}">
					<p class="line"><span>Category:</span>
					<form:select path="categoryName" onChange="myFunction()">
							<c:forEach items="${categories}" var="category">
			    				<form:option value="${category.categoryName}"></form:option>
			    			</c:forEach>
					</form:select>
				</form:form>
				<img src="images/bot_bg.gif" alt="" width="218" height="10" /><br />
			</div>
			
			</div>
			<br>
			<div class="blocks">
				
				<div id="news">
					
					<span class="date">23 november</span>
					<p>Eshop is yet to divulge details about the offers that will appear in big billion day. You can definitely get extra 10% off if you purchase items using citi bank or standard charterred credit cards. Apart from that Eshop is going to have a number of items on sale at Rs. 1 only!! Also expect to have many items at Rs. 99 only. As per communication from Eshop to affiliates mouth watering deals are going to be there on perfumes, Prestige Cookware and LG Led TV.</p>
					<a href="#" class="more">read more</a>
				</div>
				<img src="/Project1/img/bot_bg.gif" alt="" width="218" height="10" /><br />
			</div>
		</div>
	  </div>
	</div>
	
	<div id="footer">
		<a href="#">Home</a>  |  <a href="#">New Products</a>  |  <a href="#">Special Offers</a>  |  <a href="#">My Account</a>  |  <a href="#">Shopping Chart</a>  |  <a href="#">Locations</a>  |  <a href="#">FAQ</a>  |  <a href="#">Contact Us</a>  |  <a href="#" class="terms">Privacy Policy</a>  |  <a href="#" class="terms">Terms of Use</a>
		<p>Copyright &copy;. All rights reserved. Design by <a href="#" target="_blank" id="bft" title="Best Free Templates"></a>     </p>																																																																																																																																									
	</div>
</body>
</html>