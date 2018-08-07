<%@ page import="com.chinasofti.ssm.domain.Admin" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>PasswordModify</title>
    <!--  主体部分配置-->
    <link rel="stylesheet" media="screen" href="../cssyqw/css.css" />


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
    <!-- Metis Menu -->
    <script src="../js/metisMenu.min.js"></script>
    <script src="../js/custom.js"></script>
    <link href="../css/custom.css" rel="stylesheet">
    <!--//Metis Menu -->
</head>
<body class="cbp-spmenu-push" style="font-family:'calisto mt';background: #424a5d">
<div class="main-content">
    <!--left-fixed -navigation-->
    <div class=" sidebar" role="navigation">
        <div class="navbar-collapse">
            <nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1"  style="background: #424a5d">
                <ul class="nav" id="side-menu">
                    <li>
                        <a href="/InfoView" style="font-family:'楷体'"><i class="fa fa-home nav_icon"></i>信息汇总</a>
                    </li>
                    <li>
                        <a href="/getgood" class="active" style="font-family:'楷体'"><i class="fa fa-table nav_icon"></i>商品总览</a>
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
            <!--notification menu end -->
            <div class="profile_details">
                <ul>
                    <li class="dropdown profile_details_drop">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                            <div class="profile_img">
                                <span class="prfil-img"><img src="../images/1.jpg" height="50px" alt=""> </span>
                                <div class="user-name">
                                    <p style="font-family:'calisto mt';font-style: italic;"><%=admin%></p>
                                    <span style="font-family:'calisto mt';font-style: italic;color: #FFFFFF">管理员</span>
                                </div>
                                <i class="fa fa-angle-down lnr"></i>
                                <i class="fa fa-angle-up lnr"></i>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                        <ul class="dropdown-menu drp-mnu">
                            <li> <a href="/AdminInfo"><i class="fa fa-user"></i> 个人信息</a> </li>
                            <li> <a href="javaScript:AdminLogout()"><i class="fa fa-sign-out"></i> 注销</a> </li>
                        </ul>
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
                    </li>
                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="clearfix" style="background: #424a5d"> </div>
    </div>
    <!-- //header-ends -->
    <!-- main content start-->
    <div id="page-wrapper">
        <div class="main-page">
            <div style="display:none"></div><form id="msform" >
            <!-- progressbar -->
            <ul id="progressbar" style="font-family: '楷体'">
                <li class="active" >确认身份</li>
                <li>密码修改</li>
                <li>修改成功</li>
            </ul>
            <!-- fieldsets -->
            <fieldset>
                <h2 class="fs-title">请进行身份验证</h2>
                <h3 class="fs-subtitle">这是步骤1</h3>
                <input type="password" name="pass" id="pass" placeholder="Password" />
                <input type="password" name="cpass" id="cpass" placeholder="Confirm Password" />
                <input type="button" name="submit1" class="submit1 action-button" value="Submit" />
            </fieldset>
            <fieldset>
                <h2 class="fs-title">请设置新密码</h2>
                <h3 class="fs-subtitle">我们不会向他人透露该信息</h3>
                <input type="password" name="pass1" id="pass1" placeholder="Password" />
                <input type="password" name="cpass1" id="cpass1" placeholder="Confirm Password" />
                <input type="button" name="previous" class="previous action-button" value="Previous" />
                <input type="button" name="submit2" class="submit2 action-button" value="Submit" />
            </fieldset>
            <fieldset>
                <h2 class="fs-title">Congratulations!</h2>
                <h3 class="fs-subtitle">密码设置成功</h3>
                <p>如果还需修改密码，可点击'previous'按钮回退进行修改!</p>
                <br/>
                <input type="button" name="previous" class="previous action-button" value="Previous" />
            </fieldset>
        </form>
            <script src="../jsyqw/jquery.easing.min.js" type="text/javascript"></script>
            <br><br><br><br><br><br><br><br><br><br>
            <br><br><br><br><br><br><br><br><br><br>


        </div>
    </div>
    <!--footer-->
    <div class="footer" style="background: #424a5d">
        <p>南开大学实训小组</p>
    </div>
    <!--//footer-->
</div>

