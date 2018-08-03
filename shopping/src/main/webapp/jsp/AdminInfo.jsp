<%@ page import="com.chinasofti.ssm.domain.Admin" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AdminInfoView</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- 主体部分配置 -->
    <!-- css -->
    <link rel="stylesheet" href="../css/style1.css" type="text/css" media="all" />
    <!--// css -->
    <link rel="stylesheet" href="../css/owl.carousel.css" type="text/css" media="all">
    <link href="../css/owl.theme.css" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="../css/cm-overlay.css" />
    <link href="http://fonts.googleapis.com/css?family=Roboto+Slab:100,300,400,700" rel="stylesheet">
    <!-- menu -->
    <link rel="stylesheet" href="../css/main.css">
    <script type="text/javascript" src="../js/main.js"></script>
    <!-- //menu -->
    <script>
        $(document).ready(function() {
            $("#owl-demo").owlCarousel({

                autoPlay: 3000, //Set AutoPlay to 3 seconds
                autoPlay:true,
                items : 3,
                itemsDesktop : [640,5],
                itemsDesktopSmall : [414,4]

            });

        });
    </script>

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
    <!-- Metis Menu -->
    <script src="../js/metisMenu.min.js"></script>
    <script src="../js/custom.js"></script>
    <link href="../css/custom.css" rel="stylesheet">
    <!--//Metis Menu -->
</head>
<body class="cbp-spmenu-push" style="font-family:'calisto mt'">
<div class="main-content" onload="getData()">
    <!--left-fixed -navigation-->
    <div class=" sidebar" role="navigation">
        <div class="navbar-collapse">
            <nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
                <ul class="nav" id="side-menu">
                    <li>
                        <a href="/InfoView"  style="font-family:'楷体'"><i class="fa fa-home nav_icon"></i>信息汇总</a>
                    </li>
                    <li>
                        <a href="/getgood" style="font-family:'楷体'"><i class="fa fa-table nav_icon"></i>进货计划<span class="nav-badge">03</span></a>
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
                        <a href="/AdminInfo"  class="active" style="font-family:'楷体'"><i class="fa fa-check-square-o nav_icon"></i>我的信息<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse" style="font-family:'楷体'">
                            <li>
                                <a href="/AdminInfo">查看</a>
                            </li>
                            <li>
                                <a href="/PwdModify">密码修改</a>
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
    <div id="page-wrapper" style="padding: 0;position: relative; font-family:'楷体'"  >
        <div class="main-page">
            <!-- 传参 -->
            <%
                Admin admin = (Admin) session.getAttribute("admin");
            %>
            <!-- banner -->
            <div class="banner" id="home">
                <div class="container" style="width:90%">
                    <div class="agile-logo">
                        <h1 style="font-family:'calisto mt'"><a href="index.html">Creative<span>Resume</span></a></h1>
                    </div>
                    <div class="w3l-banner-grids">
                        <div class="col-md-8 w3ls-banner-right">
                            <div class="banner-right-img">
                                <img src="../images/1.jpg" alt="" />
                            </div>
                            <div class="banner-right-info" >
                                <p><%=admin.getAdminMessage()%></p>
                            </div>
                            <div class="clearfix"> </div>
                            <div class="w3-button">
                                <div class="w3-button-info m_nav_item">
                                    <a class="hvr-sweep-to-bottom" href="#contact" style="font-family:'calisto mt'">Contact Me</a>
                                </div>
                                <br/>
                            </div>
                        </div>
                        <div class="col-md-4 w3ls-banner-left">
                            <div class="w3ls-banner-left-info">
                                <h4>职衔</h4>
                                <p><%=admin.getAdminTitle()%></p>
                            </div>
                            <div class="w3ls-banner-left-info">
                                <h4>姓名</h4>
                                <p><%=admin.getAdminName()%></p>
                            </div>
                            <div class="w3ls-banner-left-info">
                                <h4>性别</h4>
                                <p><%=admin.getAdminGender()%></p>
                            </div>
                            <div class="w3ls-banner-left-info">
                                <h4>电话</h4>
                                <p><%=admin.getAdminTel()%></p>
                            </div>
                            <div class="w3ls-banner-left-info">
                                <h4>邮箱</h4>
                                <p><a href="mailto:example@email.com" style="font-family:'calisto mt'"><%=admin.getAdminEmail()%></a></p>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
            <!-- about -->
            <div class="about" id="about">
                <div class="container" style="width: 90%;">
                    <div class="wthree-about-grids">
                        <div class="col-md-6 wthree-about-left" style="width: 45%" style="font-family:'calisto mt'">
                            <h3>About Me</h3>
                            <p><%=admin.getAdminMessage()%></p>
                        </div>>
                        <div class="col-md-6 wthree-about-right">
                            <h3>Skills</h3>
                            <div class="skills-bar">
                                <section class='bar'>
                                    <section class='wrap'>
                                        <div class='wrap_right'>
                                            <div class='bar_group'>
                                                <div class='bar_group__bar thin' label='jQuery' show_values='true' tooltip='true' value='343'></div>
                                                <div class='bar_group__bar thin' label='AJAX' show_values='true' tooltip='true' value='235'></div>
                                                <div class='bar_group__bar thin' label='PHP' show_values='true' tooltip='true' value='675'></div>
                                                <div class='bar_group__bar thin' label='SASS' show_values='true' tooltip='true' value='456'></div>
                                                <div class='bar_group__bar thin' label='HTML' show_values='true' tooltip='true' value='245'></div>
                                            </div>
                                        </div>
                                        <div class='clear'></div>
                                    </section>
                                </section>
                            </div>
                        </div >
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
            <!-- //about -->
            <!-- contact -->
            <div class="contact" id="contact">
                <div class="container" style="width: 90%">
                    <div class="w3-agileits-statistics-heading experience-heading">
                        <h3 style="font-family:'calisto mt'">Contact Me</h3>
                    </div>
                    <div class="contact-form">
                        <form action="/updateadmin" method="post">
                            <div class="fields-grid">
                                <div class="styled-input agile-styled-input-top">
                                    <input type="text" id="adminName" name="adminName" value="<%=admin.getAdminName()%>" required="">
                                    <label>我的昵称*</label>
                                    <span></span>
                                </div>
                                <div class="styled-input agile-styled-input-top">
                                    <input type="text" id="adminTel" name="adminTel" value="<%=admin.getAdminTel()%>" required="">
                                    <label>我的电话*</label>
                                    <span></span>
                                </div>
                                <div class="styled-input">
                                    <input type="text" id="adminEmail" name="adminEmail" value="<%=admin.getAdminEmail()%>" required="">
                                    <label>我的邮件*</label>
                                    <span></span>
                                </div>
                                <div class="styled-input">
                                    <input type="text" id="adminGender" name="adminGender" value="<%=admin.getAdminGender()%>" required="">
                                    <label>我的性别*</label>
                                    <span></span>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="styled-input textarea-grid">
                                <textarea id="adminMessage"  name="adminMessage" required=""><%=admin.getAdminMessage()%></textarea>
                                <label>我的个性简介</label>
                                <span></span>
                            </div>
                            <input type="submit" value="SEND"  id="submit" >
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!--footer-->
    <div class="footer" style="position: relative">
        <p>南开大学实训小组</p>
    </div>
    <!--//footer-->
</div>
</body>
<!--  contact me 更新部分的script代码  -->
<script src="../js/bars.js"></script>
<script src="../js/owl.carousel.js"></script>
<!-- //contact -->

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












