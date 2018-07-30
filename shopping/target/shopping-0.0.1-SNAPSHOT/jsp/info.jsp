<%@ page import="com.chinasofti.ssm.domain.User" %>
<%@ page import="com.chinasofti.ssm.domain.Good" %>
<%@ page import="java.util.List" %>
<%@ page import="com.chinasofti.ssm.domain.Comment" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Info</title>
</head>
<body>
GoodFindAll:<br/>
<%--<% User user = (User) request.getAttribute("user"); %>--%>
	<%--<h1>Hello!<%=user.getUserName() %></h1>--%>
<%--<% Good good = (Good) request.getAttribute("good"); %>
<h1>Hello!<%=good.getGoodName() %></h1>--%>
<%
	List<Good> goods = (List<Good>) request.getAttribute("goods");
	if(goods != null){
	for(Good good : goods){
%>
商品名称:<%=good.getGoodName() %><br/>
商品图片:<%=good.getGoodImage() %><br/>
<hr/>
<%
	}
	}
%>
<%
	List<Comment> comments = (List<Comment>) request.getAttribute("comments");
	if(comments != null){
		for(Comment comment : comments){
%>
评论:<%=comment.getComment() %><br/>
<hr/>
<%
		}
	}
%>
</body>
</html>