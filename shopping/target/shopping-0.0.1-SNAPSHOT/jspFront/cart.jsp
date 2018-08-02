<%@ page import="com.chinasofti.ssm.domain.Order" %>
<%@ page import="java.util.List" %>
<%@ page import="com.chinasofti.ssm.domain.Good" %><%--
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

    <title>Staro - Cart</title>

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
                <h1 class="text-xs-center">购物车</h1>

                <div class="separator-one"></div>
            </div>

            <div class="col-sm-12 m-t-70">
                <form class="form-horizontal">

                        <%float PriceForTotal=0; String customerId = null;%>
                        <%
                            List<Order> orders = (List<Order>) request.getAttribute("orders");
                            if(orders != null && orders.size()!=0){
                        %>
                        <table class="table table-hover">
                        <thead>
                        <tr>
                            <th class="text-center">订单号</th>
                            <th colspan="2">产品</th>
                            <th class="text-center">单价</th>
                            <th class="text-center">购买数量</th>
                            <th class="text-center">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                                for(Order order : orders){
                                    PriceForTotal += order.getGood().getGoodPrice() * order.getGoodNum();
                                    customerId = order.getCustomer().getCustomerId();
                        %>
                        <tr>

                            <td class="col-sm-1 text-center">
                                <strong><%=order.getId()%></strong>
                            </td>

                            <td class="col-sm-1 hidden-xs">
                                <a href="/product-details?goodId=<%=order.getGood().getGoodId()%>" class="thumbnail m-b-0">
                                    <img src="<%=order.getGood().getGoodImage()%>" title="售价：<%=order.getGood().getGoodPrice()%>元" alt="产品：<%=order.getGood().getGoodName()%>"/>
                                </a>
                            </td>

                            <td class="col-sm-4">
                                <h4 class="m-b-5"><a href="/product-details?goodId=<%=order.getGood().getGoodId()%>"><%=order.getGood().getGoodName() %></a></h4>
                                <h6>ST-T A100</h6>
                            </td>

                            <td class="col-sm-2 text-center"><strong>￥</strong><strong class="goodPrice"><%=order.getGood().getGoodPrice() %></strong></td>

                            <td class="col-sm-2 text-center">
                                <div class="input-group">
                                    <%int goodNum = order.getGoodNum(); %>
                                    <span class="input-group-addon hidden-sm">
												<input type="button" name="qty_minus" class="btn-qty" value="-" data-field="quantity" />
											</span>
                                    <input type="text" name="quantity" class="form-control text-center" value=<%=goodNum %> />

                                    <span class="input-group-addon hidden-sm">
												<input id="add" type="button" name="qty_plus" class="btn-qty" value="+" data-field="quantity"/>
											</span>
                                </div>
                            </td>



                            <td class="col-sm-1 text-center">
                                <a onclick="deleteOrder(<%=order.getId()%>)" class="btn btn-primary btn-square btn-sm"><i class="fas fa-times"></i></a>
                            </td>
                        </tr>
                        <%
                                }
                                %>
                        </tbody>
                            <tfoot>
                            <tr>
                                <td colspan="6" class="hidden-xs">&nbsp;</td>
                            </tr>

                            <tr>
                                <td colspan="3" class="b-t-0">请仔细查看订单信息然后在确认购买~</td>
                                <td colspan="3" class="b-t-0 text-right"><h3 class="m-b-0" id="totalPrice">总价：&nbsp; ￥<%=PriceForTotal %></h3></td>
                            </tr>
                            <tr>
                                <td colspan="6" class="b-t-0 hidden-xs">&nbsp;</td>
                            </tr>

                            <tr>
                                <td colspan="3" class="b-t-0">
                                    <a href="index.jsp" class="btn btn-default">继续购物</a>
                                </td>
                                <td colspan="3" class="b-t-0 text-right">
                                    <a onclick="doneOrder()" <%--href="/doneOrder?customerId=<%=customerId%>"--%> class="btn btn-success" ><i class="fas fa-shopping-bag"></i>&nbsp; 确认购买</a>
                                </td>
                                <script>
                                    function doneOrder() {
                                       var se = confirm("确认购买？");
                                       if(se===true){
                                           alert("已经确认购买，本次消费<%=PriceForTotal%>元！");

                                           var param = "doneOrder?customerId=" + <%=customerId%>;
                                           $.ajax({
                                               url: "/doneOrder?customerId="+ <%=customerId%>, // 数据发送方式
                                               type: "post", // 接受数据格式
                                               dataType: "json", // 要传递的数据
                                               data: param, // 回调函数，接受服务器端返回给客户端的值，即result值
                                               success: function a() {
                                                   window.location.reload();
                                               }
                                           });
                                       }else{
                                           alert("已取消购买！");
                                       }
                                    }
                                    function deleteOrder(orderId) {
                                        var se = confirm("确认删除？");
                                        if (se !== true) {
                                            alert("已取消！");
                                        } else {
                                            var param = "DeleteOrder?id=" + orderId;
                                            $.ajax({
                                                url: "/DeleteOrder?id="+orderId, // 数据发送方式
                                                type: "post", // 接受数据格式
                                                dataType: "json", // 要传递的数据
                                                data: param, // 回调函数，接受服务器端返回给客户端的值，即result值
                                                success: function a(result) {
                                                    if (result)
                                                        window.location.reload();
                                                }
                                            });
                                        }
                                    }
                                </script>
                            </tr>
                            </tfoot>
                        </table>
                            <%
                            }else{
                        %>
                        <h2 >购物车里空空如也，<a href="../jspFront/products.jsp" style="color: #793f86;font-weight: bold">点击这里</a>去购物吧~</h2>
                        <div style="height: 200px"></div>
                    <%
                            }
                    %>
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
                                    <button type="submit" class="btn btn-success btn-square">Join Us</button>
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
                    <a href="/product-details?goodId=<%=goods.get(i).getGoodId()%>">
                        <img src="<%=goods.get(i).getGoodImage()%>" class="img-responsive" alt="<%=goods.get(i).getGoodName()%>" title="￥<%=goods.get(i).getGoodPrice()%>"/>
                    </a>
                </div>

                <div class="col-md-6 result-info">
                    <a href="/product-details?goodId=<%=goods.get(i).getGoodId()%>">
                        <h4><%=goods.get(i).getGoodName()%></h4>
                    </a>

                    <p><%=goods.get(i).getGoodName()%></p>

                    <a href="#" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
                </div>
            </div>

            <div class="col-sm-4 col-md-4 result-box text-sm-center">
                <div class="col-md-6">
                    <a href="/product-details?goodId=<%=goods.get(i+1).getGoodId()%>">
                        <img src="<%=goods.get(i+1).getGoodImage()%>" class="img-responsive" alt="<%=goods.get(i+1).getGoodName()%>" title="￥<%=goods.get(i+1).getGoodPrice()%>" />
                    </a>
                </div>

                <div class="col-md-6 result-info">
                    <a href="/product-details?goodId=<%=goods.get(i+1).getGoodId()%>">
                        <h4><%=goods.get(i+1).getGoodName()%></h4>
                    </a>

                    <p><%=goods.get(i+1).getGoodName()%></p>

                    <a href="#" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
                </div>
            </div>

            <div class="col-sm-4 col-md-4 result-box text-sm-center">
                <div class="col-md-6">
                    <a href="/product-details?goodId=<%=goods.get(i+2).getGoodId()%>">
                        <img src="<%=goods.get(i+2).getGoodImage()%>" class="img-responsive" alt="<%=goods.get(i+2).getGoodName()%>" title="<%=goods.get(i+2).getGoodPrice()%>" />
                    </a>
                </div>

                <div class="col-md-6 result-info">
                    <a href="/product-details?goodId=<%=goods.get(i+2).getGoodId()%>">
                        <h4><%=goods.get(i+2).getGoodName()%></h4>
                    </a>

                    <p><%=goods.get(i+2).getGoodName()%></p>

                    <a href="#" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
                </div>
            </div>
        </div>
        <%
            }
        }
        %>
