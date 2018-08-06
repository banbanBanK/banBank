<%@ page import="com.chinasofti.ssm.domain.Type" %>
<%@ page import="java.util.List" %>
<%@ page import="com.chinasofti.ssm.domain.Good" %><%--
  Created by IntelliJ IDEA.
  User: 该读过
  Date: 2018/7/28
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <title>Staro - Blog</title>

    <meta name="author" content="IntelCoder, www.intelcoder.com" />
    <meta name="description" content="Staro is a clean and light HTML5 theme for showing your products in a simple and elegant way. It's a fully responsive e-commerce template that was built with customers in mind." />

    <link rel="icon" href="../img/favicon.png" type="image/png" />

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600" />

    <link rel="stylesheet" href="../plugins/bootstrap/bootstrap.min.css" />
    <link rel="stylesheet" href="../plugins/font-awesome/css/all.css" />

    <link rel="stylesheet" href="../css2/style.css" />
    <link rel="stylesheet" href="../css2/responsive.css" />
    <link rel="stylesheet" href="../css2/ic-helpers.min.css" />
</head>
<body>

<%
    String customerId = (String)session.getAttribute("customerId");
    if(customerId!=null ){
%>
<!-- Left menu -->
<div class="menu-left hidden-xs">
    <a href="../jspFrontIndex" class="logo-left">
        <img src="../img/logo.png" alt="" />
    </a>

    <div class="nav-item">
        <a href="../CustomerDetails?customerId=<%=customerId%>" class="text-primary">
            <i class="fas fa-user-circle fa-2x"></i>
        </a>
    </div>

    <div class="nav-item">
        <a href="../OrderFindByCustomer?customerId=<%=customerId%>" class="text-primary">
            <i class="fas fa-shopping-bag fa-2x"></i>
            <span class="badge">3</span>
        </a>
    </div>

    <div class="nav-item last">
        <a href="javascript:void(0);" onclick="openSearch();" class="text-primary">
            <i class="fas fa-search fa-2x"></i>
        </a>
    </div>
</div>
<%
}else{
%>
<div class="menu-left hidden-xs">
    <a href="../jspFrontIndex" class="logo-left">
        <img src="../img/logo.png" alt="" />
    </a>

    <div class="nav-item">
        <a href="login.jsp" class="text-primary">
            <i class="fas fa-user-circle fa-2x"></i>
        </a>
    </div>

    <div class="nav-item">
        <a href="../OrderFindByCustomer?customerId=-1" class="text-primary">
            <i class="fas fa-shopping-bag fa-2x"></i>
            <span class="badge">3</span>
        </a>
    </div>

    <div class="nav-item last">
        <a href="javascript:void(0);" onclick="openSearch();" class="text-primary">
            <i class="fas fa-search fa-2x"></i>
        </a>
    </div>
</div>
<%
    }
%>
<!-- Left menu -->

<!-- Right menu -->
<div class="menu-right-btn">
    <a href="javascript:void(0);" onclick="openNav();"><i class="fas fa-bars"></i></a>
</div>

