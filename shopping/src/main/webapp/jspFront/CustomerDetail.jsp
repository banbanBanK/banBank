<%--
  Created by IntelliJ IDEA.
  User: 该读过
  Date: 2018/7/28
  Time: 14:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <title>Staro - CustomerDetail</title>

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


<!-- Left menu -->
<div class="menu-left hidden-xs">
    <a href="index.jsp" class="logo-left">
        <img src="../img/logo.png" alt="" />
    </a>

    <div class="nav-item">
        <a href="login.jsp" class="text-primary">
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
    <div class="container m-t-100 m-b-100">
        <div class="row">
            <div class="col-sm-12">
                <h1 class="text-xs-center">信息更改</h1>
            </div>

            <!--				<div class="col-sm-12 m-t-70">
                                <div id="map" class="block-map" data-lat="38.880464" data-lng="-77.133318" data-zoom="16" data-marker="img/pin.png" data-string="
                            &nbsp;<i class='fas fa-map-marker' style='font-size:15px;'></i>&nbsp; <span style='font-weight:bold;'>Staro Theme</span><br><br>
                            <i class='fas fa-location-arrow' style='font-size:15px;'></i>&nbsp; 12 Rock Rd, VA 22066, USA<br><br>
                            <i class='fas fa-mobile-alt' style='font-size:15px;'></i>&nbsp; <a href=''>+1 0123-456.789</a><br><br>
                            <i class='fas fa-envelope' style='font-size:15px;'></i>&nbsp; <a href='#'>office@company.com</a><br><br>"></div>
                            </div>-->

            <!--				<div class="col-sm-12 text-center m-t-70">
                                <p>Aorem ipsum dolor sit amet consecter adipsicing elit sed usm tempor incididunt ut reitad dolore magna aliqua ut enim beniaps quis nostrual exercitationullamco laboris sed bcea lorem ipsum dolor comoda lorem ipsum dolor sit amet consectetur adipisicing elit</p>
                            </div>-->
        </div>

        <div class="row m-t-100">
            <div class="col-sm-12 col-md-4">
                <!--					<div class="contact-info text-xs-center">
                                        <h3>Office</h3>

                                        <p><i class="far fa-building"></i>&nbsp; 12 Rock Rd, VA 22066, USA</p>
                                        <p><i class="fas fa-mobile-alt"></i>&nbsp; +1 0123-456.789</p>
                                        <p><i class="fas fa-mobile-alt"></i>&nbsp; +1 0123-789.456</p>
                                        <p><i class="far fa-envelope"></i>&nbsp; <a href="mailto:sales@company.com">sales@company.com</a></p>
                                        <p><i class="far fa-envelope"></i>&nbsp; <a href="mailto:support@company.com">support@company.com</a></p>
                                    </div>-->

                <div class="contact-info text-xs-center">
                    <h3>Follow Us</h3>

                    <ul class="contact-sm">
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

            <div class="col-xs-12 col-sm-12 col-md-7 pull-right">
                <form>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group form-group-default required">
                                <label>姓名</label>
                                <input type="text" name="first_name" class="form-control" required />
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="form-group form-group-default required">
                                <label>性别</label>
                                <select name="Sex" class="form-control">
                                    <option></option>
                                    <option value="unKnown">未知</option>
                                    <option value="Female">女</option>
                                    <option value="Male">男</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group form-group-default required">
                                <label>Email</label>
                                <input type="email" name="email" class="form-control" required />
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="form-group form-group-default required">
                                <label>生日</label>
                                <input type="date" name="birthday" class="form-control" required />
                            </div>
                        </div>
                    </div>
                    <div class="row">

                        <div class="col-sm-6">
                            <div class="form-group form-group-default required">
                                <label>联系电话</label>
                                <input type="phone" name="phone" class="form-control" required />
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="form-group form-group-default ">
                                <label>邮编</label>
                                <input type="text" name="zipCode" class="form-control" />
                            </div>
                        </div>

                    </div>
                    <div class="form-group form-group-default required">
                        <label>详细地址</label>
                        <input type="text" name="address" class="form-control" required" />
                    </div>

                    <div class="form-group form-group-default">
                        <label>个人简介</label>
                        <textarea name="message" class="form-control v-resize" rows="10" ></textarea>
                    </div>

                    <div class="form-group text-center">
                        <button type="submit" class="btn btn-success"><i class="fas fa-paper-plane"></i>&nbsp; Sign In</button>
                    </div>
                </form>
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
                            <h5>Support</h5>

                            <p class="m-b-20">Our goal is to offer you a level of support that<br />matches the attention to detail of our products.</p>

                            <ul class="footer-menu">
                                <li>
                                    <i class="far fa-building"></i>&nbsp; 12 Rock Rd, VA 22066, USA
                                </li>
                                <li>
                                    <i class="fas fa-mobile-alt"></i>&nbsp; <a href="">+1 0123-456.789</a>
                                </li>
                                <li>
                                    <i class="far fa-envelope"></i>&nbsp; <a href="mailto:info@company.com">info@company.com</a>
                                </li>
                            </ul>
                        </div>

                        <div class="col-xs-12 col-sm-6 col-md-2 m-b-40 text-xs-center">
                            <h5>Company</h5>

                            <ul class="footer-menu">
                                <li>
                                    <i class="fas fa-angle-right m-r-5 hidden-xs"></i> <a href="#">About</a>
                                </li>
                                <li>
                                    <i class="fas fa-angle-right m-r-5 hidden-xs"></i> <a href="#">Technology</a>
                                </li>
                                <li>
                                    <i class="fas fa-angle-right m-r-5 hidden-xs"></i> <a href="#">The Team</a>
                                </li>
                                <li>
                                    <i class="fas fa-angle-right m-r-5 hidden-xs"></i> <a href="#">Blog</a>
                                </li>
                                <li>
                                    <i class="fas fa-angle-right m-r-5 hidden-xs"></i> <a href="#">Careers</a>
                                </li>
                                <li>
                                    <i class="fas fa-angle-right m-r-5 hidden-xs"></i> <a href="#">Contact</a>
                                </li>
                            </ul>
                        </div>

                        <div class="col-xs-12 col-sm-6 col-md-2 m-b-40 text-xs-center">
                            <h5>Services</h5>

                            <ul class="footer-menu">
                                <li>
                                    <i class="fas fa-angle-right m-r-5 hidden-xs"></i> <a href="#">FAQ</a>
                                </li>
                                <li>
                                    <i class="fas fa-angle-right m-r-5 hidden-xs"></i> <a href="#">Warranty</a>
                                </li>
                                <li>
                                    <i class="fas fa-angle-right m-r-5 hidden-xs"></i> <a href="#">Payments</a>
                                </li>
                                <li>
                                    <i class="fas fa-angle-right m-r-5 hidden-xs"></i> <a href="#">Shipping & Returns</a>
                                </li>
                                <li>
                                    <i class="fas fa-angle-right m-r-5 hidden-xs"></i> <a href="#">Privacy Policy</a>
                                </li>
                                <li>
                                    <i class="fas fa-angle-right m-r-5 hidden-xs"></i> <a href="#">Terms & Conditions</a>
                                </li>
                            </ul>
                        </div>

                        <div class="col-xs-12 col-sm-6 col-md-3 m-b-40 text-xs-center">
                            <h5>Newsletter</h5>

                            <p class="m-b-20">Join us to get news updates from us</p>

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
                            <p>&copy; 2018 <a href="#">Staro</a>. All rights reserved.</p>
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

<script src="../js/global.js"></script>

<script defer src="http://ditu.google.cn/maps/api/js?key=AIzaSyChRAVbhFw2Tc8vdJdnX2naETO_9yvLYxc&callback=initMap"></script>
</body>
</html>
