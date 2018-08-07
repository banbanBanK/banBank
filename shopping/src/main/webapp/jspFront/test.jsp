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
<input id="url"/><br/>
<a onclick="hitTime++"> 按钮</a>
<script type="text/javascript">
    var start = new Date();
    var strStart = start.getFullYear()+"-"+(start.getMonth()+1)+"-"+start.getDate()+" "+
        start.getHours()+":"+start.getMinutes()+":"+start.getSeconds();
    $.ajax({
        url: "/InsertViewAction?goodId=1&customerId=1&clickTime="+$.cookie('strStart')+"&endTime="+$.cookie('strEnd'),
        type: "post", // 接受数据格式
        dataType: "json", // 要传递的数据
        async : false
    });
    window.onbeforeunload = function(){
        var end = new Date();
        var strEnd = end.getFullYear()+"-"+(end.getMonth()+1)+"-"+end.getDate()+" "+
            end.getHours()+":"+end.getMinutes()+":"+end.getSeconds();
        $.cookie('strStart', strStart, { expires: 7, path: '/' });
        $.cookie('strEnd', strEnd, { expires: 7, path: '/' });
    };

    /*
    var hitTime = 0;
    var len = 0;
    var end;
    var status = "in";
    var second = 30;
    function revive(){
        if(status == "out"){
            start = new Date();
            status = "in";
        }
        second = 30;
    }
    window.setInterval(function(){
        second -= 1;
        if(0 == second){
            end = new Date();
            len += (end.getTime() - start.getTime())/1000;
            status = "out";
        }
    },1000);
    $('body').click(function(){
        revive();
    });
    $('body').mousedown(function(){
        revive();
    });
    $('body').mouseup(function(){
        revive();
    });
    $('body').mousemove(function(){
        revive();
    });
    //(Firefox)
    $('body').bind('DOMMouseScroll', function() {
        revive();
    });
    //(IE,Google)
    $('body').bind('mousewheel',function(){
        revive();
    });
    $('body').keydown(function(e){
        revive();
    });
    $('body').keyup(function(e){
        revive();
    });
    $('body').keypress(function(e){
        revive();
    });*/
</script>
</body>
</html>