<div id="sidenav" class="side-nav">
    <div class="close-side-btn hidden-xs">
        <a href="javascript:void(0);" onclick="closeNav();">&times;</a>
    </div>

    <div class="cart-side-btn visible-xs">
        <a href="cart.jsp">
            <i class="fas fa-shopping-bag"></i>
            <span class="badge">3</span>
        </a>
    </div>

    <div class="account-side-btn visible-xs">
        <a href="login.jsp"><i class="fas fa-user-circle"></i></a>
    </div>

    <div class="home-side-btn visible-xs">
        <a href="index.jsp"><i class="fas fa-desktop"></i></a>
    </div>

    <ul style="margin: 150px 50px 0px 90px">
        <li>
            <a href="../GoodFindByRootTypeId?fatherTypeId=1">电脑
                <img src="../img/computer.png" class="h-30 align-middle m-l-20" alt=""/>
            </a>
        </li>
        <li>
            <a href="../GoodFindByRootTypeId?fatherTypeId=2">耳机
                <img src="../img/music.png" class="h-30 align-middle m-l-20" alt=""/>
            </a>
        </li>
        <li>
            <a href="../GoodFindByRootTypeId?fatherTypeId=3">相机
                <img src="../img/camera.png" class="h-30 align-middle m-l-20" alt=""/>
            </a>
        </li>
        <li>
            <a href="../GoodFindByChildrenTypeId?typeId=4&fatherTypeId=4">手机
                <img src="../img/phone.png" class="h-30 align-middle m-l-20" alt="" />
            </a>
        </li>

        <li><hr class="m-tb-30" /></li>

        <li><a href="../GoodFindAll">Products</a></li>
        <li><a href="about.jsp">About</a></li>
        <li><a href="blog.jsp">Blog</a></li>
        <li><a href="blog-post.jsp">Blog Post</a></li>
        <li><a href="javaScript:logout()">logout</a></li>
        <script>
            function logout(){
                var se = confirm("确认注销？");
                if(se === true) {
                    $.ajax({
                        url: "/logout",
                        type: "post",
                        dateType: "json",
                        success(result) {
                            if (result) {
                                alert("您已成功注销！浏览器即将跳转~");
                                window.location = "http://localhost:8080/jspFrontIndex"
                            } else {
                                alert("您还没有登陆哦~");
                            }
                        }
                    })
                }
            }
        </script>
    </ul>
    <div class="social-media-box">
        <hr />
        <span>允公允能  日新月异</span>
    </div>
</div>
<!-- Right menu -->

