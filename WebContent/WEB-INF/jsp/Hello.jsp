<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#login-box {
	width: 300px;
	padding: 20px;
	margin: 100px auto;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
	border: 1px solid #31708f;
}

.msg {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
}

#footer {
	position: fixed;
    bottom: 0;
    width: 100%;
}

</style>
</head>

<body style="margin: 0px; padding: 0px; font-family: 'Trebuchet MS',verdana;">

	<c:url var="addUrl" value="/category/add" />
	<c:url var="adminUrl" value="/category/list" />

<table width="100%" style="height: 100%;" cellpadding="10" cellspacing="0" border="0">
<tr>

<!-- ============ HEADER SECTION ============== -->
<td colspan="3" style="height: 100px;" bgcolor="#777d6a"><h1>Shopping Cart</h1></td></tr>


<!-- ============ NAVIGATION BAR SECTION ============== -->
<tr><td colspan="3" valign="middle" height="50" bgcolor="#a9ae9f"><a href="#">Welcome</a></td></tr>

<tr>
<!-- ============ LEFT COLUMN (MENU) ============== -->
<td width="20%" valign="top" bgcolor="#999f8e">
<%-- 
<a href="http://localhost:8080/Project1/item/list">Items</a><br>
--%>
<a href="http://localhost:8080/Project1/category/add">ADD CATEGORY</a><br>

<a href="http://localhost:8080/Project1/category/list">EDIT CATEGORY</a><br>
<br>

<a href="http://localhost:8080/Project1/record/add">ADD USER</a><br>

<a href="http://localhost:8080/Project1/record/list">EDIT USER</a><br>
<br>

<a href="http://localhost:8080/Project1/record/Logout">Logout</a><br>

</td>

<!-- ============ MIDDLE COLUMN (CONTENT) ============== -->
<td width="55%" valign="top" bgcolor="#d2d8c7">

<table align = center border='1.5' width='600' cellpadding='1' cellspacing='1'>
	<h2>Cart Details</h2>
	<tr>
		<th>BillableId</th>
		<th>BillableName</th>
		<th>BillableAddress</th>
		<th>Item Details</th>
	</tr>
	<tbody>
	<c:forEach items="${bills}" var="bill">
		<c:url var="detailUrl" value="/record/billable?id=${bill.billableId}" />
	
			<tr>
			
				<td><c:out value ="${bill.billableId}" /></td>
				<td><c:out value="${bill.billableName}" /></td>
				<td><c:out value="${bill.billableAddress}" /></td>

				<td><a href="${detailUrl}">Item Details</a></td>

			</tr>
			</c:forEach>
			
	</tbody>
</table>

</td>

<td width="25%" valign="top" bgcolor="#999f8e">&nbsp;</td>

</tr>

<tr><td colspan="3" valign="middle" height="50" bgcolor="#a9ae9f"><a href="#"></a></td></tr>

<!-- ============ FOOTER SECTION ============== -->
<tr><td colspan="3" align="center" height="200" bgcolor="#777d6a">Copyright ©</td></tr>

</table>

</body>
</html>