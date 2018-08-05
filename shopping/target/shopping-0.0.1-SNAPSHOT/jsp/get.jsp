<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>get</title>
    <style>
        .row-one{
            position: absolute;
            margin-top:15%;
            width:130px;
            height: 50px;
        }
        #goodnum{
            border:2px;
            background-color: rgba(170, 181, 176, 0.32);
            transform: translate(0, -50%);
        }
        .get:focus{
            outline:none;
            border:1px solid red;
        }
        body{
            background-color: rgba(137, 137, 137, 0.26);
        }
    </style>
</head>
<body>
<form action="/getMore" method="post" class="row-one">
    <%
        session.setAttribute("getGet",request.getParameter("goodId"));
    %>
    <input type="text" class="get" name="goodNum" id="goodNum"  placeholder="请选择此次购进数量">
    <input type="submit" id="submit" value="提交" style="background-color: rgba(12,156,20,0.66)">
</form>
</body>
</html>