<!-- Content -->
<div class="content-right">
    <div class="container m-t-100 m-b-100">
        <div class="row m-b-70">
            <div class="col-sm-12">
                <h1 class="text-xs-center">Blog</h1>

                <div class="separator-one"></div>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-9 blog-container">
                <div class="blog-item">
                    <a href="blog-post.jsp">
                        <img src="../img/blog1.jpg" class="img-responsive" alt="" />
                    </a>

                    <div class="row m-t-20">
                        <div class="col-xs-7 col-md-6 text-gray2">
                            <i class="fas fa-pencil-alt"></i>&nbsp; Andrew Whitehead
                        </div>

                        <div class="col-xs-5 col-md-6 text-gray2 text-right">
                            <i class="far fa-calendar-alt"></i>&nbsp; Jun 12, 2018
                        </div>
                    </div>

                    <a href="blog-post.jsp">
                        <h2 class="m-t-30">Launch of DSR9BT Wireless in Europe</h2>
                    </a>

                    <p class="text-justify">We're really glad to ipsum dolor sit amet, consectetur adipisicing elit. Eum laudantium laborum necessitatibus sit, possimus harum error et praesentium reiciendis, quo, nesciunt nemo? Quae repudiandae necessitatibus esse, at, aperiam numquam cumque. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus nostrum ea laborum officiis consequatur, suscipit et eaque pariatur dolore nobis hic quaerat, dolores facilis ...</p>

                    <div class="row m-t-40">
                        <div class="col-md-6 text-xs-center">
                            <a href="blog-post.jsp" class="btn btn-success"><i class="fas fa-folder-open"></i>&nbsp; Read more</a>
                        </div>

                        <div class="col-md-6 text-xs-center text-right">
                            <a href="#"><h5 class="m-xs-t-20 m-t-10 m-b-0 text-success"><i class="fas fa-share-alt"></i>&nbsp; Share</h5></a>
                        </div>
                    </div>
                </div>

                <div class="blog-item">
                    <a href="blog-post.jsp">
                        <img src="../img/blog2.jpg" class="img-responsive" alt="" />
                    </a>

                    <div class="row m-t-20">
                        <div class="col-xs-7 col-md-6 text-gray2">
                            <i class="fas fa-pencil-alt"></i>&nbsp; Andrew Whitehead
                        </div>

                        <div class="col-xs-5 col-md-6 text-gray2 text-right">
                            <i class="far fa-calendar-alt"></i>&nbsp; Jun 10, 2018
                        </div>
                    </div>

                    <a href="blog-post.jsp">
                        <h2 class="m-t-30">Introducing new Wireless High-Res Audio Headphones</h2>
                    </a>

                    <p class="text-justify">We're really glad to ipsum dolor sit amet, consectetur adipisicing elit. Eum laudantium laborum necessitatibus sit, possimus harum error et praesentium reiciendis, quo, nesciunt nemo? Quae repudiandae necessitatibus esse, at, aperiam numquam cumque. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus nostrum ea laborum officiis consequatur, suscipit et eaque pariatur dolore nobis hic quaerat, dolores facilis ...</p>

                    <div class="row m-t-40">
                        <div class="col-md-6 text-xs-center">
                            <a href="blog-post.jsp" class="btn btn-success"><i class="fas fa-folder-open"></i>&nbsp; Read more</a>
                        </div>

                        <div class="col-md-6 text-xs-center text-right">
                            <a href="#"><h5 class="m-xs-t-20 m-t-10 m-b-0 text-success"><i class="fas fa-share-alt"></i>&nbsp; Share</h5></a>
                        </div>
                    </div>
                </div>

                <div class="blog-item last">
                    <a href="blog-post.jsp">
                        <img src="../img/blog3.jpg" class="img-responsive" alt="" />
                    </a>

                    <div class="row m-t-20">
                        <div class="col-xs-7 col-md-6 text-gray2">
                            <i class="fas fa-pencil-alt"></i>&nbsp; Andrew Whitehead
                        </div>

                        <div class="col-xs-5 col-md-6 text-gray2 text-right">
                            <i class="far fa-calendar-alt"></i>&nbsp; Jun 5, 2018
                        </div>
                    </div>

                    <a href="blog-post.jsp">
                        <h2 class="m-t-30">Designing the DSR7BT Wireless with Pure Digital Drive</h2>
                    </a>

                    <p class="text-justify">We're really glad to ipsum dolor sit amet, consectetur adipisicing elit. Eum laudantium laborum necessitatibus sit, possimus harum error et praesentium reiciendis, quo, nesciunt nemo? Quae repudiandae necessitatibus esse, at, aperiam numquam cumque. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus nostrum ea laborum officiis consequatur, suscipit et eaque pariatur dolore nobis hic quaerat, dolores facilis ...</p>

                    <div class="row m-t-40">
                        <div class="col-md-6 text-xs-center">
                            <a href="blog-post.jsp" class="btn btn-success"><i class="fas fa-folder-open"></i>&nbsp; Read more</a>
                        </div>

                        <div class="col-md-6 text-xs-center text-right">
                            <a href="#"><h5 class="m-xs-t-20 m-t-10 m-b-0 text-success"><i class="fas fa-share-alt"></i>&nbsp; Share</h5></a>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12 text-center">
                        <a href="#" class="text-primary link-underline">Show more posts</a>
                    </div>
                </div>
            </div>

            <div class="col-xs-12 col-sm-12 col-md-3">
                <div class="m-b-50">
                    <h5>Search</h5>

                    <hr />

                    <form class="form-horizontal">
                        <div class="form-group">
                            <div class="col-sm-12">
                                <div class="input-group">
                                    <input type="text" class="form-control blog-search-input" placeholder="Start typing..." />

                                    <span class="input-group-btn">
											<button type="submit" class="btn btn-success blog-search-button">Go!</button>
										</span>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>

                <div class="m-b-50">
                    <h5>Categories</h5>

                    <hr />

                    <ul class="sidebar-categories">
                        <li><i class="fas fa-angle-right"></i>&nbsp; <a href="#">News</a></li>
                        <li><i class="fas fa-angle-right"></i>&nbsp; <a href="#">Fashion</a></li>
                        <li><i class="fas fa-angle-right"></i>&nbsp; <a href="#">Design</a></li>
                        <li><i class="fas fa-angle-right"></i>&nbsp; <a href="#">Insights</a></li>
                        <li><i class="fas fa-angle-right"></i>&nbsp; <a href="#">Development</a></li>
                        <li><i class="fas fa-angle-right"></i>&nbsp; <a href="#">Entertainment</a></li>
                    </ul>
                </div>

                <div class="m-b-50">
                    <h5>Latest Posts</h5>

                    <hr />

                    <ul class="sidebar-latestposts">
                        <li>
                            <a href="#"><img src="../img/blog-last-post1.jpg" class="img-responsive m-b-20" alt="" /></a>

                            <a href="#"><h4>Launch of our Bluetooth Collection in New York and Los Angeles</h4></a>

                            <small class="text-gray2"><i class="far fa-calendar-alt"></i>&nbsp; Jun 12, 2018</small>
                        </li>
                        <li>
                            <a href="#"><img src="../img/blog-last-post2.jpg" class="img-responsive m-b-20" alt="" /></a>

                            <a href="#"><h4>New Limited-Edition GQ Headphones</h4></a>

                            <small class="text-gray2"><i class="far fa-calendar-alt"></i>&nbsp; Jun 10, 2018</small>
                        </li>
                        <li>
                            <a href="#"><img src="../img/blog-last-post3.jpg" class="img-responsive m-b-20" alt="" /></a>

                            <a href="#"><h4>Introducing New DSR9BT Over-Ear Headphones in Gold</h4></a>

                            <small class="text-gray2"><i class="far fa-calendar-alt"></i>&nbsp; Jun 6, 2018</small>
                        </li>
                    </ul>
                </div>

                <div class="m-b-50">
                    <h5>Instagram Feed</h5>

                    <hr />

                    <div class="row">
                        <div class="col-xs-4 col-sm-4 col-md-4 m-b-30">
                            <img src="../img/insta-feed1.jpg" class="img-responsive" alt="" />
                        </div>

                        <div class="col-xs-4 col-sm-4 col-md-4 m-b-30">
                            <img src="../img/insta-feed2.jpg" class="img-responsive" alt="" />
                        </div>

                        <div class="col-xs-4 col-sm-4 col-md-4 m-b-30">
                            <img src="../img/insta-feed3.jpg" class="img-responsive" alt="" />
                        </div>

                        <div class="col-xs-4 col-sm-4 col-md-4 m-b-30">
                            <img src="../img/insta-feed4.jpg" class="img-responsive" alt="" />
                        </div>

                        <div class="col-xs-4 col-sm-4 col-md-4 m-b-30">
                            <img src="../img/insta-feed5.jpg" class="img-responsive" alt="" />
                        </div>

                        <div class="col-xs-4 col-sm-4 col-md-4 m-b-30">
                            <img src="../img/insta-feed6.jpg" class="img-responsive" alt="" />
                        </div>

                        <div class="col-xs-4 col-sm-4 col-md-4 m-b-30">
                            <img src="../img/insta-feed7.jpg" class="img-responsive" alt="" />
                        </div>

                        <div class="col-xs-4 col-sm-4 col-md-4 m-b-30">
                            <img src="../img/insta-feed8.jpg" class="img-responsive" alt="" />
                        </div>

                        <div class="col-xs-4 col-sm-4 col-md-4 m-b-30">
                            <img src="../img/insta-feed9.jpg" class="img-responsive" alt="" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <div class="container-fluid footer">
        <div class="row m-0">
            <div class="col-sm-12">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-5 m-b-40 text-xs-center">
                            <h5>关于</h5>

                            <p class="m-b-20">南开实训小组购物系统   允公允能 日新月异(ง •_•)ง</p>

                            <ul class="footer-menu">
                                <li>
                                    <i class="far fa-building"></i>&nbsp; 天津市南开大学   NKU
                                </li>
                                <li>
                                    <i class="fas fa-mobile-alt"></i>&nbsp; <a href="">15822589363</a>
                                </li>
                                <li>
                                    <i class="far fa-envelope"></i>&nbsp; <a href="mailto:stduents@edu.nankai.com">stduents@edu.nankai.com</a>
                                </li>
                            </ul>
                        </div>

                        <div class="col-xs-12 col-sm-6 col-md-2 m-b-40 text-xs-center">
                            <h5>小组成员</h5>

                            <ul class="footer-menu">
                                <li>
                                    <i class="fas fa-angle-right m-r-5 hidden-xs"></i> <a href="#">SJQ</a>
                                </li>
                                <li>
                                    <i class="fas fa-angle-right m-r-5 hidden-xs"></i> <a href="#">LHY</a>
                                </li>
                                <li>
                                    <i class="fas fa-angle-right m-r-5 hidden-xs"></i> <a href="#">YQW</a>
                                </li>
                                <li>
                                    <i class="fas fa-angle-right m-r-5 hidden-xs"></i> <a href="#">ZJG</a>
                                </li>
                                <li>
                                    <i class="fas fa-angle-right m-r-5 hidden-xs"></i> <a href="#">ZY</a>
                                </li>
                            </ul>
                        </div>

                        <div class="col-xs-12 col-sm-6 col-md-2 m-b-40 text-xs-center">
                            <h5>帮助</h5>

                            <ul class="footer-menu">
                                <li>
                                    <i class="fas fa-angle-right m-r-5 hidden-xs"></i> <a href="#">常见问题</a>
                                </li>
                                <li>
                                    <i class="fas fa-angle-right m-r-5 hidden-xs"></i> <a href="#">友情链接</a>
                                </li>
                                <li>
                                    <i class="fas fa-angle-right m-r-5 hidden-xs"></i> <a href="https://github.com/banbanBanK/banBank">git链接</a>
                                </li>
                                <li>
                                    <i class="fas fa-angle-right m-r-5 hidden-xs"></i> <a href="#">售后服务</a>
                                </li>
                                <li>
                                    <i class="fas fa-angle-right m-r-5 hidden-xs"></i> <a href="#">免责声明</a>
                                </li>
                            </ul>
                        </div>

                        <div class="col-xs-12 col-sm-6 col-md-3 m-b-40 text-xs-center">
                            <h5>最新进展</h5>

                            <p class="m-b-20">加入我们了解最新资讯</p>

                            <form class="form-inline">
                                <div class="form-group">
                                    <input type="text" name="subscribe" class="form-control" placeholder="Email" />
                                    <input type="button" class="btn btn-success btn-square" value="Join us"></input>
                                </div>
                            </form>

                            <ul class="footer-list m-t-30">
                                <li>
                                    <a href="#"><i class="fab fa-facebook-square fa-2x"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fab fa-google-plus-square fa-2x"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fab fa-twitter-square fa-2x"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fab fa-instagram fa-2x"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fab fa-pinterest-square fa-2x"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fab fa-linkedin fa-2x"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fab fa-youtube-square fa-2x"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-12 footer-line"></div>

            <div class="col-sm-12 m-t-10">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 text-xs-center">
                            <p>&copy; 2018 <a href="#">NKU</a>. All rights reserved.</p>
                        </div>

                        <div class="col-xs-12 col-sm-6 text-xs-center">
                            <ul class="footer-list pull-xs-none pull-right">
                                <li><i class="fab fa-cc-visa fa-2x"></i></li>
                                <li><i class="fab fa-cc-mastercard fa-2x"></i></li>
                                <li><i class="fab fa-cc-paypal fa-2x"></i></li>
                                <li><i class="fab fa-cc-apple-pay fa-2x"></i></li>
                                <li><i class="fab fa-cc-stripe fa-2x"></i></li>
                                <li class="hidden-xs"><i class="fab fa-cc-discover fa-2x"></i></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer -->
