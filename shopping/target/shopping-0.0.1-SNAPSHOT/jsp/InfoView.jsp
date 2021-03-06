<%@ page import="com.chinasofti.ssm.domain.Admin" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- Custom CSS -->
    <link href="../css/style.css" rel='stylesheet' type='text/css' />
    <!-- font CSS -->
    <!-- font-awesome icons -->
    <link href="../css/font-awesome.css" rel='stylesheet'>
    <!-- //font-awesome icons -->
    <!-- js-->
    <script src="../js/jquery-1.11.1.min.js"></script>
    <script src="../js/modernizr.custom.js"></script>
    <!--webfonts-->
    <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
    <!--//webfonts-->
    <!--animate-->
    <link href="../css/animate.css" rel="stylesheet" type="text/css" media="all">
    <script src=../js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
    <!--//end-animate-->
    <!-- map and echarts-->
    <script src = "../js/echarts.min.js"></script>
    <script src = "../map/js/china.js"></script>
    <style>
        .clearfix{
            padding-top: 2em;
        }
        div{
            margin:0 auto;
        }
    </style>
</head>
<body class="cbp-spmenu-push" style="font-family:'calisto mt'">
<div class="main-content">
    <!--left-fixed -navigation-->
    <div class=" sidebar" role="navigation">
        <div class="navbar-collapse">
            <nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1" style="background: #424a5d">
                <ul class="nav" id="side-menu">
                    <li>
                        <a href="/InfoView" class="active" style="font-family:'楷体'"><i class="fa fa-home nav_icon"></i>信息汇总</a>
                    </li>
                    <li>
                        <a href="/getgood" style="font-family:'楷体'"><i class="fa fa-table nav_icon"></i>商品总览</a>
                    </li>
                    <li>
                        <a href="/CustomerView"  style="font-family:'楷体'"><i class="fa fa-bar-chart nav_icon"></i>客户总览</a>
                    </li>
                    <li>
                        <a href="/ProviderView"  style="font-family:'楷体'"><i class="fa fa-bar-chart nav_icon"></i>供应商总览</a>
                    </li>
                    <li>
                        <a href="/AdminInfo" style="font-family:'楷体'"><i class="fa fa-check-square-o nav_icon"></i>我的信息<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse" style="font-family:'楷体'">
                            <li>
                                <a href="/AdminInfo">查看</a>
                            </li>
                            <li>
                                <a href="/PwdModify">密码修改</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <!-- //sidebar-collapse -->
            </nav>
        </div>
    </div>
    <!--left-fixed -navigation-->

    <%
        Admin admin = (Admin) request.getAttribute("admin");
    %>
    <!-- header-starts -->
    <div class="sticky-header header-section ">
        <div class="header-left">
            <!--toggle button start-->
            <button id="showLeftPush" style="background: #424a5d"><i class="fa fa-bars"></i></button>
            <!--toggle button end-->
            <!--logo -->
            <div class="logo" style="width:230px;background: #424a5d">
                <a href="index.jsp">
                    <h1><font style="font-family:'calisto mt';font-style: italic;">NKUTT</font></h1>
                    <span><font style="font-family:'calisto mt';font-style: italic;">Adminpannel</font></span>
                </a>
            </div>
            <!--//logo-->
            <!--search-box-->
            <div class="search-box">
                <form class="input">
                    <input class="sb-search-input input__field--madoka" placeholder="Search..." type="search" id="input-31" />
                    <label class="input__label" for="input-31">
                        <svg class="graphic" width="100%" height="100%" viewBox="0 0 404 77" preserveAspectRatio="none">
                            <path d="m0,0l404,0l0,77l-404,0l0,-77z"/>
                        </svg>
                    </label>
                </form>
            </div><!--//end-search-box-->
            <div class="clearfix"> </div>
        </div>
        <div class="header-right">
            <div class="profile_details_left"><!--notifications of menu start -->
                <ul class="nofitications-dropdown">
                    <li class="dropdown head-dpdn">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell"></i><span class="badge blue">3</span></a>
                        <ul class="dropdown-menu">
                            <li>
                                <div class="notification_header">
                                    <h3>You have 3 new notification</h3>
                                </div>
                            </li>
                            <li><a href="#">
                                <div class="user_img"><img src="../images/2.png" alt=""></div>
                                <div class="notification_desc">
                                    <p>Lorem ipsum dolor amet</p>
                                    <p><span>1 hour ago</span></p>
                                </div>
                                <div class="clearfix"></div>
                            </a></li>
                            <li class="odd"><a href="#">
                                <div class="user_img"><img src="../images/1.png" alt=""></div>
                                <div class="notification_desc">
                                    <p>Lorem ipsum dolor amet </p>
                                    <p><span>1 hour ago</span></p>
                                </div>
                                <div class="clearfix"></div>
                            </a></li>
                            <li><a href="#">
                                <div class="user_img"><img src="../images/3.png" alt=""></div>
                                <div class="notification_desc">
                                    <p>Lorem ipsum dolor amet </p>
                                    <p><span>1 hour ago</span></p>
                                </div>
                                <div class="clearfix"></div>
                            </a></li>
                            <li>
                                <div class="notification_bottom">
                                    <a href="#">See all notifications</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
                <div class="clearfix"> </div>
            </div>
            <!--notification menu end -->
            <div class="profile_details">
                <ul>
                    <li class="dropdown profile_details_drop">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                            <div class="profile_img">
                                <span class="prfil-img"><img src="../images/a.png" alt=""> </span>
                                <div class="user-name">
                                    <p style="font-family:'calisto mt';font-style: italic;"><%=admin.getAdminName()%></p>
                                    <span style="font-family:'calisto mt';font-style: italic;color: #FFFFFF">管理员</span>
                                </div>
                                <i class="fa fa-angle-down lnr"></i>
                                <i class="fa fa-angle-up lnr"></i>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                        <ul class="dropdown-menu drp-mnu">
                            <li> <a href="/AdminInfo"><i class="fa fa-user"></i> 个人简介</a> </li>
                            <li> <a href="javaScript:AdminLogout()"><i class="fa fa-sign-out"></i> 注销</a> </li>
                        </ul>
                    </li>
                    <script>
                        function AdminLogout() {
                            $.ajax({
                                url:"/AdminLogout",
                                type:'post',
                                dataType:'json',
                                success(result){
                                    if(result){
                                        alert("注销成功！");
                                        window.location="http://localhost:8080/jsp/login.jsp";
                                    }
                                }
                            })
                        }
                    </script>
                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="clearfix" style="background: #424a5d"> </div>
    </div>
    <!-- //header-ends -->
    <!-- main content start-->
    <div id="page-wrapper">
        <div class="main-page" style="background: #04243E">
            <!--  走马灯设计  -->
            <div style="height:400px;padding-left:1em; padding-right: 1em;padding-top: 5em;" id="myCarousel" class="carousel slide">
                <!-- 轮播（Carousel）指标 -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0"
                        class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <!-- 轮播（Carousel）项目 -->
                <div  class="carousel-inner">
                    <div align="center"  class="item active" >
                        <img src="../images/insta-feed2.jpg"  style="height:300px;"  alt="First slide">
                    </div>
                    <div align="center"   class="item" >
                        <img src="../images/insta-feed7.jpg"  style="height:300px;"  alt="Second slide">
                    </div>
                    <div align="center"   class="item" >
                        <img src="../images/insta-feed8.jpg"  style="height:300px;"  alt="Third slide">
                    </div>

                </div>
                <!-- 轮播（Carousel）导航 -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev" >
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <script>
                $(function(){
                    // 初始化轮播
                    $(".start-slide").click(function(){
                        $("#myCarousel").carousel('cycle');
                    });
                    // 停止轮播
                    $(".pause-slide").click(function(){
                        $("#myCarousel").carousel('pause');
                    });
                    // 循环轮播到上一个项目
                    $(".prev-slide").click(function(){
                        $("#myCarousel").carousel('prev');
                    });
                    // 循环轮播到下一个项目
                    $(".next-slide").click(function(){
                        $("#myCarousel").carousel('next');
                    });
                    // 循环轮播到某个特定的帧
                    $(".slide-one").click(function(){
                        $("#myCarousel").carousel(0);
                    });
                    $(".slide-two").click(function(){
                        $("#myCarousel").carousel(1);
                    });
                    $(".slide-three").click(function(){
                        $("#myCarousel").carousel(2);
                    });
                });
            </script>

            <div class="row-one" style="margin-top:2em ;">
                <div class="col-md-4 widget">
                    <div class="stats-left ">
                        <h5>Today</h5>
                        <h4>Sales</h4>
                    </div>
                    <div class="stats-right">
                        <label> 45</label>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="col-md-4 widget states-mdl">
                    <div class="stats-left">
                        <h5>Today</h5>
                        <h4>Visitors</h4>
                    </div>
                    <div class="stats-right">
                        <label> 80</label>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="col-md-4 widget states-last">
                    <div class="stats-left">
                        <h5>Today</h5>
                        <h4>Orders</h4>
                    </div>
                    <div class="stats-right">
                        <label>51</label>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="clearfix"> </div>
            </div>

            <div class="clearfix"></div><hr/>
            <div id="mainAge"  style="width: 1000px;height:400px"></div>
            <script type="text/javascript">
                // 基于准备好的dom，初始化echarts实例
                var myChart = echarts.init(document.getElementById('mainAge'));
                var ageGenderM = [];
                for(var i=0; i<7; i++)
                    ageGenderM[i] = 0;
                $.ajax({
                    url:"/getAgeGenderM",
                    type:"get",
                    dataType:"json",
                    async:false,
                    success(result){
                        ageGenderM = result;
                    },
                    error(result){
                        alert("申请数据失败！");
                    }
                });
                var ageGenderF = [];
                for(var i=0; i<7; i++)
                    ageGenderF[i] = 0;
                $.ajax({
                    url:"/getAgeGenderF",
                    type:"get",
                    dataType:"json",
                    async:false,
                    success(result){
                        ageGenderF = result;
                    },
                    error(result){
                        alert("申请数据失败！");
                    }
                });
                // 指定图表的配置项和数据
                option = {
                    title:{
                        text: "客户年龄段分析",
                        textStyle: {
                            color: '#fff',
                            fontSize: '22',
                            fontWeight: 'normal',
                        }
                    },
                    tooltip: {
                        trigger: 'axis',
                        axisPointer: { // 坐标轴指示器，坐标轴触发有效
                            type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
                        }
                    },
                    legend: {
                        data: [{name : '男性', textStyle : {color:"#25c36c"}},
                            {name : '女性', textStyle : {color:"#25c36c"}}]
                    },
                    grid: {
                        left: '3%',
                        right: '4%',
                        bottom: '3%',
                        containLabel: true
                    },
                    xAxis: {
                        type: 'value',
                        axisLine:{
                            lineStyle:{
                                color: 'white'
                            }
                        }
                    },
                    yAxis: {
                        type: 'category',
                        axisLine:{
                            lineStyle:{
                                color: 'white'
                            }
                        },
                        data: ['15-19岁', '19-23岁', '23-30岁 ', '30-35岁', '35-40岁', '40-50岁', '其他年龄段']
                    },
                    series: [{
                        name: '男性',
                        type: 'bar',
                        stack: '总量',
                        label: {
                            normal: {
                                show: true,
                                position: 'insideRight'
                            }
                        },
                        data: [ageGenderM[0], ageGenderM[1], ageGenderM[2], ageGenderM[3], ageGenderM[4], ageGenderM[5], ageGenderM[6]]
                    },
                        {
                            name: '女性',
                            type: 'bar',
                            stack: '总量',
                            label: {
                                normal: {
                                    show: true,
                                    position: 'insideRight'
                                }
                            },
                            data: [ageGenderF[0], ageGenderF[1], ageGenderF[2], ageGenderF[3], ageGenderF[4], ageGenderF[5], ageGenderF[6]]
                        }
                    ]
                };
                // 使用刚指定的配置项和数据显示图表。
                myChart.setOption(option);
            </script>

            <div class="clearfix"></div><hr/>
            <div align="center">
                <script>
                    $.ajax({
                        url : "/getNameTop10",
                        type : "post",
                        dataType : "json",
                        success(result){
                            var data = eval('result');
                            var selectid = $('#selectTop10');
                            var html = "";
                            for(var i=0; i < data.length; i++){
                                if(data[i] != "电脑") {
                                    html += "<option value = " + (i + 1) + ">" + data[i] + "</option>";
                                }
                                else
                                    break;
                            }
                            selectid.html(html);
                        },
                        error(){
                            alert("申请数据失败!");
                        }
                    });
                </script>
                <select id="selectTop10" style="background:#04243E;color: white;float:right;">
                    <option selected="selected" disabled="disabled">请选择商品</option>
                </select>
            </div>
            <br/>
            <div id="mainGood"  style="width: 1000px;height:400px"></div>
            <script type="text/javascript">
                // 基于准备好的dom，初始化echarts实例
                var myChart1 = echarts.init(document.getElementById('mainGood'));
                $(function() {
                    _ajax1(1);
                    $('#selectTop10').on('change', function() {
                        var val = $(this).val();
                        _ajax1(val);
                    });
                });
                // 指定图表的配置项和数据
                function _ajax1(len1) {
                    $.ajax({
                        url: '/getGoodSum?number=' + len1,
                        type: 'get',
                        dataType: 'json',
                        success: function (res) {
                            var salePercent = [];
                            $.ajax({
                                url:'/getSalePercent?number' + len1,
                                type:'get',
                                async:false,
                                dataType:'json',
                                success(res){
                                    salePercent = res;
                                }
                            });
                            option = {
                                title: {
                                    text: "商品销售态势分析",
                                    textStyle: {
                                        color: '#fff',
                                        fontSize: '22',
                                        fontWeight: 'normal',
                                    }
                                },
                                tooltip: {
                                    trigger: 'axis',
                                    axisPointer: {type: 'cross'}
                                },
                                toolbox: {
                                    feature: {
                                        dataView: {show: true, readOnly: false},
                                        magicType: {show: true, type: ['line', 'bar']},
                                        restore: {show: true},
                                        saveAsImage: {show: true}
                                    }
                                },
                                legend: {
                                    data: [{name: '该商品销售数', textStyle: {color: "#25c36c"}},
                                        {name: '占比率', textStyle: {color: "#25c36c"}}]
                                },
                                xAxis: [
                                    {
                                        type: 'category',
                                        axisLine: {
                                            lineStyle: {
                                                color: 'white'
                                            }
                                        },
                                        data: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月']
                                    }
                                ],
                                yAxis: [
                                    {
                                        type: 'value',
                                        name: '销售数',
                                        axisLine: {
                                            lineStyle: {
                                                color: 'white'
                                            }
                                        },
                                        min: 0,
                                        max: 4500,
                                        axisLabel: {
                                            formatter: '{value}'
                                        }
                                    },
                                    {
                                        type: 'value',
                                        name: '占比率（%）',
                                        axisLine: {
                                            lineStyle: {
                                                color: 'white'
                                            }
                                        },
                                        min: 0,
                                        max: 100,
                                        position: 'right',
                                        axisLabel: {
                                            formatter: '{value}',
                                        }
                                    }
                                ],
                                series: [
                                    {
                                        name: '该商品销售数',
                                        type: 'bar',
                                        axisLine: {
                                            lineStyle: {
                                                color: 'white'
                                            }
                                        },
                                        itemStyle: {normal: {color: '#99cccc'}},
                                        data: [res[0], res[1], res[2], res[3], res[4], res[5], res[6], res[7]],                                   },
                                    {
                                        name: '占比率',
                                        type: 'line',
                                        yAxisIndex: 1,
                                        axisLine: {
                                            lineStyle: {
                                                color: 'white'
                                            }
                                        },
                                        itemStyle: {normal: {color: '#ff9933'}},
                                        data: [salePercent[0]*100, salePercent[1]*100, salePercent[2]*100,salePercent[3]*100, salePercent[4]*100, salePercent[5]*100, salePercent[6]*100, salePercent[7]*100],
                                        markPoint: {
                                            color: 'blue',
                                            data: [
                                                {type: 'max', name: '最大值', color: 'white'},
                                                {type: 'min', name: '最小值', color: 'white'}
                                            ]
                                        },
                                        markLine: {
                                            data: [
                                                {type: 'average', name: '平均值', color: 'white'}
                                            ]
                                        }
                                    }
                                ]
                            };
                            // 使用刚指定的配置项和数据显示图表。
                            myChart1.setOption(option);
                        },
                        error(res) {
                            alert("申请数据失败！");
                        }
                    });
                }
            </script>

            <div class="clearfix"></div><hr/>
            <div id="mainMap" style="width: 900px;height:600px;"></div>
            <script type="text/javascript">
                // 基于准备好的dom，初始化echarts实例
                var myChart = echarts.init(document.getElementById('mainMap'));
                var peoples = [];
                for(var i=0; i<34; i++)
                    peoples[i]=0;
                $.ajax({
                    url:"/getMapData",
                    type:"post",
                    dataType:"json",
                    async: false,
                    success(result){
                        peoples = result;
                    }
                });
                // 指定图表的配置项和数据
                function mapTooltipClick(name) {
                    alert(name)
                }
                option = {
                    title : {
                        text:"客户地域分析",
                        textStyle: {
                            color: '#fff',
                            fontSize: '22',
                            fontWeight: 'normal',
                        }
                    },
                    visualMap: {
                        min: 0,
                        max: 1000,
                        left: 'left',
                        top: 'bottom',
                        text: ['高', '低'],
                        calculable: false,
                        orient: 'horizontal',
                        inRange: {
                            color: ['#e0ffff', '#006edd'],
                            symbolSize: [30, 100]
                        }
                    },
                    tooltip: {
                        padding: 0,
                        enterable: true,
                        transitionDuration: 1,
                        textStyle: {
                            color: '#000',
                            decoration: 'none',
                        },
                        // position: function (point, params, dom, rect, size) {
                        //   return [point[0], point[1]];
                        // },
                    },
                    series: [{
                        name: '人数',
                        type: 'map',
                        mapType: 'china',
                        itemStyle: {
                            normal: {
                                label: {
                                    show: false
                                }
                            },
                            emphasis: {
                                label: {
                                    show: true
                                }
                            }
                        },
                        data: [{
                            name: '北京',
                            value:  peoples[0],
                            tipData:[ peoples[0],peoples[0]]
                        },
                            {
                                name: '天津',
                                value: peoples[1],
                                tipData: [peoples[1],peoples[1]]
                            },
                            {
                                name: '上海',
                                value: peoples[2],
                                tipData: [peoples[2], peoples[2]]
                            },
                            {
                                name: '重庆',
                                value: peoples[3],
                                tipData: [peoples[3], peoples[3]]
                            },
                            {
                                name: '河北',
                                value: peoples[4],
                                tipData: [peoples[4], peoples[4]]
                            },
                            {
                                name: '河南',
                                value: peoples[5],
                                tipData: [peoples[5], peoples[5]]
                            },
                            {
                                name: '云南',
                                value:peoples[6],
                                tipData: [peoples[6], peoples[6]]
                            },
                            {
                                name: '辽宁',
                                value: peoples[7],
                                tipData: [peoples[7],peoples[7]]
                            },
                            {
                                name: '黑龙江',
                                value: peoples[8],
                                tipData: [peoples[8],peoples[8]]
                            },
                            {
                                name: '湖南',
                                value: peoples[9],
                                tipData: [peoples[9], peoples[9]]
                            },
                            {
                                name: '安徽',
                                value: peoples[10],
                                tipData: [peoples[10], peoples[10]]
                            },
                            {
                                name: '山东',
                                value: peoples[11],
                                tipData: [peoples[11], peoples[11]]
                            },
                            {
                                name: '新疆',
                                value: peoples[12],
                                tipData: [peoples[12], peoples[12]]
                            },
                            {
                                name: '江苏',
                                value: peoples[13],
                                tipData: [peoples[13], peoples[13]]
                            },
                            {
                                name: '浙江',
                                value: peoples[14],
                                tipData: [peoples[14],peoples[14]]
                            },
                            {
                                name: '江西',
                                value: peoples[15],
                                tipData: [peoples[15], peoples[15]]
                            },
                            {
                                name: '湖北',
                                value: peoples[16],
                                tipData: [peoples[16], peoples[16]]
                            },
                            {
                                name: '广西',
                                value: peoples[17],
                                tipData: [peoples[17],peoples[17]]
                            },
                            {
                                name: '甘肃',
                                value: peoples[18],
                                tipData: [peoples[18], peoples[18]]
                            },
                            {
                                name: '山西',
                                value: peoples[19],
                                tipData: [peoples[19], peoples[19]]
                            },
                            {
                                name: '内蒙古',
                                value:peoples[20],
                                tipData: [peoples[20], peoples[20]]
                            },
                            {
                                name: '陕西',
                                value: peoples[21],
                                tipData: [peoples[21],peoples[21]]
                            },
                            {
                                name: '吉林',
                                value: peoples[22],
                                tipData: [peoples[22],peoples[22]]
                            },
                            {
                                name: '福建',
                                value: peoples[23],
                                tipData: [peoples[23],peoples[23]]
                            },
                            {
                                name: '贵州',
                                value: peoples[24],
                                tipData: [peoples[24],peoples[24]]
                            },
                            {
                                name: '广东',
                                value: peoples[25],
                                tipData: [peoples[25],peoples[25]]
                            },
                            {
                                name: '青海',
                                value: peoples[26],
                                tipData: [peoples[26],peoples[26]]
                            },
                            {
                                name: '西藏',
                                value: peoples[27],
                                tipData: [peoples[27], peoples[27]]
                            },
                            {
                                name: '四川',
                                value: peoples[28],
                                tipData: [peoples[28],peoples[28] ]
                            },
                            {
                                name: '宁夏',
                                value:peoples[29],
                                tipData: [peoples[29], peoples[29]]
                            },
                            {
                                name: '海南',
                                value: peoples[30],
                                tipData: [peoples[30], peoples[30]]
                            },
                            {
                                name: '台湾',
                                value: peoples[31],
                                tipData: [peoples[31], peoples[31]]
                            },
                            {
                                name: '香港',
                                value: peoples[32],
                                tipData: [peoples[32],peoples[32]]
                            },
                            {
                                name: '澳门',
                                value: peoples[33],
                                tipData: [peoples[33], peoples[33]]
                            },
                        ]
                    }, ]
                }
                var count = 0;
                var timeTicket = null;
                var dataLength = option.series[0].data.length;
                timeTicket && clearInterval(timeTicket);
                timeTicket = setInterval(function() {
                    myChart.dispatchAction({
                        type: 'downplay',
                        seriesIndex: 0,
                    });
                    myChart.dispatchAction({
                        type: 'highlight',
                        seriesIndex: 0,
                        dataIndex: (count) % dataLength
                    });
                    myChart.dispatchAction({
                        type: 'showTip',
                        seriesIndex: 0,
                        dataIndex: (count) % dataLength
                    });
                    count++;
                }, 1000);
                myChart.on('mouseover', function(params) {
                    //console.log(params)
                    clearInterval(timeTicket);
                    myChart.dispatchAction({
                        type: 'downplay',
                        seriesIndex: 0
                    });
                    myChart.dispatchAction({
                        type: 'highlight',
                        seriesIndex: 0,
                        dataIndex: params.dataIndex
                    });
                    myChart.dispatchAction({
                        type: 'showTip',
                        seriesIndex: 0,
                        dataIndex: params.dataIndex,
                    });
                });
                myChart.on('mouseout', function(params) {
                    timeTicket && clearInterval(timeTicket);
                    timeTicket = setInterval(function() {
                        myChart.dispatchAction({
                            type: 'downplay',
                            seriesIndex: 0,
                        });
                        myChart.dispatchAction({
                            type: 'highlight',
                            seriesIndex: 0,
                            dataIndex: (count) % dataLength
                        });
                        myChart.dispatchAction({
                            type: 'showTip',
                            seriesIndex: 0,
                            dataIndex: (count) % dataLength
                        });
                        count++;
                    }, 1000);
                });
                // 使用刚指定的配置项和数据显示图表。
                myChart.setOption(option);
            </script>

            <div class="clearfix"></div><hr/>
            <div id="mainViewAction" style="width: 1000px;height:600px;"></div>
            <script type="text/javascript">
                // 基于准备好的dom，初始化echarts实例
                var myChartViewAction = echarts.init(document.getElementById('mainViewAction'));

                var viewAction = [];
                for(var i=0; i<31; i++)
                    viewAction[i] = 0;

                $.ajax({
                    url:'/getAu',
                    type:'post',
                    dataType:'json',
                    async:false,
                    success(res){
                        viewAction = res;
                    },
                    error(){
                        alert("申请数据失败！");
                    }
                });

                // 指定图表的配置项和数据
                var xData = function() {
                    var data = [];
                    for(var i = 1; i < 32; i++) {
                        data.push(i + "号");
                    }
                    return data;
                }();
                var color = ['#1a9bfc']
                var temp = ['当天用户点击量']
                var data = [];

                var series = [];
                series.push({
                    name: temp[0],
                    type: "line",
                    symbolSize: 8,
                    symbol: 'circle',
                    itemStyle: {
                        normal: {
                            color: color[0],
                            lineStyle: {
                                width: 1,
                                type: 'dotted' //'dotted'虚线 'solid'实线
                            },
                            barBorderRadius: 0,
                            label: {
                                show: false,
                            }
                        }
                    },
                    data: viewAction,
                })
                option = {
                    backgroundColor: "#04243E",
                    legend: {
                        top: 20,
                        textStyle: {
                            color: '#fff',
                            fontSize: '12'
                        },
                        data: temp,
                    },
                    dataZoom: [{ // 这个dataZoom组件，默认控制x轴。
                        type: 'slider', // 这个 dataZoom 组件是 slider 型 dataZoom 组件
                        start: 10, // 左边在 10% 的位置。
                        end: 40 // 右边在 40% 的位置。
                    }],
                    title: {
                        text: "7月用户点击量总览",
                        textStyle: {
                            color: '#fff',
                            fontSize: '22',
                            fontWeight: 'normal',
                        },
                        subtextStyle: {
                            color: '#90979c',
                            fontSize: '16',

                        },
                    },
                    tooltip: {
                        trigger: "axis",
                        axisPointer: { // 坐标轴指示器，坐标轴触发有效
                            type: 'line', // 默认为直线，可选为：'line' | 'shadow'
                        },
                        formatter: '{b}<br />{a0}: {c0}',
                        backgroundColor: 'rgba(0,0,0,0.7)', // 背景
                        padding: [8, 10], //内边距
                        extraCssText: 'box-shadow: 0 0 3px rgba(255, 255, 255, 0.4);', //添加阴影
                    },
                    grid: {
                        borderWidth: 0,
                        top: 110,
                        bottom: 95,
                        textStyle: {
                            color: "#fff"
                        }
                    },
                    xAxis: [{
                        type: "category",
                        axisLine: {
                            lineStyle: {
                                color: '#32346c'
                            }
                        },
                        splitLine: {
                            show: false
                        },
                        axisTick: {
                            show: false
                        },
                        splitArea: {
                            show: false
                        },
                        axisLabel: {
                            inside: false,
                            textStyle: {
                                color: '#bac0c0',
                                fontWeight: 'normal',
                                fontSize: '12',
                            },
                        },
                        data: xData,
                    }],
                    yAxis: {
                        type: 'value',
                        axisTick: {
                            show: false
                        },
                        axisLine: {
                            show: true,
                            lineStyle: {
                                color: '#32346c',
                            }
                        },
                        splitLine: {
                            show: true,
                            lineStyle: {
                                color: '#32346c ',
                            }
                        },
                        axisLabel: {
                            textStyle: {
                                color: '#bac0c0',
                                fontWeight: 'normal',
                                fontSize: '12',
                            },
                            formatter: '{value}',
                        },
                    },
                    series: series,
                };

                // 使用刚指定的配置项和数据显示图表。
                myChartViewAction.setOption(option);
            </script>

            <div class="clearfix"></div><hr/>
            <div align="center">
                <script>
                    $.ajax({
                        url : "/getNameTop10",
                        type : "post",
                        dataType : "json",
                        success(result){
                            var data = eval('result');
                            var selectid = $('#selectNameTop10');
                            var html = "";
                            for(var i=0; i < data.length; i++){
                                if(data[i] != "电脑") {
                                    html += "<option value = " + (i + 1) + ">" + data[i] + "</option>";
                                }
                                else
                                    break;
                            }
                            selectid.html(html);
                        }
                    });
                </script>
                <select id="selectNameTop10" style="background:#04243E;color: white;float:right;">
                    <option selected="selected" disabled="disabled">请选择商品</option>
                </select>
            </div>
            <div id="mainComment" style="width: 1000px;height:600px; ">
            </div>
            <script type="text/javascript">
                // 基于准备好的dom，初始化echarts实例
                var myChart = echarts.init(document.getElementById('mainComment'));
                $(function() {
                    _ajax(1);
                    $('#selectNameTop10').on('change', function() {
                        var val = $(this).val();
                        _ajax(val);
                    });
                });
                function _ajax(len) {
                    $.ajax({
                        url: '/getGoodComment?number='+len,
                        type: 'get',
                        dataType:'json',
                        success: function(res) {
                            // 指定图表的配置项和数据
                            var data = eval('res');
                            // 指定图表的配置项和数据
                            var scaleData = [{
                                'name': '一星评价',
                                'value': data[0]*100
                            },
                                {
                                    'name': '二星评价',
                                    'value': data[1]*100
                                },
                                {
                                    'name': '三星评价',
                                    'value': data[2]*100
                                },
                                {
                                    'name': '四星评价',
                                    'value': data[3]*100
                                },
                                {
                                    'name': '五星评价',
                                    'value': data[4]*100
                                }
                            ];
                            var rich = {
                                white: {
                                    color: '#ddd',
                                    align: 'center',
                                    padding: [5, 0]
                                }
                            };
                            var placeHolderStyle = {
                                normal: {
                                    label: {
                                        show: false
                                    },
                                    labelLine: {
                                        show: false
                                    },
                                    color: 'rgba(0, 0, 0, 0)',
                                    borderColor: 'rgba(0, 0, 0, 0)',
                                    borderWidth: 0
                                }
                            };
                            var data = [];
                            for (var i = 0; i < scaleData.length; i++) {
                                data.push({
                                    value: scaleData[i].value,
                                    name: scaleData[i].name,
                                    itemStyle: {
                                        normal: {
                                            borderWidth: 5,
                                            shadowBlur: 30,
                                            borderColor: new echarts.graphic.LinearGradient(0, 0, 1, 1, [{
                                                offset: 0,
                                                color: '#7777eb'
                                            }, {
                                                offset: 1,
                                                color: '#70ffac'
                                            }]),
                                            shadowColor: 'rgba(142, 152, 241, 0.6)'
                                        }
                                    }
                                }, {
                                    value: 4,
                                    name: '',
                                    itemStyle: placeHolderStyle
                                });
                            }
                            var seriesObj = [{
                                name: '',
                                type: 'pie',
                                clockWise: false,
                                radius: [195, 200],
                                hoverAnimation: false,
                                itemStyle: {
                                    normal: {
                                        label: {
                                            show: true,
                                            position: 'outside',
                                            color: '#ddd',
                                            formatter: function (params) {
                                                var percent = 0;
                                                var total = 0;
                                                for(var i = 0; i < scaleData.length; i++) {
                                                    total += scaleData[i].value;
                                                }
                                                percent = ((params.value / total) * 100).toFixed(0);
                                                if (params.name !== '') {
                                                    return params.name + '\n{white|' + '占比' + percent + '%}';
                                                } else {
                                                    return '';
                                                }
                                            },
                                            rich: rich
                                        },
                                        labelLine: {
                                            show: false
                                        }
                                    }
                                },
                                data: data
                            }];
                            option = {
                                title: {
                                    text: "本月商品评价总览",
                                    textStyle: {
                                        color: '#fff',
                                        fontSize: '22',
                                        fontWeight: 'normal',
                                    },
                                    subtextStyle: {
                                        color: '#90979c',
                                        fontSize: '16',
                                    },
                                },
                                backgroundColor: '#04243E',
                                tooltip: {
                                    show: false
                                },
                                legend: {
                                    show: false
                                },
                                toolbox: {
                                    show: false
                                },
                                series: seriesObj
                            };
                            // 使用刚指定的配置项和数据显示图表。
                            myChart.setOption(option);
                        }
                    });
                }
            </script>

            <div class="clearfix"> </div>
        </div>
    </div>
    <!--footer-->
    <div class="footer"  style="background: #424a5d">
        <p>南开大学实训小组</p>
    </div>
    <!--//footer-->
</div>
</body>
<!-- Classie -->
<script src="../js/classie.js"></script>
<script>
    var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
        showLeftPush = document.getElementById( 'showLeftPush' ),
        body = document.body;
    showLeftPush.onclick = function() {
        classie.toggle( this, 'active' );
        classie.toggle( body, 'cbp-spmenu-push-toright' );
        classie.toggle( menuLeft, 'cbp-spmenu-open' );
        disableOther( 'showLeftPush' );
    };
    function disableOther( button ) {
        if( button !== 'showLeftPush' ) {
            classie.toggle( showLeftPush, 'disabled' );
        }
    }
</script>
<!--scrolling js-->
<script src="../js/jquery.nicescroll.js"></script>
<script src="../js/scripts.js"></script>
<!--//scrolling js-->
<!-- Bootstrap Core JavaScript -->
<script src="../js/bootstrap.js"> </script>
</html>