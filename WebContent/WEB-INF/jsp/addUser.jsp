<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#777d6a">
<center>
<h1>Create New User</h1>

<c:url var="saveUrl" value="/record/add" />
<form:form modelAttribute="userAttribute" method="POST" action="${saveUrl}">
	<table>
		<tr>
			<td><form:label path="userId"></form:label></td>
			<td><form:input path="userId" type="hidden"/></td>
		</tr>
		<tr>
			<td><form:label path="userName">User Name</form:label></td>
			<td><form:input path="userName"/></td>
		</tr>
		<tr>
			<td><from:label path="userAddress">User Address</from:label></td>
			<td><form:input path="userAddress"/></td>
		</tr>
		<tr>
			<td><form:label path="password">Password</form:label></td>
			<td><form:input path="password"/></td>
		<tr>
	</table>
	
	<input type="submit" value="Save" />
</form:form>
</center>
</body>
</html>