</div>
<!-- Content -->

<!-- Search overlay -->
<div id="searchoverlay" class="overlay hidden-xs">
    <div class="search-close-btn">
        <a href="javascript:void(0);" onclick="closeSearch();">&times;</a>
    </div>

    <div class="container m-t-100 m-b-100">
        <div class="row">
            <div class="col-sm-12">
                <form class="form-horizontal">
                    <div class="form-group">
                        <div class="col-sm-11 center-block">
                            <div class="input-group">
                                <input type="text" id="searchButton" class="form-control search-input" placeholder="Start typing..." />

                                <span class="input-group-btn">
										<input type="button"  class="btn btn-primary search-button" value="GO!" onclick="searchGoodByName()">
								</span>
                            </div>
                        </div>
                    </div>
                </form>

                <hr />
            </div>
        </div>

        <div id="panel">
        </div>


        <%List<Good> goods = (List<Good>) request.getAttribute("goods");
            if(goods!=null && goods.size()!=0){
        %>
        <div class="row m-t-70 m-b-70">
            <div class="col-sm-12 text-center">
                <h4>你可能会对这<%=goods.size()-goods.size()%3%> 件商品感兴趣:</h4>
            </div>
        </div>
        <%
            for(int i = 0; i<goods.size()-goods.size()%3;i+=3){
        %>
        <div class="row m-b-20">
            <div class="col-sm-4 col-md-4 result-box text-sm-center">
                <div class="col-md-6">
                    <a href="../GoodDetailsFindById?id=<%=goods.get(i).getId() %>&fatherTypeId=<%=goods.get(i).getType().getFatherTypeId()%>&evaluation=0">
                        <img src="<%=goods.get(i).getGoodImage()%>" class="img-responsive" alt="<%=goods.get(i).getGoodName()%>" title="￥<%=goods.get(i).getGoodPrice()%>"/>
                    </a>
                </div>

                <div class="col-md-6 result-info">
                    <a href="../GoodDetailsFindById?id=<%=goods.get(i).getId() %>&fatherTypeId=<%=goods.get(i).getType().getFatherTypeId()%>&evaluation=0">
                        <h4><%=goods.get(i).getGoodName()%></h4>
                    </a>

                    <p><%=goods.get(i).getGoodName()%></p>

                    <a href="../GoodDetailsFindById?id=<%=goods.get(i).getId() %>&fatherTypeId=<%=goods.get(i).getType().getFatherTypeId()%>&evaluation=0" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
                </div>
            </div>

            <div class="col-sm-4 col-md-4 result-box text-sm-center">
                <div class="col-md-6">
                    <a href="../GoodDetailsFindById?id=<%=goods.get(i+1).getId() %>&fatherTypeId=<%=goods.get(i+1).getType().getFatherTypeId()%>&evaluation=0">
                        <img src="<%=goods.get(i+1).getGoodImage()%>" class="img-responsive" alt="<%=goods.get(i+1).getGoodName()%>" title="￥<%=goods.get(i+1).getGoodPrice()%>" />
                    </a>
                </div>

                <div class="col-md-6 result-info">
                    <a href="../GoodDetailsFindById?id=<%=goods.get(i+1).getId() %>&fatherTypeId=<%=goods.get(i+1).getType().getFatherTypeId()%>&evaluation=0">
                        <h4><%=goods.get(i+1).getGoodName()%></h4>
                    </a>

                    <p><%=goods.get(i+1).getGoodName()%></p>

                    <a href="../GoodDetailsFindById?id=<%=goods.get(i+1).getId() %>&fatherTypeId=<%=goods.get(i+1).getType().getFatherTypeId()%>&evaluation=0" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
                </div>
            </div>

            <div class="col-sm-4 col-md-4 result-box text-sm-center">
                <div class="col-md-6">
                    <a href="../GoodDetailsFindById?id=<%=goods.get(i+2).getId() %>&fatherTypeId=<%=goods.get(i+2).getType().getFatherTypeId()%>&evaluation=0">
                        <img src="<%=goods.get(i+2).getGoodImage()%>" class="img-responsive" alt="<%=goods.get(i+2).getGoodName()%>" title="<%=goods.get(i+2).getGoodPrice()%>" />
                    </a>
                </div>

                <div class="col-md-6 result-info">
                    <a href="../GoodDetailsFindById?id=<%=goods.get(i+2).getId() %>&fatherTypeId=<%=goods.get(i+2).getType().getFatherTypeId()%>&evaluation=0">
                        <h4><%=goods.get(i+2).getGoodName()%></h4>
                    </a>

                    <p><%=goods.get(i+2).getGoodName()%></p>

                    <a href="../GoodDetailsFindById?id=<%=goods.get(i+2).getId() %>&fatherTypeId=<%=goods.get(i+2).getType().getFatherTypeId()%>&evaluation=0" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
                </div>
            </div>
        </div>
        <%
                }
            }
        %>
    </div>
