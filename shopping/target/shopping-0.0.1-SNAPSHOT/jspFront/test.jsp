<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Staro - Products</title>
</head>
<body>
<script src="../plugins/jquery.min.js"></script>
<script src="../js/jquery.cookie.js"></script>
this is a test
<input id="url"/>
<script type="text/javascript">
    var start = new Date();
    var strStart = start.getFullYear()+"-"+(start.getMonth()+1)+"-"+start.getDate()+" "+
        start.getHours()+":"+start.getMinutes()+":"+start.getSeconds();
    $.ajax({
        url: "/InsertViewAction?goodId=1&customerId=1&clickTime="+$.cookie('strStart')+"&endTime="+$.cookie('strEnd'),
        type: "post", // 接受数据格式
        dataType: "json", // 要传递的数据
    });

    window.onbeforeunload = function(){
        var end = new Date();
        var strEnd = end.getFullYear()+"-"+(end.getMonth()+1)+"-"+end.getDate()+" "+
            end.getHours()+":"+end.getMinutes()+":"+end.getSeconds();
        $.cookie('strStart', strStart, { expires: 7, path: '/' });
        $.cookie('strEnd', strEnd, { expires: 7, path: '/' });
    };
</script>
</body>
</html>