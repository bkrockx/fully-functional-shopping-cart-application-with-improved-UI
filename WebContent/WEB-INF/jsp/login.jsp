<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="false"%>


<!DOCTYPE HTML>
<html>
<head>
<link type="text/css" href="resources/css/bootstrap.min.css" rel="stylesheet"/>
<script src="resources/js/bootstrap.min.js" ></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 
 <link rel="stylesheet" href="/Project1/css/style.css" media="screen" type="text/css" />

<title>Insert title here1</title>
<style>

</style>
</head>

<body bgcolor="#448ed3">

  <div class="wrap">
  
		<div class="avatar">
		
		</div>
		<form action="/Project1/record/authenticate" method="post">
		<input type="text" id="uname" name="uname" placeholder="username" required>
		<div class="bar">
			<i></i>
		</div>
		<input type="password" id="pass" name="pass" placeholder="password" required>
		<br>
		<input type = "submit" value = "submit">
		</form>
	</div>
	<script src="js/index.js"></script>
</body>
</html>