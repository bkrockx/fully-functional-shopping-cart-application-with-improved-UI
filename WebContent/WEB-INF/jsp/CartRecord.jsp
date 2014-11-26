<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

#header {
    background-color:black;
    color:white;
    text-align:center;
    padding:5px;
}

.container {
    width: 1000px;
}

.left {
    max-width: 100%;
    white-space:nowrap;
    overflow:hidden;
    text-overflow:ellipsis;
    -ms-text-overflow:ellipsis;
    float: left;
}

.right {
    background:white;
    white-space:nowrap;
    overflow:hidden;
    text-overflow:ellipsis;
    -ms-text-overflow:ellipsis;
    float: right;
    border-color: black;
}

#one{
	background: #d9edf7; color:#d9edf7;
	width: 400px; height: 500px;
	float:left; 
}

#two{
   background: #d9edf7; color: #d9edf7;
   margin-left: 62px;
}

#msg1{
	color:red;
}

#myDiv{
	background-color: #d9edf7;
	border-color: #bce8f1;
	width: 200px;
	
}

#footer {
	position: fixed;
    bottom: 0;
    width: 100%;
}

</style>

</head>
<body bgcolor="#999ed3">

<center>
<div id="header">
<h1>Order Details</h1>
</div>
</center>

<h2></h2>
<div class="container">
 
<div class = "left">
<form action="/Project1/item/checkOut?id=${CurrentUser.userName}" method="post">
	<table>
	<tr>
		<td>CartHolder Name:</td>
		<td><input type = "text" name="cName" value="${CurrentUser.userName}" readOnly="true" /></td>
	</tr>
	<tr>
		<td>Recipient Name:</td>
		<td><input type = "text" name = "rName"/></td>
	</tr>
	<tr>
		<td>Billing Address:</td>
		<td><input type = "text" name = "bAddress"/></td>
	<tr>
		<td> </td>
		<td><input type = "submit" value = "CheckOut"/></td>
	</tr>
	</table>	
</form>
</div>
<%-- 
<c:url var="saveUrl" value="/category/edit?id=${categoryAttribute.categoryId}" />
--%>
 <%-- 
<table border='1.5' width='100' cellpadding='1' cellspacing='1'>
	<tr>
		<td>CartHolderName</td>
	</tr>
	<tr>
		<td>${CurrentUser.userName}</td>
	</tr>
</table>

</div>
--%>

<center>
<div class="right">
<h2>Items Saved in Cart </h2>
<table border='1.5' width='600' cellpadding='1' cellspacing='1'>
	<tr>   
		<th>ItemName</th>
		<th>ItemPrice</th>
		<th>ItemImage</th>
	</tr>
	<tbody>
	
	<c:forEach items="${CurrentItems}" var="item">
			<tr>
				<td align="center"><c:out value="${item.itemName}" /></td>
				<td align="center"><c:out value="${item.itemPrice}" /></td>
				<td align="center"><img src="/Project1/myImage/imageDisplay?id=${item.itemId}" width="60" height="50" /></td>
			</tr> 
	</c:forEach>
	<tr>
		<td> </td>
		<td>Amount payable</td>
		<td><c:out value="${Total}"/></td>
	<tr>
	</tbody>

</table>
<p><a href="http://localhost:8080/Project1/item/list"> Add more to cart</a></p>
</div>
</center>
</div>
<center>
 


</center>




<div id="footer">
	<p><a href="http://localhost:8080/Project1/record/Logout">Logout</a></p>
</div>

</body>
</html>