<%--        <div class="row m-b-20">
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
        </div>--%>

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
                 alert(result.length);
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
                    <a href="/product-details?goodId=@{resultId1}">
                        <img src="@{resultImg1}" class="img-responsive" alt="@{resultName1}" title="售价：@{resultPrice1}元"/>
                    </a>
                </div>

                <div class="col-md-6 result-info">
                    <a href="/product-details?goodId=@{resultId1}">
                        <h4>@{resultName1}</h4>
                    </a>

                    <p>@{resultName1}</p>

                    <a href="product-details?goodId=@{resultId1}" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
                </div>
            </div>

            <div class="col-sm-4 col-md-4 result-box text-sm-center">
                <div class="col-md-6">
                    <a href="/product-details?goodId=@{resultId2}">
                        <img src="@{resultImg2}" class="img-responsive" alt="@{resultName2}" title="售价：@{resultPrice2}元" />
                    </a>
                </div>

                <div class="col-md-6 result-info">
                    <a href="/product-details?goodId=@{resultId2}">
                        <h4>@{resultName2}</h4>
                    </a>

                    <p>@{resultName2}</p>

                    <a href="/product-details?goodId=@{resultId2}" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
                </div>
            </div>

            <div class="col-sm-4 col-md-4 result-box text-sm-center">
                <div class="col-md-6">
                    <a href="/product-details?goodId=@{resultId3}">
                        <img src="@{resultImg3}" class="img-responsive" alt="@{resultName3}" title="售价：@{resultPrice3}元" />
                    </a>
                </div>

                <div class="col-md-6 result-info">
                    <a href="/product-details?goodId=@{resultId3}">
                        <h4>@{resultName3}</h4>
                    </a>

                    <p>@{resultName3}</p>

                    <a href="/product-details?goodId=@{resultId3}" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
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
                         resultPrice3:result[3*i+2][3]
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

