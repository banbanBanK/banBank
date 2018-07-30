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
    <link rel="stylesheet" href="css/main.css">
    <script type="text/javascript" src="js/main.js"></script>
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
                        <a href="InfoView.jsp" class="active" style="font-family:'楷体"><i class="fa fa-home nav_icon"></i>信息汇总</a>
                    </li>
                    <li>
                        <a href="getgood.jsp" style="font-family:'楷体"><i class="fa fa-table nav_icon"></i>进货计划<span class="nav-badge">03</span></a>
                    </li>
                    <li>
                        <a href="type1.jsp" style="font-family:'楷体"><i class="fa fa-file-text-o nav_icon"></i>价格调整<span class="nav-badge-btm">02</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse" style="font-family:'楷体">
                            <li>
                                <a href="type1.jsp">类型1</a>
                            </li>
                            <li>
                                <a href="type2.jsp">类型2</a>
                            </li>
                            <li>
                                <a href="type3.jsp">类型3</a>
                            </li>
                        </ul>
                        <!-- //nav-second-level -->
                    </li>
                    <li>
                        <a href="AdminInfo.jsp" style="font-family:'楷体"><i class="fa fa-check-square-o nav_icon"></i>我的信息<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse" style="font-family:'楷体">
                            <li>
                                <a href="AdminInfo.jsp">查看</a>
                            </li>
                            <li>
                                <a href="PwdModify.jsp">密码修改</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="grids.jsp" style="font-family:'楷体"><i class="fa fa-cogs nav_icon" ></i>设置<span class="nav-badge">02</span> <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse" style="font-family:'楷体">
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
            <div class="logo">
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
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-envelope"></i><span class="badge">3</span></a>
                        <ul class="dropdown-menu">
                            <li>
                                <div class="notification_header">
                                    <h3>You have 3 new messages</h3>
                                </div>
                            </li>
                            <li><a href="#">
                                <div class="user_img"><img src="../images/1.png" alt=""></div>
                                <div class="notification_desc">
                                    <p>Lorem ipsum dolor amet</p>
                                    <p><span>1 hour ago</span></p>
                                </div>
                                <div class="clearfix"></div>
                            </a></li>
                            <li class="odd"><a href="#">
                                <div class="user_img"><img src="../images/2.png" alt=""></div>
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
                                    <a href="#">See all messages</a>
                                </div>
                            </li>
                        </ul>
                    </li>
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
                    <li class="dropdown head-dpdn">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i><span class="badge blue1">15</span></a>
                        <ul class="dropdown-menu">
                            <li>
                                <div class="notification_header">
                                    <h3>You have 8 pending task</h3>
                                </div>
                            </li>
                            <li><a href="#">
                                <div class="task-info">
                                    <span class="task-desc">Database update</span><span class="percentage">40%</span>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="progress progress-striped active">
                                    <div class="bar yellow" style="width:40%;"></div>
                                </div>
                            </a></li>
                            <li><a href="#">
                                <div class="task-info">
                                    <span class="task-desc">Dashboard done</span><span class="percentage">90%</span>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="progress progress-striped active">
                                    <div class="bar green" style="width:90%;"></div>
                                </div>
                            </a></li>
                            <li><a href="#">
                                <div class="task-info">
                                    <span class="task-desc">Mobile App</span><span class="percentage">33%</span>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="progress progress-striped active">
                                    <div class="bar red" style="width: 33%;"></div>
                                </div>
                            </a></li>
                            <li><a href="#">
                                <div class="task-info">
                                    <span class="task-desc">Issues fixed</span><span class="percentage">80%</span>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="progress progress-striped active">
                                    <div class="bar  blue" style="width: 80%;"></div>
                                </div>
                            </a></li>
                            <li>
                                <div class="notification_bottom">
                                    <a href="#">See all pending tasks</a>
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
    <div id="page-wrapper" >
        <div class="main-page">

            <!-- banner -->
            <div class="banner" id="home">
                <div class="container">
                    <div class="agile-logo">
                        <h1><a href="index.html">Creative<span>Resume</span></a></h1>
                    </div>
                    <div class="w3l-banner-grids">
                        <div class="col-md-8 w3ls-banner-right">
                            <div class="banner-right-img">
                                <img src="../images/1.jpg" alt="" />
                            </div>
                            <div class="banner-right-info">
                                <h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent scelerisque tellus dignissim dolor dignissim, sit amet convallis nisi dignissim.</h2>
                                <p>Donec dolor felis, consectetur eget massa non, mattis euismod est. Nam augue neque, hendrerit nec scelerisque non, ultrices at ligula. Praesent posuere, turpis eget lobortis elementum, ex ante ultricies ligula, sit amet varius lacus dui in magna. Aliquam erat volutpat. Nulla condimentum, enim vitae congue ultrices, nibh erat efficitur sem, vel iaculis lectus eros in turpis. Aliquam venenatis cursus suscipit.</p>
                            </div>
                            <div class="clearfix"> </div>
                            <div class="w3-button">
                                <div class="w3-button-info m_nav_item">
                                    <a class="hvr-sweep-to-bottom" href="#contact">Contact Me</a>
                                </div>
                                <br/>
                            </div>
                        </div>
                        <div class="col-md-4 w3ls-banner-left">
                            <div class="w3ls-banner-left-info">
                                <h4>职衔</h4>
                                <p>经理</p>
                            </div>
                            <div class="w3ls-banner-left-info">
                                <h4>姓名</h4>
                                <p>NKU</p>
                            </div>
                            <div class="w3ls-banner-left-info">
                                <h4>性别</h4>
                                <p>Male</p>
                            </div>
                            <div class="w3ls-banner-left-info">
                                <h4>电话</h4>
                                <p> 56777.</p>
                            </div>
                            <div class="w3ls-banner-left-info">
                                <h4>邮箱</h4>
                                <p><a href="mailto:example@email.com">mail@example.com</a></p>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
            <!-- about -->
            <div class="about" id="about">
                <div class="container">
                    <div class="wthree-about-grids">
                        <div class="col-md-6 wthree-about-left">
                            <h3>About Me</h3>
                            <h4>Mauris molestie ultrices molestie. Sed rhoncus interdum ipsum, id fermentum sem pellentesque ut.</h4>
                            <p>Praesent egestas egestas felis, sit amet posuere massa malesuada eget. Phasellus sem urna, euismod sit amet orci laoreet, laoreet molestie purus. Nulla leo purus, blandit nec efficitur tempor, interdum vel enim. <span>Proin mauris mi, lobortis quis quam at, tristique dictum arcu. In lobortis, massa in porta posuere, orci orci tincidunt risus, vitae ultrices enim eros vel lacus.</span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tincidunt tellus at est fermentum ultricies. Cras cursus semper libero. Vivamus non elit a diam elementum vulputate ac quis nisi. Suspendisse tellus massa, tempus in tristique a, eleifend non est. Duis consequat facilisis laoreet. </p>
                        </div >
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
            <!-- map -->
            <div class="map-grid">
                <iframe src="" class="map" style="border:0" allowfullscreen=""></iframe>
            </div>
            <!-- //map -->
            <!-- contact -->
            <div class="contact" id="contact">
                <div class="container">
                    <div class="w3-agileits-statistics-heading experience-heading">
                        <h3>Contact Me</h3>
                    </div>
                    <div class="contact-form">
                        <form action="#" method="post">
                            <div class="fields-grid">
                                <div class="styled-input agile-styled-input-top">
                                    <input type="text" name="Full Name" required="">
                                    <label>我的昵称*</label>
                                    <span></span>
                                </div>
                                <div class="styled-input agile-styled-input-top">
                                    <input type="text" name="Phone" required="">
                                    <label>我的电话*</label>
                                    <span></span>
                                </div>
                                <div class="styled-input">
                                    <input type="text" name="Email" required="">
                                    <label>我的邮件*</label>
                                    <span></span>
                                </div>
                                <div class="styled-input">
                                    <input type="text" name="Subject" required="">
                                    <label>我的性别</label>
                                    <span></span>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="styled-input textarea-grid">
                                <textarea name="Message" required></textarea>
                                <label>我的个性简介</label>
                                <span></span>
                            </div>
                            <input type="submit" value="SEND">
                        </form>
                    </div>
                </div>
            </div>

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
<!-- //contact -->
<script src="js/bars.js"></script>
<script src="js/owl.carousel.js"></script>
<!--scrolling js-->
<script src="../js/jquery.nicescroll.js"></script>
<script src="../js/scripts.js"></script>
<!--//scrolling js-->
<!-- Bootstrap Core JavaScript -->
<script src="../js/bootstrap.js"> </script>
</body>
</html>











