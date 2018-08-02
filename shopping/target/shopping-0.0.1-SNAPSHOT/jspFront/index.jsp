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



<!-- Left menu -->
<div class="menu-left hidden-xs">
    <a href="index.jsp" class="logo-left">
        <img src="../img/logo.png" alt="" />
    </a>

    <div class="nav-item">
        <a href="CustomerDetail.jsp" class="text-primary">
            <i class="fas fa-user-circle fa-2x"></i>
        </a>
    </div>

    <div class="nav-item">
        <a href="cart.jsp" class="text-primary">
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

    <ul>
        <li><a href="products.jsp">Over-ear <img src="../img/icon-headphones.png" class="h-30 align-middle m-l-20" alt="" /></a></li>
        <li><a href="products.jsp">On-ear <img src="../img/icon-headphones.png" class="h-30 align-middle m-l-20" alt="" /></a></li>
        <li><a href="products.jsp">In-ear <img src="../img/icon-headphones.png" class="h-30 align-middle m-l-20" alt="" /></a></li>
        <li><a href="products.jsp">Accessories <img src="../img/icon-headphones.png" class="h-30 align-middle m-l-20" alt="" /></a></li>

        <li><hr class="m-tb-30" /></li>

        <li><a href="products.jsp">Products</a></li>
        <li><a href="product-details.jsp">Product Details</a></li>
        <li><a href="about.jsp">About</a></li>
        <li><a href="blog.jsp">Blog</a></li>
        <li><a href="blog-post.jsp">Blog Post</a></li>
        <li><a href="contact.jsp">Contact</a></li>
    </ul>

    <div class="social-media-box">
        <hr />

        <a href="#" class="text-primary" target="_blank"><i class="fab fa-facebook-square"></i></a>
        <a href="#" class="text-primary" target="_blank"><i class="fab fa-google-plus-square"></i></a>
        <a href="#" class="text-primary" target="_blank"><i class="fab fa-twitter-square"></i></a>
        <a href="#" class="text-primary" target="_blank"><i class="fab fa-instagram"></i></a>
        <a href="#" class="text-primary" target="_blank"><i class="fab fa-pinterest-square"></i></a>
        <a href="#" class="text-primary" target="_blank"><i class="fab fa-linkedin"></i></a>
        <a href="#" class="text-primary" target="_blank"><i class="fab fa-youtube-square"></i></a>
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
                            <%List<Good> goods = (List<Good>) request.getAttribute("goods");
                              if(goods!=null && goods.size()!=0){
                                  for(int i = 0; i<6;i++){
                            %>
                            <div class="item"><img src="<%=goods.get(i).getGoodImage()%>" alt="<%=goods.get(i).getGoodName()%>" title="售价：￥<%=goods.get(i).getGoodPrice()%>；产品：<%=goods.get(i).getGoodName()%>" /></div>
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
                if(specialGoods!=null&&specialGoods.size()!=0){
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

                                <button type="submit" class="btn btn-success btn-square">Join Us</button>
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
                                <input type="text" class="form-control search-input" placeholder="Start typing..." />

                                <span class="input-group-btn">
										<button type="submit" class="btn btn-primary search-button">Go!</button>
									</span>
                            </div>
                        </div>
                    </div>
                </form>

                <hr />
            </div>
        </div>

        <div class="row m-t-70 m-b-70">
            <div class="col-sm-12 text-center">
                <h4>we found 3 products for you:</h4>
            </div>
        </div>

        <div class="row m-b-20">
            <div class="col-sm-4 col-md-4 result-box text-sm-center">
                <div class="col-md-6">
                    <a href="#">
                        <img src="../img/products/product8.png" class="img-responsive" alt="" />
                    </a>
                </div>

                <div class="col-md-6 result-info">
                    <a href="#">
                        <h4>Staro-One</h4>
                    </a>

                    <p>ST-O S1000</p>

                    <a href="#" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
                </div>
            </div>

            <div class="col-sm-4 col-md-4 result-box text-sm-center">
                <div class="col-md-6">
                    <a href="#">
                        <img src="../img/products/product9.png" class="img-responsive" alt="" />
                    </a>
                </div>

                <div class="col-md-6 result-info">
                    <a href="#">
                        <h4>Staro-One</h4>
                    </a>

                    <p>ST-O S2000</p>

                    <a href="#" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
                </div>
            </div>

            <div class="col-sm-4 col-md-4 result-box text-sm-center">
                <div class="col-md-6">
                    <a href="#">
                        <img src="../img/products/product10.png" class="img-responsive" alt="" />
                    </a>
                </div>

                <div class="col-md-6 result-info">
                    <a href="#">
                        <h4>Staro-One</h4>
                    </a>

                    <p>ST-O S3000</p>

                    <a href="#" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
                </div>
            </div>
        </div>

        <div class="row m-b-20">
            <div class="col-sm-4 col-md-4 result-box text-sm-center">
                <div class="col-md-6">
                    <a href="#">
                        <img src="../img/products/product3.png" class="img-responsive" alt="" />
                    </a>
                </div>

                <div class="col-md-6 result-info">
                    <a href="#">
                        <h4>Staro-Two</h4>
                    </a>

                    <p>ST-T A100</p>

                    <a href="#" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
                </div>
            </div>

            <div class="col-sm-4 col-md-4 result-box text-sm-center">
                <div class="col-md-6">
                    <a href="#">
                        <img src="../img/products/product2.png" class="img-responsive" alt="" />
                    </a>
                </div>

                <div class="col-md-6 result-info">
                    <a href="#">
                        <h4>Staro-Two</h4>
                    </a>

                    <p>ST-T A100</p>

                    <a href="#" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
                </div>
            </div>

            <div class="col-sm-4 col-md-4 result-box text-sm-center">
                <div class="col-md-6">
                    <a href="#">
                        <img src="../img/products/product1.png" class="img-responsive" alt="" />
                    </a>
                </div>

                <div class="col-md-6 result-info">
                    <a href="#">
                        <h4>Staro-Two</h4>
                    </a>

                    <p>ST-T A100</p>

                    <a href="#" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
                </div>
            </div>
        </div>

        <div class="row m-b-20">
            <div class="col-sm-4 col-md-4 result-box text-sm-center">
                <div class="col-md-6">
                    <a href="#">
                        <img src="../img/products/product4.png" class="img-responsive" alt="" />
                    </a>
                </div>

                <div class="col-md-6 result-info">
                    <a href="#">
                        <h4>Staro-Four</h4>
                    </a>

                    <p>ST-F M200</p>

                    <a href="#" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
                </div>
            </div>

            <div class="col-sm-4 col-md-4 result-box text-sm-center">
                <div class="col-md-6">
                    <a href="#">
                        <img src="../img/products/product6.png" class="img-responsive" alt="" />
                    </a>
                </div>

                <div class="col-md-6 result-info">
                    <a href="#">
                        <h4>Staro-Four</h4>
                    </a>

                    <p>ST-F M200</p>

                    <a href="#" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
                </div>
            </div>

            <div class="col-sm-4 col-md-4 result-box text-sm-center">
                <div class="col-md-6">
                    <a href="#">
                        <img src="../img/products/product7.png" class="img-responsive" alt="" />
                    </a>
                </div>

                <div class="col-md-6 result-info">
                    <a href="#">
                        <h4>Staro-Four</h4>
                    </a>

                    <p>ST-F M200</p>

                    <a href="#" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12 text-center">
                <a href="#" class="text-primary link-underline">Show all results</a>
            </div>
        </div>
    </div>
</div>
<!-- Search overlay -->

<script src="../plugins/jquery.min.js"></script>
<script src="../plugins/bootstrap/bootstrap.min.js"></script>
<script src="../plugins/owl-carousel/owl.carousel.min.js"></script>

<script src="../js/global.js"></script>
</body>
</html>

