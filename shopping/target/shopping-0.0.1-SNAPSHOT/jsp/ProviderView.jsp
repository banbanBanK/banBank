<%@ page import="com.chinasofti.ssm.domain.Admin" %>
<%@ page import="java.util.List" %>
<%@ page import="com.chinasofti.ssm.domain.Good" %>
<%@ page import="com.chinasofti.ssm.biz.ProviderBiz" %>
<%@ page import="com.chinasofti.ssm.domain.Provider" %>
<%@ page import="com.chinasofti.ssm.biz.GoodBiz" %>
<%@ page import="org.springframework.beans.factory.annotation.Autowired" %>
<%@ page import="com.chinasofti.ssm.biz.impl.ProviderBizImpl" %>
<%@ page import="com.chinasofti.ssm.biz.impl.GoodBizImpl" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>GetMoreGood</title>
    <!-- 中心部分配置-->
    <meta charset="utf-8" />
    <link rel="icon" type="image/png" href="../imgGet/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <link href="../cssGet/bootstrap.css" rel="stylesheet" />
    <link href="../cssGet/fresh-bootstrap-table.css" rel="stylesheet" />
    <link href="../cssyqw/fonticon.css" rel="stylesheet">
    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>



    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Bootstrap Core CSS -->
    <!--   <link href="../css/bootstrap.css" rel='stylesheet' type='text/css' />  -->
    <!-- Custom CSS -->
    <link href="../css/style.css" rel='stylesheet' type='text/css' />
    <!-- js-->
    <!-- <script src="../js/jquery-1.11.1.min.js"></script> -->
    <script src="../js/modernizr.custom.js"></script>
    <!--animate-->
    <link href="../css/animate.css" rel="stylesheet" type="text/css" media="all">
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
    <div class=" sidebar" role="navigation" style="font-family:'calisto mt'">
        <div class="navbar-collapse">
            <nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1"  style="background: #424a5d">
                <ul class="nav" id="side-menu">
                    <li>
                        <a href="/InfoView"  style="font-family:'楷体'"><i class="fa fa-home nav_icon"></i>信息汇总</a>
                    </li>
                    <li>
                        <a href="/getgood"  style="font-family:'楷体'"><i class="fa fa-table nav_icon"></i>商品总览</a>
                    </li>
                    <li>
                        <a href="/CustomerView"  style="font-family:'楷体'"><i class="fa fa-bar-chart nav_icon"></i>客户总览</a>
                    </li>
                    <li>
                        <a href="/ProviderView" class="active"  style="font-family:'楷体'"><i class="fa fa-bar-chart nav_icon"></i>供应商总览</a>
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
    <div class="sticky-header header-section " style="font-family:'calisto mt'">
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
                            <li> <a href="/AdminInfo"><i class="fa fa-user"></i> 个人信息</a> </li>
                            <li> <a href="javaScript:AdminLogout()"><i class="fa fa-sign-out"></i>注销</a> </li>
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
    <!--
    <div id="page-wrapper" style="background: url(../assets/img/background.jpg);background-repeat:no-repeat ;
                                      background-size:100% 100%; background-attachment: fixed;">
    -->
    <div id="page-wrapper" style="background-color: #e6e2c3;font-family:Calibri">
        <div class="main-page" >
            <div class="wrapper">
                <div class="fresh-table full-color-green full-screen-table">
                    <!--    Available colors for the full background: full-color-blue, full-color-azure, full-color-green, full-color-red, full-color-orange
                            Available colors only for the toolbar: toolbar-color-blue, toolbar-color-azure, toolbar-color-green, toolbar-color-red, toolbar-color-orange
                    -->
                    <table id="fresh-table" class="table">
                        <thead style="width:100%">
                        <th data-field="id" data-sortable="true" style="font-family: 楷体">编号</th>
                        <th data-field="name" data-sortable="true" style="font-family: 楷体">供应商名</th>
                        <th data-field="Tel" style="font-family: 楷体">电话号码</th>
                        <th data-field="phone" style="font-family: 楷体">手机</th>
                        <th data-field="email" style="font-family: 楷体">电子邮件</th>
                        <th data-field="zipCode"  style="font-family: 楷体" >邮编</th>
                        <th data-field="option" >操作</th>
                        </thead>
                        <tbody>
                        <%
                            List<Provider> providers= (List<Provider>) request.getAttribute("providers");
                            if(providers != null && providers.size()!=0){
                                for(Provider provider : providers){
                        %>
                        <tr>
                            <td class="useful"><%=provider.getProviderId()%></td>
                            <td><%=provider.getProviderName()%></td>
                            <td><%=provider.getProviderTel()%></td>
                            <td><%=provider.getProviderPhone()%></td>
                            <td><%=provider.getProviderEmail()%></td>
                            <td><%=provider.getProviderZipCode()%></td>
                            <td><a href="javaScript:deleteProvider(<%=provider.getId()%>)">删除</a></td>
                        </tr>
                        <%
                                }
                            }
                        %>
                        </tbody>
                    </table>
                </div>
                <script>
                    function deleteProvider(providerId) {
                        $.ajax({
                            url:"/deleteProvider?id="+providerId,
                            type:"post",
                            dataType:"json",
                            success(result){
                                if(result) {
                                    alert("操作成功！");
                                    window.location.reload();
                                }
                            }
                        })
                    }
                </script>
            </div>
        </div>
    </div>
    <!--footer-->
    <div class="footer"  style="background: #424a5d">
        <p>南开大学实训小组</p>
    </div>
    <!--//footer-->
</div>
</body>
<!---中心部分配置-->
<script type="text/javascript" src="../jsGet/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="../jsGet/bootstrap.js"></script>
<script type="text/javascript" src="../jsGet/bootstrap-table.js"></script>

<script>
    function openLook(userFul) {
        window.open ("/look?goodId="+userFul, "newwindow", "height=400, width=600, top=180, left=400" +
            "toolbar =no, menubar=no, scrollbars=no, resizable=no, location=no, status=no") //写成一行
    }
    function openGet(userFul) {
        window.open ("/get?goodId="+userFul, "newwindow", "height=400, width=600, top=180, left=400" +
            "toolbar =no, menubar=no, scrollbars=no, resizable=no, location=no, status=no") //写成一行
    }
</script>

<script type="text/javascript">
    var $table = $('#fresh-table'),
        $alertBtn = $('#alertBtn'),
        full_screen = false;

    $().ready(function(){
        $table.bootstrapTable({
            toolbar: ".toolbar",

            showRefresh: true,
            search: true,
            showToggle: true,
            showColumns: true,
            pagination: true,
            striped: true,
            pageSize: 20,
            pageList: [20,25,50,100],

            formatShowingRows: function(pageFrom, pageTo, totalRows){
                //do nothing here, we don't want to show the text "showing x of y from..."
            },
            formatRecordsPerPage: function(pageNumber){
                return pageNumber + " rows visible";
            },
            icons: {
                refresh: 'fa fa-refresh',
                toggle: 'fa fa-th-list',
                columns: 'fa fa-columns',
                detailOpen: 'fa fa-plus-circle',
                detailClose: 'fa fa-minus-circle'
            }
        });



        $(window).resize(function () {
            $table.bootstrapTable('resetView');
        });

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
</html>