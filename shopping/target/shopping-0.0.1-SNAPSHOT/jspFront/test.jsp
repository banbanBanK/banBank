<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Staro - Products</title>
</head>
<body>
this is a test
<input id="url"/>
<script type="text/javascript">
    var start = new Date();
    var strStart = start.getFullYear()+"-"+(start.getMonth()+1)+"-"+start.getDate()+" "+
        start.getHours()+":"+start.getMinutes()+":"+start.getSeconds();
    window.onbeforeunload = function(){
        var end = new Date();
        var strEnd = end.getFullYear()+"-"+(end.getMonth()+1)+"-"+end.getDate()+" "+
            end.getHours()+":"+end.getMinutes()+":"+end.getSeconds();
        var img = new Image();
        img.src ='http://localhost:8080/img/jsi.gif?clickTime='+ strStart+'&endTime=' + strEnd;
    };
</script>
</body>
</html>