<%@ page import="com.chinasofti.ssm.domain.Type" %>
<%@ page import="com.chinasofti.ssm.domain.Good" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <title>Staro</title>

    <meta name="author" content="IntelCoder, www.intelcoder.com" />
    <meta name="description" content="Staro is a clean and light HTML5 theme for showing your products in a simple and elegant way. It's a fully responsive e-commerce template that was built with customers in mind." />

    <link rel="icon" href="../img/favicon.png" type="image/png" />

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600" />

    <link rel="stylesheet" href="../plugins/bootstrap/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="../plugins/font-awesome/css/all.css" type="text/css"/>
    <link rel="stylesheet" href="../plugins/owl-carousel/owl.carousel.min.css" />
    <link rel="stylesheet" href="../plugins/owl-carousel/owl.theme.default.min.css" />


    <link rel="stylesheet" href="../css2/style.css" type="text/css"/>
    <link rel="stylesheet" href="../css2/responsive.css" type="text/css"/>
    <link rel="stylesheet" href="../css2/ic-helpers.min.css" type="text/css"/>
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
        <a href="jspFront/login.jsp" class="text-primary">
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
        <%
            List<Type> types_parents = (List<Type>)request.getAttribute("types_parents");
            if(types_parents != null && types_parents.size() != 0){
                for(Type type_parents : types_parents){
        %>
        <li>
            <a href="../GoodFindByRootTypeId?fatherTypeId=<%=type_parents.getTypeId() %>"><%=type_parents.getTypeName() %>
                <%
                    switch (type_parents.getTypeId()) {
                        case "1":
                %>
                <img src="../img/computer.png" class="h-30 align-middle m-l-20" alt=""/>
                <%
                        break;
                    case "2":
                %>
                <img src="../img/music.png" class="h-30 align-middle m-l-20" alt=""/>
                <%
                        break;
                    case "3":
                %>
                <img src="../img/camera.png" class="h-30 align-middle m-l-20" alt=""/>
                <%
                            break;
                    }
                %>
            </a>
        </li>
        <%
            List<Type> types_children = (List<Type>) request.getAttribute("types_children");
            if(types_children != null && types_children.size() != 0 && type_parents.getTypeId().equals(types_children.get(0).getFatherTypeId())){
        %>
        <ul style="margin: 10px 10px 10px 60px;">
            <%
                for(Type type_children : types_children){
            %>
            <li>
                <a href="../GoodFindByChildrenTypeId?typeId=<%=type_children.getTypeId() %>&fatherTypeId=<%=type_parents.getTypeId() %>"><%=type_children.getTypeName() %>
                </a>
            </li>
            <%
                }
            %>
        </ul>
        <%
                    }
                }
            }
        %>

        <%
            List<Type> types_singleRoots = (List<Type>)request.getAttribute("types_singleRoots");
            if(types_singleRoots != null && types_singleRoots.size() != 0){
                for(Type type_singleRoots : types_singleRoots){
        %>
        <li>
            <a href="../GoodFindByChildrenTypeId?typeId=<%=type_singleRoots.getTypeId() %>&fatherTypeId=<%=type_singleRoots.getTypeId() %>"><%=type_singleRoots.getTypeName() %>
                <img src="../img/phone.png" class="h-30 align-middle m-l-20" alt="" />
            </a>
        </li>
        <%
                }
            }
        %>

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
    <!-- Slider -->
    <div id="mycarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators text-xs-center text-right">
            <li data-target="#mycarousel" data-slide-to="0" class="active"></li>
            <li data-target="#mycarousel" data-slide-to="1"></li>
            <li data-target="#mycarousel" data-slide-to="2"></li>
        </ol>

        <!-- Slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item">
                <img src="../img/slider/slide1.jpg" alt="" />

                <div class="carousel-caption text-xs-center text-sm-center text-md-center text-left">
                    <h1>NK商城</h1>

                    <p class="text-gray m-b-80">Introducing the new ST-O S1000 Purple Edition</p>

                    <a href="#" class="btn btn-success"><i class="fas fa-rocket"></i>&nbsp; Explore</a>

                    <span class="m-r-30 hidden-xs"></span>
                    <span class="m-b-30 visible-xs"></span>

                    <a href="#" class="btn btn-success"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
                </div>
            </div>

            <div class="item">
                <img src="../img/slider/slide2.jpg" alt="" />

                <div class="carousel-caption text-xs-center text-sm-center text-md-center text-left">
                    <h1>Gaming Collection</h1>

                    <p class="text-primary m-b-80">Checkout our gaming collection</p>

                    <a href="products.jsp" class="btn btn-success"><i class="fas fa-rocket"></i>&nbsp; Explore</a>
                </div>
            </div>

            <div class="item">
                <img src="../img/slider/slide3.jpg" alt="" />

                <div class="carousel-caption text-xs-center text-sm-center text-md-center text-left">
                    <h1>Wireless Collection</h1>

                    <p class="text-white m-b-80">Introducing the new Wi-Fi headphones collection</p>

                    <a href="#" class="btn btn-success"><i class="fas fa-rocket"></i>&nbsp; Explore</a>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a href="#mycarousel" class="left carousel-control hidden-xs" role="button" data-slide="prev">
            <div class="carousel-arrow-left">
                <i class="fas fa-angle-left fa-3x"></i>
                <span class="sr-only">Previous</span>
            </div>
        </a>

        <a href="#mycarousel" class="right carousel-control hidden-xs" role="button" data-slide="next">
            <div class="carousel-arrow-right">
                <i class="fas fa-angle-right fa-3x"></i>
                <span class="sr-only">Next</span>
            </div>
        </a>
    </div>
    <!-- Slider -->
    <!--新品上市-->
    <div class="container m-t-100 m-b-100" style="width: 92%;margin-bottom: 10px" >
        <div class="row">
            <div class="col-sm-12">
                <div class="container" style="width: 100%">
                    <div>
                        <h2>新品上市</h2>
                        <hr />
                    </div>

                    <div >
                        <div id="awards" class="owl-carousel owl-theme">
                            <%List<Good> latestGoods = (List<Good>) request.getAttribute("latestGoods");
                              if(latestGoods!=null && latestGoods.size()!=0){
                                  for(int i = 0; i<10 && i<latestGoods.size();i++){//后台限定最大20
                            %>
                            <div class="item"><img src="<%=latestGoods.get(i).getGoodImage()%>" alt="<%=latestGoods.get(i).getGoodName()%>" title="售价：￥<%=latestGoods.get(i).getGoodPrice()%>；产品：<%=latestGoods.get(i).getGoodName()%>" /></div>
                           <%-- <div class="item"><img src="../img/products/product1.png" alt="" /></div>
                            <div class="item"><img src="../img/products/product1.png" alt="" /></div>
                            <div class="item"><img src="../img/products/product1.png" alt="" /></div>
                            <div class="item"><img src="../img/products/product1.png" alt="" /></div>
                            <div class="item"><img src="../img/products/product1.png" alt="" /></div>
                            <div class="item"><img src="../img/products/product1.png" alt="" /></div>--%>
                            <%
                                  }
                              }
                            %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--新品上市-->
    <!--特色推荐-->
    <div class="container m-t-100 m-b-100" style="width: 90%">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 m-b-50">
                <h2>特色推荐</h2>

                <hr />
            </div>
            <%List<Good> specialGoods = (List<Good>) request.getAttribute("specialGoods");
                if(specialGoods!=null&&specialGoods.size()>=6){
            %>
            <div class="col-xs-6 col-sm-6 col-md-3">
                <div class="team-box">
                    <figure>
                        <img src="<%=specialGoods.get(4).getGoodImage()%>" class="img-responsive team-member" alt="" />
                        <img src="<%=specialGoods.get(4).getGoodImage()%>" class="img-responsive" alt="" />
                    </figure>

                    <h3 class="m-t-30"><a href="/product-details?Id=<%=specialGoods.get(4).getGoodId()%>"><%=specialGoods.get(4).getGoodName()%></a></h3>

                </div>
            </div>

            <div class="col-xs-6 col-sm-6 col-md-3">
                <div class="team-box">
                    <figure>
                        <img src="<%=specialGoods.get(5).getGoodImage()%>" class="img-responsive team-member" alt="" />
                        <img src="<%=specialGoods.get(5).getGoodImage()%>" class="img-responsive" alt="" />
                    </figure>

                    <h3 class="m-t-30"><a href="/product-details?Id=<%=specialGoods.get(5).getGoodId()%>"><%=specialGoods.get(5).getGoodName()%></a></h3>

                </div>
            </div>

            <div class="col-xs-6 col-sm-6 col-md-3">
                <div class="team-box">
                    <figure>
                        <img src="<%=specialGoods.get(6).getGoodImage()%>" class="img-responsive team-member" alt="" />
                        <img src="<%=specialGoods.get(6).getGoodImage()%>" class="img-responsive" alt="" />
                    </figure>

                    <h3 class="m-t-30"><a href="/product-details?Id=<%=specialGoods.get(6).getGoodId()%>"><%=specialGoods.get(6).getGoodName()%></a></h3>

                </div>
            </div>

            <div class="col-xs-6 col-sm-6 col-md-3 text-center">
                <div class="team-box">
                    <figure>
                        <img src="<%=specialGoods.get(7).getGoodImage()%>" class="img-responsive team-member" alt="" />
                        <img src="<%=specialGoods.get(7).getGoodImage()%>" class="img-responsive" alt="" />
                    </figure>

                    <h3 class="m-t-30"><a href="/product-details?Id=<%=specialGoods.get(7).getGoodId()%>"><%=specialGoods.get(7).getGoodName()%></a></h3>

                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-6 col-sm-6 col-md-3">
                <div class="team-box">
                    <figure>
                        <img src="<%=specialGoods.get(0).getGoodImage()%>" class="img-responsive team-member" alt="" />
                        <img src="<%=specialGoods.get(0).getGoodImage()%>" class="img-responsive" alt="" />
                    </figure>

                    <h3 class="m-t-30"><a href="/product-details?Id=<%=specialGoods.get(0).getGoodId()%>"><%=specialGoods.get(0).getGoodName()%></a></h3>

                </div>
            </div>

            <div class="col-xs-6 col-sm-6 col-md-3">
                <div class="team-box">
                    <figure>
                        <img src="<%=specialGoods.get(1).getGoodImage()%>" class="img-responsive team-member" alt="" />
                        <img src="<%=specialGoods.get(1).getGoodImage()%>" class="img-responsive" alt="" />
                    </figure>

                    <h3 class="m-t-30"><a href="/product-details?Id=<%=specialGoods.get(1).getGoodId()%>"><%=specialGoods.get(1).getGoodName()%></a></h3>

                </div>
            </div>

            <div class="col-xs-6 col-sm-6 col-md-3 text-center">
                <div class="team-box">
                    <figure>
                        <img src="<%=specialGoods.get(2).getGoodImage()%>" class="img-responsive team-member" alt="" />
                        <img src="<%=specialGoods.get(2).getGoodImage()%>" class="img-responsive" alt="" />
                    </figure>

                    <h3 class="m-t-30"><a href="/product-details?Id=<%=specialGoods.get(2).getGoodId()%>"><%=specialGoods.get(2).getGoodName()%></a></h3>

                </div>
            </div>

            <div class="col-xs-6 col-sm-6 col-md-3">
                <div class="team-box">
                    <figure>
                        <img src="<%=specialGoods.get(3).getGoodImage()%>" class="img-responsive team-member" alt="" />
                        <img src="<%=specialGoods.get(3).getGoodImage()%>" class="img-responsive" alt="" />
                    </figure>

                    <h3 class="m-t-30"><a href="/product-details?Id=<%=specialGoods.get(3).getGoodId()%>"><%=specialGoods.get(3).getGoodName()%></a></h3>

                </div>
            </div>
            <%
                }
            %>
        </div>
    </div>
    <!--特色推荐-->

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
                                </div>

                                <input type="button" class="btn btn-success btn-square" value="Join us"></input>
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


        <%List<Good> searchGoods = (List<Good>) request.getAttribute("searchGoods");
            if(searchGoods!=null && searchGoods.size()!=0){
        %>
        <div class="row m-t-70 m-b-70">
            <div class="col-sm-12 text-center">
                <h4>你可能会对这<%=searchGoods.size()-searchGoods.size()%3%> 件商品感兴趣:</h4>
            </div>
        </div>
        <%
            for(int i = 0; i<searchGoods.size()-searchGoods.size()%3;i+=3){
        %>
        <div class="row m-b-20">
            <div class="col-sm-4 col-md-4 result-box text-sm-center">
                <div class="col-md-6">
                    <a href="../GoodDetailsFindById?id=<%=searchGoods.get(i).getId() %>&fatherTypeId=<%=searchGoods.get(i).getType().getFatherTypeId()%>&evaluation=0">
                        <img src="<%=searchGoods.get(i).getGoodImage()%>" class="img-responsive" alt="<%=searchGoods.get(i).getGoodName()%>" title="￥<%=searchGoods.get(i).getGoodPrice()%>"/>
                    </a>
                </div>

                <div class="col-md-6 result-info">
                    <a href="../GoodDetailsFindById?id=<%=searchGoods.get(i).getId() %>&fatherTypeId=<%=searchGoods.get(i).getType().getFatherTypeId()%>&evaluation=0">
                        <h4><%=searchGoods.get(i).getGoodName()%></h4>
                    </a>

                    <p><%=searchGoods.get(i).getGoodName()%></p>

                    <a href="../GoodDetailsFindById?id=<%=searchGoods.get(i).getId() %>&fatherTypeId=<%=searchGoods.get(i).getType().getFatherTypeId()%>&evaluation=0" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
                </div>
            </div>

            <div class="col-sm-4 col-md-4 result-box text-sm-center">
                <div class="col-md-6">
                    <a href="../GoodDetailsFindById?id=<%=searchGoods.get(i+1).getId() %>&fatherTypeId=<%=searchGoods.get(i+1).getType().getFatherTypeId()%>&evaluation=0">
                        <img src="<%=searchGoods.get(i+1).getGoodImage()%>" class="img-responsive" alt="<%=searchGoods.get(i+1).getGoodName()%>" title="￥<%=searchGoods.get(i+1).getGoodPrice()%>" />
                    </a>
                </div>

                <div class="col-md-6 result-info">
                    <a href="../GoodDetailsFindById?id=<%=searchGoods.get(i+1).getId() %>&fatherTypeId=<%=searchGoods.get(i+1).getType().getFatherTypeId()%>&evaluation=0">
                        <h4><%=searchGoods.get(i+1).getGoodName()%></h4>
                    </a>

                    <p><%=searchGoods.get(i+1).getGoodName()%></p>

                    <a href="../GoodDetailsFindById?id=<%=searchGoods.get(i+1).getId() %>&fatherTypeId=<%=searchGoods.get(i+1).getType().getFatherTypeId()%>&evaluation=0" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
                </div>
            </div>

            <div class="col-sm-4 col-md-4 result-box text-sm-center">
                <div class="col-md-6">
                    <a href="../GoodDetailsFindById?id=<%=searchGoods.get(i+2).getId() %>&fatherTypeId=<%=searchGoods.get(i+2).getType().getFatherTypeId()%>&evaluation=0">
                        <img src="<%=searchGoods.get(i+2).getGoodImage()%>" class="img-responsive" alt="<%=searchGoods.get(i+2).getGoodName()%>" title="<%=searchGoods.get(i+2).getGoodPrice()%>" />
                    </a>
                </div>

                <div class="col-md-6 result-info">
                    <a href="../GoodDetailsFindById?id=<%=searchGoods.get(i+2).getId() %>&fatherTypeId=<%=searchGoods.get(i+2).getType().getFatherTypeId()%>&evaluation=0">
                        <h4><%=searchGoods.get(i+2).getGoodName()%></h4>
                    </a>

                    <p><%=searchGoods.get(i+2).getGoodName()%></p>

                    <a href="../GoodDetailsFindById?id=<%=searchGoods.get(i+2).getId() %>&fatherTypeId=<%=searchGoods.get(i+2).getType().getFatherTypeId()%>&evaluation=0" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
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
<script src="../plugins/owl-carousel/owl.carousel.min.js"></script>

<script src="../js/global.js"></script>
</body>
</html>

