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
    <!-- chart -->
    <script src="../js/Chart.js"></script>
    <!-- //chart -->
    <!--Calender-->
    <link rel="stylesheet" href="../css/clndr.css" type="text/css" />
    <script src="../js/underscore-min.js" type="text/javascript"></script>
    <script src= "../js/moment-2.2.1.js" type="text/javascript"></script>
    <script src="../js/clndr.js" type="text/javascript"></script>
    <script src="../js/site.js" type="text/javascript"></script>
    <!--End Calender-->
    <!-- Metis Menu -->
    <script src="../js/metisMenu.min.js"></script>
    <script src="../js/custom.js"></script>
    <link href="../css/custom.css" rel="stylesheet">
    <!--//Metis Menu -->
</head>
<body class="cbp-spmenu-push" style="font-family:'calisto mt'">
<div class="main-content">
    <!--left-fixed -navigation-->
    <div class=" sidebar" role="navigation">
        <div class="navbar-collapse">
            <nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
                <ul class="nav" id="side-menu">
                    <li>
                        <a href="InfoView.jsp" class="active" style="font-family:'楷体'"><i class="fa fa-home nav_icon"></i>信息汇总</a>
                    </li>
                    <li>
                        <a href="getgood.jsp" style="font-family:'楷体'"><i class="fa fa-table nav_icon"></i>进货计划<span class="nav-badge">03</span></a>
                    </li>
                    <li>
                        <a href="comment1.jsp" style="font-family:'楷体'"><i class="fa fa-book nav_icon"></i>客户评价<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse" style="font-family:'楷体'">
                            <li>
                                <a href="comment1.jsp">1星评价</a>
                            </li>
                            <li>
                                <a href="comment2.jsp">2星评价</a>
                            </li>
                            <li>
                                <a href="comment3.jsp">3星评价</a>
                            </li>
                            <li>
                                <a href="comment4.jsp">4星评价</a>
                            </li>
                            <li>
                                <a href="comment5.jsp">5星评价</a>
                            </li>
                        </ul>
                        <!-- /nav-second-level -->
                    </li>
                    <li>
                        <a href="CustomerView.jsp"  style="font-family:'楷体'"><i class="fa fa-bar-chart nav_icon"></i>客户总览</a>
                    </li>
                    <li>
                        <a href="AdminInfo.jsp" style="font-family:'楷体'"><i class="fa fa-check-square-o nav_icon"></i>我的信息<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse" style="font-family:'楷体'">
                            <li>
                                <a href="AdminInfo.jsp">查看</a>
                            </li>
                            <li>
                                <a href="PwdModify.jsp">密码修改</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="grids.jsp" style="font-family:'楷体'"><i class="fa fa-cogs nav_icon" ></i>设置<span class="nav-badge">12</span> <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse" style="font-family:'楷体'">
                            <li>
                                <a href="grids.jsp">菜单设置</a>
                            </li>
                            <li>
                                <a href="media.jsp">媒体设置</a>
                            </li>
                        </ul>
                        <!-- /nav-second-level -->
                    </li>
                </ul>
                <!-- //sidebar-collapse -->
            </nav>
        </div>
    </div>
    <!--left-fixed -navigation-->
    <!-- header-starts -->
    <div class="sticky-header header-section ">
        <div class="header-left">
            <!--toggle button start-->
            <button id="showLeftPush"><i class="fa fa-bars"></i></button>
            <!--toggle button end-->
            <!--logo -->
            <div class="logo" style="width:230px">
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
                                    <p style="font-family:'calisto mt';font-style: italic;">NKU</p>
                                    <span style="font-family:'calisto mt';font-style: italic;">Administrator</span>
                                </div>
                                <i class="fa fa-angle-down lnr"></i>
                                <i class="fa fa-angle-up lnr"></i>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                        <ul class="dropdown-menu drp-mnu">
                            <li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li>
                            <li> <a href="AdminInfo.jsp"><i class="fa fa-user"></i> Profile</a> </li>
                            <li> <a href="#"><i class="fa fa-sign-out"></i> Logout</a> </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="clearfix"> </div>
    </div>
    <!-- //header-ends -->
    <!-- main content start-->
    <div id="page-wrapper">
        <div class="main-page">
            <!--  走马灯设计  -->


            <div style="height:300px;padding-left:1em; padding-right: 1em;" id="myCarousel" class="carousel slide">
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
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
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
            <div class="charts">
                <div class="col-md-4 charts-grids widget">
                    <h4 class="title" style="font-family:'楷体">今年和去年的各月销售情况</h4>
                    <canvas id="bar" height="300" width="400"> </canvas>
                    <span><font size="3" color="#e94e02" style="font-family:'calisto mt';font-style: italic;">LastYear</font></span>
                        <span><font size="3" color="#4F52BA" style="font-family:'calisto mt';font-style: italic;">ThisYear</font></span>
                </div>
                <div class="col-md-4 charts-grids widget states-mdl">
                    <h4 class="title" style="font-family:'楷体">Line Chart Example</h4>
                    <canvas id="line" height="300" width="400"> </canvas>
                    <span><font size="3" color="#F2B33F" style="font-family:'calisto mt';font-style: italic;">Litature</font></span>
                        <span><font size="3" color="#9358ac" style="font-family:'calisto mt';font-style: italic;">Houseware</font></span>
                </div>
                <div class="col-md-4 charts-grids widget">
                    <h4 class="title" style="font-family:'楷体"><a href="index.jsp">商品销售情况...</a></h4>
                    <canvas id="pie" height="300" width="400"> </canvas>
                    <br/>
                    <span><font size="3" color="seagreen" style="font-family:'calisto mt';font-style: italic;">Jan</font></span>
                </div>
                <div class="clearfix"> </div>
                <script>
                    var barChartData = {
                        labels : ["Jan","Feb","March","April","May","June","July"],
                        datasets : [
                            {
                                fillColor : "rgba(233, 78, 2, 0.9)",
                                strokeColor : "rgba(233, 78, 2, 0.9)",
                                highlightFill: "#e94e02",
                                highlightStroke: "#e94e02",
                                data : [65,59,90,81,56,55,40]

                            },
                            {
                                fillColor : "rgba(79, 82, 186, 0.9)",
                                strokeColor : "rgba(79, 82, 186, 0.9)",
                                highlightFill: "#4F52BA",
                                highlightStroke: "#4F52BA",
                                data : [40,70,55,20,45,70,60]
                            }
                        ]
                    };
                    var lineChartData = {
                        labels : ["Jan","Feb","March","April","May","June","July"],
                        datasets : [
                            {
                                fillColor : "rgba(242, 179, 63, 1)",
                                strokeColor : "#F2B33F",
                                pointColor : "rgba(242, 179, 63, 1)",
                                pointStrokeColor : "#fff",
                                data : [70,60,72,61,75,59,80]

                            },
                            {
                                fillColor : "rgba(97, 100, 193, 1)",
                                strokeColor : "#6164C1",
                                pointColor : "rgba(97, 100, 193,1)",
                                pointStrokeColor : "#9358ac",
                                data : [50,65,51,67,52,64,50]

                            }
                        ]

                    };
                    var pieData = [
                        {
                            value: 90,
                            color:"rgba(233, 78, 2, 1)",
                            label: "Product 1"
                        },
                        {
                            value : 50,
                            color : "rgba(242, 179, 63, 1)",
                            label: "Product 2"
                        },
                        {
                            value : 60,
                            color : "rgba(88, 88, 88,1)",
                            label: "Product 3"
                        },
                        {
                            value : 40,
                            color : "rgba(79, 82, 186, 1)",
                            label: "Product 4"
                        }

                    ];

                    new Chart(document.getElementById("line").getContext("2d")).Line(lineChartData);
                    new Chart(document.getElementById("bar").getContext("2d")).Bar(barChartData);
                    new Chart(document.getElementById("pie").getContext("2d")).Pie(pieData);

                </script>

            </div>
            <div class="row">
                <div class="col-md-4 stats-info widget">
                    <div class="stats-title">
                        <h4 class="title" style="font-family:'楷体">用户年龄信息</h4>
                    </div>
                    <div class="stats-body">
                        <ul class="list-unstyled">
                            <li>15~18 years <span class="pull-right">15%</span>
                                <div class="progress progress-striped active progress-right">
                                    <div class="bar green" style="width:15%;"></div>
                                </div>
                            </li>
                            <li>19~25 years <span class="pull-right">25%</span>
                                <div class="progress progress-striped active progress-right">
                                    <div class="bar yellow" style="width:25%;"></div>
                                </div>
                            </li>
                            <li>26~35 years<span class="pull-right">25%</span>
                                <div class="progress progress-striped active progress-right">
                                    <div class="bar red" style="width:25%;"></div>
                                </div>
                            </li>
                            <li>36~45 years <span class="pull-right">20%</span>
                                <div class="progress progress-striped active progress-right">
                                    <div class="bar blue" style="width:20%;"></div>
                                </div>
                            </li>
                            <li>46~55 years <span class="pull-right">10%</span>
                                <div class="progress progress-striped active progress-right">
                                    <div class="bar light-blue" style="width:10%;"></div>
                                </div>
                            </li>
                            <li class="last">Others <span class="pull-right">5%</span>
                                <div class="progress progress-striped active progress-right">
                                    <div class="bar orange" style="width:5%;"></div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-8 stats-info stats-last widget-shadow">
                    <table class="table stats-table " style="font-family:'楷体">
                        <thead>
                        <tr>
                            <th>编号</th>
                            <th>商品</th>
                            <th>销售状态</th>
                            <th>销售量进展</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Lorem ipsum</td>
                            <td><span class="label label-success">In progress</span></td>
                            <td><h5>85% <i class="fa fa-level-up"></i></h5></td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Aliquam</td>
                            <td><span class="label label-warning">New</span></td>
                            <td><h5>35% <i class="fa fa-level-up"></i></h5></td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Lorem ipsum</td>
                            <td><span class="label label-danger">Overdue</span></td>
                            <td><h5  class="down">40% <i class="fa fa-level-down"></i></h5></td>
                        </tr>
                        <tr>
                            <th scope="row">4</th>
                            <td>Aliquam</td>
                            <td><span class="label label-info">Out of stock</span></td>
                            <td><h5>100% <i class="fa fa-level-up"></i></h5></td>
                        </tr>
                        <tr>
                            <th scope="row">5</th>
                            <td>Lorem ipsum</td>
                            <td><span class="label label-success">In progress</span></td>
                            <td><h5 class="down">10% <i class="fa fa-level-down"></i></h5></td>
                        </tr>
                        <tr>
                            <th scope="row"><a href="index.jsp"><font color="#269ABC">More...</font></a></th>

                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="row">
                <div class="col-md-8 map widget-shadow">
                    <h4 class="title" style="font-family:'楷体">用户地域分析</h4>
                    <div class="map_container"><div id="vmap" style="width: 90%; height: 215px;"></div></div>
                    <!--map js-->
                    <link href="../css/jqvmap.css" rel="stylesheet" type="text/css" />
                    <script src="../js/jquery.vmap.js"></script>
                    <script src="../js/jquery.vmap.sampledata.js" type="text/javascript"></script>
                    <script src="../js/jquery.vmap.world.js" type="text/javascript"></script>
                    <script type="text/javascript">
                        jQuery(document).ready(function() {
                            jQuery('#vmap').vectorMap({
                                map: 'world_en',
                                backgroundColor: '#fff',
                                color: '#696565',
                                hoverOpacity: 0.8,
                                selectedColor: '#696565',
                                enableZoom: true,
                                showTooltip: true,
                                values: sample_data,
                                scaleColors: ['#585858', '#696565'],
                                normalizeFunction: 'polynomial'
                            });
                        });
                    </script>
                    <!-- //map js -->
                </div>
                <div class="col-md-4 social-media widget-shadow">
                    <h4 class="title" style="font-family:'楷体"><a href="index.jsp">用户评价...</a></h4>
                    <div class="polar-area">
                        <canvas id="polarArea" height="342" width="400" style="width: 400px; height: 342px;"></canvas>
                    </div>
                </div>
                <div class="clearfix"> </div>
                <script>
                    var chartData = [
                        {
                            value : Math.random(),
                            color: "rgba(239, 85, 58, 0.87)"
                        },
                        {
                            value : Math.random(),
                            color: "rgba(242, 179, 63, 0.87)"
                        },
                        {
                            value : Math.random(),
                            color: "rgba(88, 88, 88, 0.87)"
                        },
                        {
                            value : Math.random(),
                            color: "rgba(147, 88, 172, 0.87)"
                        },
                        {
                            value : Math.random(),
                            color: "rgba(79, 82, 186, 0.87)"
                        },
                    ];
                    new Chart(document.getElementById("polarArea").getContext("2d")).PolarArea(chartData);
                </script>
            </div>

            <div class="row calender widget-shadow">
                <h4 class="title" style="font-family:'楷体">日历</h4>
                <div class="cal1">

                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <!--footer-->
    <div class="footer">
        <p>南开大学实训小组</p>
    </div>
    <!--//footer-->
</div>
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
</body>
</html>