</div>
<!-- Search overlay -->
<script>
    function searchGoodByName() {
        var searchName = document.getElementById("searchButton").value;
        var param = "/SearchByGoodName?goodName=" + searchName;
        $.ajax({
            url: "/SearchByGoodName?goodName=" + searchName, // 数据发送方式
            type: "post", // 接受数据格式
            dataType: "json", // 要传递的数据
            data: param, // 回调函数，接受服务器端返回给客户端的值，即result值
            success: function a(result) {
                //alert(result.length);
                function format(template, json) {
                    return template.replace(/@\{(.*?)\}/g, function(all, key) {
                        return json && (key in json) ? json[key] : "";
                    });
                }
                if(result.length >= 3){
                    document.getElementById('panel').innerHTML = format(
                        String(function(){/*!
                     <div class="row m-t-70 m-b-70">
            <div class="col-sm-12 text-center"><h4>搜索结果：</h4>
            </div>
        </div> */}).replace(/^[^\{]*\{\s*\/\*!?|\*\/[;|\s]*\}$/g, ''),
                        {

                        }
                    );}else{
                    document.getElementById('panel').innerHTML = format(
                        String(function(){/*!
                     <div class="row m-t-70 m-b-70">
            <div class="col-sm-12 text-center"><h4>暂无您所搜索的商品！</h4>
            </div>
        </div> */}).replace(/^[^\{]*\{\s*\/\*!?|\*\/[;|\s]*\}$/g, ''),
                        {

                        }
                    );
                }
                for(var i = 0; i < (result.length - result.length % 3)/3; i++)
                    document.getElementById('panel').innerHTML += format(
                        String(function(){/*!
        <div class="row m-b-20">
            <div class="col-sm-4 col-md-4 result-box text-sm-center">
                <div class="col-md-6">
                    <a href="/GoodDetailsFindById?id=@{resultId1}&fatherTypeId=@{resultFatherType1}&evaluation=0">
                        <img src="@{resultImg1}" class="img-responsive" alt="@{resultName1}" title="售价：@{resultPrice1}元"/>
                    </a>
                </div>

                <div class="col-md-6 result-info">
                    <a href="/GoodDetailsFindById?id=@{resultId1}&fatherTypeId=@{resultFatherType1}&evaluation=0">
                        <h4>@{resultName1}</h4>
                    </a>

                    <p>@{resultName1}</p>

                    <a href="/GoodDetailsFindById?id=@{resultId1}&fatherTypeId=@{resultFatherType1}&evaluation=0" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
                </div>
            </div>

            <div class="col-sm-4 col-md-4 result-box text-sm-center">
                <div class="col-md-6">
                    <a href="/GoodDetailsFindById?id=@{resultId2}&fatherTypeId=@{resultFatherType2}&evaluation=0">
                        <img src="@{resultImg2}" class="img-responsive" alt="@{resultName2}" title="售价：@{resultPrice2}元" />
                    </a>
                </div>

                <div class="col-md-6 result-info">
                    <a href="/GoodDetailsFindById?id=@{resultId2}&fatherTypeId=@{resultFatherType2}&evaluation=0">
                        <h4>@{resultName2}</h4>
                    </a>

                    <p>@{resultName2}</p>

                    <a href="/GoodDetailsFindById?id=@{resultId2}&fatherTypeId=@{resultFatherType2}&evaluation=0" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
                </div>
            </div>

            <div class="col-sm-4 col-md-4 result-box text-sm-center">
                <div class="col-md-6">
                    <a href="/GoodDetailsFindById?id=@{resultId3}&fatherTypeId=@{resultFatherType3}&evaluation=0">
                        <img src="@{resultImg3}" class="img-responsive" alt="@{resultName3}" title="售价：@{resultPrice3}元" />
                    </a>
                </div>

                <div class="col-md-6 result-info">
                    <a href="/GoodDetailsFindById?id=@{resultId3}&fatherTypeId=@{resultFatherType3}&evaluation=0">
                        <h4>@{resultName3}</h4>
                    </a>

                    <p>@{resultName3}</p>

                    <a href="/GoodDetailsFindById?id=@{resultId3}&fatherTypeId=@{resultFatherType3}&evaluation=0" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
                </div>
            </div>
        </div>

*/}).replace(/^[^\{]*\{\s*\/\*!?|\*\/[;|\s]*\}$/g, ''),
                        {
                            image:"123",
                            resultId1:result[3*i][0],
                            resultId2:result[3*i+1][0],
                            resultId3:result[3*i+2][0],
                            resultName1:result[3*i][1],
                            resultName2:result[3*i+1][1],
                            resultName3:result[3*i+2][1],
                            resultImg1:result[3*i][2],
                            resultImg2:result[3*i+1][2],
                            resultImg3:result[3*i+2][2],
                            resultPrice1:result[3*i][3],
                            resultPrice2:result[3*i+1][3],
                            resultPrice3:result[3*i+2][3],
                            resultFatherType1:result[3*i][4],
                            resultFatherType2:result[3*i+1][4],
                            resultFatherType3:result[3*i+2][4]
                        }
                    );
            }
        });
    }
</script>

<script src="../plugins/jquery.min.js"></script>
<script src="../plugins/bootstrap/bootstrap.min.js"></script>

<script src="../js/global.js"></script>
</body>
</html>
