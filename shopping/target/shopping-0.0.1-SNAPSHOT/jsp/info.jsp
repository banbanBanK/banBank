<%@ page import="com.chinasofti.ssm.domain.User" %>
<%@ page import="com.chinasofti.ssm.domain.Good" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<<<<<<< HEAD
<% User user = (User) request.getAttribute("user"); %>
	<h1>Hello!<%=user.getUserName() %></h1>
=======
<%--<% User user = (User) request.getAttribute("user"); %>--%>
	<%--<h1>Hello!<%=user.getUserName() %></h1>--%>
>>>>>>> a9e039e3340c05bfe77af85a0712cd5b0969a233
<% Good good = (Good) request.getAttribute("good"); %>
<h1>Hello!<%=good.getGoodName() %></h1>
</body>
</html>