<script>
    <%
        String pwd = (String) session.getAttribute("pwd");
    %>
    //jQuery time
    var current_fs, next_fs, previous_fs; //fieldsets
    var left, opacity, scale; //fieldset properties which we will animate
    var animating; //flag to prevent quick multi-click glitches

    $(".previous").click(function(){
        if(animating) return false;
        animating = true;

        current_fs = $(this).parent();
        previous_fs = $(this).parent().prev();

        //de-activate current step on progressbar
        $("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");

        //show the previous fieldset
        previous_fs.show();
        //hide the current fieldset with style
        current_fs.animate({opacity: 0}, {
            step: function(now, mx) {
                //as the opacity of current_fs reduces to 0 - stored in "now"
                //1. scale previous_fs from 80% to 100%
                scale = 0.8 + (1 - now) * 0.2;
                //2. take current_fs to the right(50%) - from 0%
                left = ((1-now) * 50)+"%";
                //3. increase opacity of previous_fs to 1 as it moves in
                opacity = 1 - now;
                current_fs.css({'left': left});
                previous_fs.css({'transform': 'scale('+scale+')', 'opacity': opacity});
            },
            duration: 800,
            complete: function(){
                current_fs.hide();
                animating = false;
            },
            //this comes from the custom easing plugin
            easing: 'easeInOutBack'
        });
    });

    $(".submit1").click(function(){
        if(animating) return false;
        animating = true;

        current_fs = $(this).parent();
        next_fs = $(this).parent().next();

        var s1 = document.getElementById("pass");
        var s2 = document.getElementById("cpass");
        var v1 = s1.value;
        var v2 = s2.value;
        if(v1 == v2) {
            if(v1 == <%=pwd%>){
                //activate next step on progressbar using the index of next_fs
                $("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");

                //show the next fieldset
                next_fs.show();
                //hide the current fieldset with style
                current_fs.animate({opacity: 0}, {
                    step: function(now, mx) {
                        //as the opacity of current_fs reduces to 0 - stored in "now"
                        //1. scale current_fs down to 80%
                        scale = 1 - (1 - now) * 0.2;
                        //2. bring next_fs from the right(50%)
                        left = (now * 50)+"%";
                        //3. increase opacity of next_fs to 1 as it moves in
                        opacity = 1 - now;
                        current_fs.css({'transform': 'scale('+scale+')'});
                        next_fs.css({'left': left, 'opacity': opacity});
                    },
                    duration: 800,
                    complete: function(){
                        current_fs.hide();
                        animating = false;
                    },
                    //this comes from the custom easing plugin
                    easing: 'easeInOutBack'
                });
            }
        }else{
            alert("密码输入错误");
            return false;
        }
    });

    $(".submit2").click(function () {
        if (animating) return false;
        animating = true;

        current_fs = $(this).parent();
        next_fs = $(this).parent().next();

        var ss1 = document.getElementById("pass1");
        var ss2 = document.getElementById("cpass1");
        var vv1 = ss1.value;
        var vv2 = ss2.value;
        if (vv1 == vv2) {
            $.ajax({
                    url:'/PwdModify1',
                    type:'POST',
                    data:{adminPassword:vv1},
                    dataType:"json",
                    success: function a(){
                        window.location.reload();
                    }
                }
            );

            //activate next step on progressbar using the index of next_fs
            $("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");

            //show the next fieldset
            next_fs.show();
            //hide the current fieldset with style
            current_fs.animate({opacity: 0}, {
                step: function(now, mx) {
                    //as the opacity of current_fs reduces to 0 - stored in "now"
                    //1. scale current_fs down to 80%
                    scale = 1 - (1 - now) * 0.2;
                    //2. bring next_fs from the right(50%)
                    left = (now * 50)+"%";
                    //3. increase opacity of next_fs to 1 as it moves in
                    opacity = 1 - now;
                    current_fs.css({'transform': 'scale('+scale+')'});
                    next_fs.css({'left': left, 'opacity': opacity});
                },
                duration: 800,
                complete: function(){
                    current_fs.hide();
                    animating = false;
                },
                //this comes from the custom easing plugin
                easing: 'easeInOutBack'
            });
        }
        else {
            alert("两次输入的密码不一致！");
            return false;
        }
    })
</script>


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










