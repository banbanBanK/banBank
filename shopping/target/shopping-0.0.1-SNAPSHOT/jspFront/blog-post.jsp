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

    <title>Staro - Blog Post</title>

    <meta name="author" content="IntelCoder, www.intelcoder.com" />
    <meta name="description" content="Staro is a clean and light HTML5 theme for showing your products in a simple and elegant way. It's a fully responsive e-commerce template that was built with customers in mind." />

    <link rel="icon" href="img/favicon.png" type="image/png" />

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600" />

    <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css" />
    <link rel="stylesheet" href="plugins/font-awesome/css/all.css" />

    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/responsive.css" />
    <link rel="stylesheet" href="css/ic-helpers.min.css" />
</head>
<body>

<!-- Left menu -->
<div class="menu-left hidden-xs">
    <a href="index.html" class="logo-left">
        <img src="img/logo.png" alt="" />
    </a>

    <div class="nav-item">
        <a href="login.html" class="text-primary">
            <i class="fas fa-user-circle fa-2x"></i>
        </a>
    </div>

    <div class="nav-item">
        <a href="cart.html" class="text-primary">
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
        <a href="cart.html">
            <i class="fas fa-shopping-bag"></i>
            <span class="badge">3</span>
        </a>
    </div>

    <div class="account-side-btn visible-xs">
        <a href="login.html"><i class="fas fa-user-circle"></i></a>
    </div>

    <div class="home-side-btn visible-xs">
        <a href="index.html"><i class="fas fa-desktop"></i></a>
    </div>

    <ul>
        <li><a href="products.html">Over-ear <img src="img/icon-headphones.png" class="h-30 align-middle m-l-20" alt="" /></a></li>
        <li><a href="products.html">On-ear <img src="img/icon-headphones.png" class="h-30 align-middle m-l-20" alt="" /></a></li>
        <li><a href="products.html">In-ear <img src="img/icon-headphones.png" class="h-30 align-middle m-l-20" alt="" /></a></li>
        <li><a href="products.html">Accessories <img src="img/icon-headphones.png" class="h-30 align-middle m-l-20" alt="" /></a></li>

        <li><hr class="m-tb-30" /></li>

        <li><a href="products.html">Products</a></li>
        <li><a href="product-details.html">Product Details</a></li>
        <li><a href="about.html">About</a></li>
        <li><a href="blog.html">Blog</a></li>
        <li><a href="blog-post.html">Blog Post</a></li>
        <li><a href="contact.html">Contact</a></li>
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
        <div class="row m-b-70">
            <div class="col-sm-12">
                <h1 class="text-xs-center">Blog Post</h1>

                <div class="separator-one"></div>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-9 blog-container">
                <div class="blog-item">
                    <img src="img/blog4.jpg" class="img-responsive" alt="" />

                    <div class="row m-t-20">
                        <div class="col-xs-7 col-md-6 text-gray2">
                            <i class="fas fa-pencil-alt"></i>&nbsp; Andrew Whitehead
                        </div>

                        <div class="col-xs-5 col-md-6 text-gray2 text-right">
                            <i class="far fa-calendar-alt"></i>&nbsp; Oct 5, 2017
                        </div>
                    </div>

                    <h2 class="m-t-30">Launch of DSR9BT Wireless in Europe</h2>

                    <p class="text-justify">Are you shopping for the most stylish grad you know? Then they’ll love the critically acclaimed ATH-M50x headphones, which come in a variety of different colors. Each year, top audio engineers and pro audio reviewers praise the amazing audio quality of the ATH-M50x headphones. They’re currently available in traditional black and silver and white and silver designs, as well as two limited-edition color schemes: the red and gold ATH-M50xRD and the blue and black ATH-M50xBB. Help your grad stand out from the crowd after graduation and beyond with these statement headphones.</p>

                    <p class="text-justify">Are you shopping for the most stylish grad you know? Then they’ll love the critically acclaimed ATH-M50x headphones, which come in a variety of different colors. Each year, top audio engineers and pro audio reviewers praise the amazing audio quality of the ATH-M50x headphones. They’re currently available in traditional black and silver and white and silver designs, as well as two limited-edition color schemes: the red and gold ATH-M50xRD and the blue and black ATH-M50xBB. Help your grad stand out from the crowd after graduation and beyond with these statement headphones.</p>

                    <p class="text-justify">Are you shopping for the most stylish grad you know? Then they’ll love the critically acclaimed ATH-M50x headphones, which come in a variety of different colors. Each year, top audio engineers and pro audio reviewers praise the amazing audio quality of the ATH-M50x headphones.</p>

                    <div class="row m-t-70">
                        <div class="col-md-6 text-xs-center">
                            <h5>Tags: <a href="#" class="text-success">wireless</a>, <a href="#" class="text-success">europe</a>, <a href="#" class="text-success">headphones</a></h5>
                        </div>

                        <div class="col-md-6 text-xs-center text-right">
                            <a href="#"><h5 class="m-xs-t-20 text-success"><i class="fas fa-share-alt"></i>&nbsp; Share</h5></a>
                        </div>
                    </div>
                </div>

                <div class="row comment">
                    <div class="col-xs-4 col-sm-2 col-md-2">
                        <img src="img/face1.jpg" class="img-responsive" alt="" />
                    </div>

                    <div class="col-xs-8 col-sm-10 col-md-10">
                        <h5 class="m-b-5 text-success">Jackson Storm</h5>

                        <p><small class="text-gray2 text-uppercase">Jun 12, 2018 16:48 PM</small></p>

                        <p>We're really glad to dolor sit amet orem psum dolor sit amet consectetur adipisic elit sed do eiusmod tempor incididuntut labore et dolore magna aliqua utae enim ad minim veniam.</p>

                        <a href="#" class="btn btn-success btn-xs"><i class="fas fa-reply"></i>&nbsp; Reply</a>
                    </div>
                </div>

                <div class="row comment-reply">
                    <div class="col-xs-push-2 col-xs-10">
                        <div class="row">
                            <div class="col-xs-4 col-sm-2 col-md-2">
                                <img src="img/face2.jpg" class="img-responsive" alt="" />
                            </div>

                            <div class="col-xs-8 col-sm-10 col-md-10">
                                <h5 class="m-b-5 text-success">Lightning McQueen</h5>

                                <p><small class="text-gray2 text-uppercase">Jun 14, 2018 11:13 AM</small></p>

                                <p>We're really glad to dolor sit amet, consectetur adipisicing elit. Neque dolores, deleniti sed. Dicta praesentium voluptatibus temporibus natus magnam amet fugiat architecto, perspiciatis eligendi culpa molestiae quasi possimus adipisci, esse repellendus!</p>

                                <a href="#" class="btn btn-success btn-xs"><i class="fas fa-reply"></i>&nbsp; Reply</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row comment">
                    <div class="col-xs-4 col-sm-2 col-md-2">
                        <img src="img/face3.jpg" class="img-responsive" alt="" />
                    </div>

                    <div class="col-xs-8 col-sm-10 col-md-10">
                        <h5 class="m-b-5 text-success">Cruz Ramirez</h5>

                        <p><small class="text-gray2 text-uppercase">Jun 15, 2018 13:53 PM</small></p>

                        <p>We're really glad to dolor sit amet orem psum dolor sit amet consectetur adipisic elit sed do eiusmod tempor incididuntut labore et dolore magna aliqua utae enim ad minim veniam.</p>

                        <a href="#" class="btn btn-success btn-xs"><i class="fas fa-reply"></i>&nbsp; Reply</a>
                    </div>
                </div>

                <form class="form-reply">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group form-group-default">
                                <label>Post Reply</label>
                                <textarea name="message" class="form-control v-resize" rows="5"></textarea>
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group form-group-default required">
                                <label>Name</label>
                                <input type="text" name="name" class="form-control" required />
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group form-group-default required">
                                <label>Email</label>
                                <input type="email" name="email" class="form-control" required />
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-12 m-t-20 text-xs-center">
                            <a href="#" class="btn btn-success"><i class="fas fa-comment"></i>&nbsp; Send Comment</a>
                        </div>
                    </div>
                </form>
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
                            <a href="#"><img src="img/blog-last-post1.jpg" class="img-responsive m-b-20" alt="" /></a>

                            <a href="#"><h4>Launch of our Bluetooth Collection in New York and Los Angeles</h4></a>

                            <small class="text-gray2"><i class="far fa-calendar-alt"></i>&nbsp; Jun 12, 2018</small>
                        </li>
                        <li>
                            <a href="#"><img src="img/blog-last-post2.jpg" class="img-responsive m-b-20" alt="" /></a>

                            <a href="#"><h4>New Limited-Edition GQ Headphones</h4></a>

                            <small class="text-gray2"><i class="far fa-calendar-alt"></i>&nbsp; Jun 10, 2018</small>
                        </li>
                        <li>
                            <a href="#"><img src="img/blog-last-post3.jpg" class="img-responsive m-b-20" alt="" /></a>

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
                            <img src="img/insta-feed1.jpg" class="img-responsive" alt="" />
                        </div>

                        <div class="col-xs-4 col-sm-4 col-md-4 m-b-30">
                            <img src="img/insta-feed2.jpg" class="img-responsive" alt="" />
                        </div>

                        <div class="col-xs-4 col-sm-4 col-md-4 m-b-30">
                            <img src="img/insta-feed3.jpg" class="img-responsive" alt="" />
                        </div>

                        <div class="col-xs-4 col-sm-4 col-md-4 m-b-30">
                            <img src="img/insta-feed4.jpg" class="img-responsive" alt="" />
                        </div>

                        <div class="col-xs-4 col-sm-4 col-md-4 m-b-30">
                            <img src="img/insta-feed5.jpg" class="img-responsive" alt="" />
                        </div>

                        <div class="col-xs-4 col-sm-4 col-md-4 m-b-30">
                            <img src="img/insta-feed6.jpg" class="img-responsive" alt="" />
                        </div>

                        <div class="col-xs-4 col-sm-4 col-md-4 m-b-30">
                            <img src="img/insta-feed7.jpg" class="img-responsive" alt="" />
                        </div>

                        <div class="col-xs-4 col-sm-4 col-md-4 m-b-30">
                            <img src="img/insta-feed8.jpg" class="img-responsive" alt="" />
                        </div>

                        <div class="col-xs-4 col-sm-4 col-md-4 m-b-30">
                            <img src="img/insta-feed9.jpg" class="img-responsive" alt="" />
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
                        <img src="img/products/product8.png" class="img-responsive" alt="" />
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
                        <img src="img/products/product9.png" class="img-responsive" alt="" />
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
                        <img src="img/products/product10.png" class="img-responsive" alt="" />
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
                        <img src="img/products/product3.png" class="img-responsive" alt="" />
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
                        <img src="img/products/product2.png" class="img-responsive" alt="" />
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
                        <img src="img/products/product1.png" class="img-responsive" alt="" />
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
                        <img src="img/products/product4.png" class="img-responsive" alt="" />
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
                        <img src="img/products/product6.png" class="img-responsive" alt="" />
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
                        <img src="img/products/product7.png" class="img-responsive" alt="" />
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

<script src="plugins/jquery.min.js"></script>
<script src="plugins/bootstrap/bootstrap.min.js"></script>

<script src="js/global.js"></script>
</body>
</html>

