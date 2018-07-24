<%@ page import="com.chinasofti.ssm.domain.User" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% User user = (User) request.getAttribute("user"); %>
	<h1>Hello!<%=user.getUserName() %></h1>
</body>
</html>