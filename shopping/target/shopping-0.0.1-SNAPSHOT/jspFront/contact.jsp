<%@ page import="com.chinasofti.ssm.domain.Type" %>
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

    <title>Staro - Contact</title>

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
        <li><a href="contact.jsp">Contact</a></li>
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
        <div class="row">
            <div class="col-sm-12">
                <h1 class="text-xs-center">Contact</h1>
            </div>

            <div class="col-sm-12 m-t-70">
                <div id="map" class="block-map" data-lat="38.880464" data-lng="-77.133318" data-zoom="16" data-marker="img/pin.png" data-string="
				&nbsp;<i class='fas fa-map-marker' style='font-size:15px;'></i>&nbsp; <span style='font-weight:bold;'>Staro Theme</span><br><br>
				<i class='fas fa-location-arrow' style='font-size:15px;'></i>&nbsp; 12 Rock Rd, VA 22066, USA<br><br>
				<i class='fas fa-mobile-alt' style='font-size:15px;'></i>&nbsp; <a href=''>+1 0123-456.789</a><br><br>
				<i class='fas fa-envelope' style='font-size:15px;'></i>&nbsp; <a href='#'>office@company.com</a><br><br>"></div>
            </div>

            <div class="col-sm-12 text-center m-t-70">
                <p>Aorem ipsum dolor sit amet consecter adipsicing elit sed usm tempor incididunt ut reitad dolore magna aliqua ut enim beniaps quis nostrual exercitationullamco laboris sed bcea lorem ipsum dolor comoda lorem ipsum dolor sit amet consectetur adipisicing elit</p>
            </div>
        </div>

        <div class="row m-t-100">
            <div class="col-sm-12 col-md-4">
                <div class="contact-info text-xs-center">
                    <h3>Office</h3>

                    <p><i class="far fa-building"></i>&nbsp; 12 Rock Rd, VA 22066, USA</p>
                    <p><i class="fas fa-mobile-alt"></i>&nbsp; +1 0123-456.789</p>
                    <p><i class="fas fa-mobile-alt"></i>&nbsp; +1 0123-789.456</p>
                    <p><i class="far fa-envelope"></i>&nbsp; <a href="mailto:sales@company.com">sales@company.com</a></p>
                    <p><i class="far fa-envelope"></i>&nbsp; <a href="mailto:support@company.com">support@company.com</a></p>
                </div>

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
                                <label>First Name</label>
                                <input type="text" name="first_name" class="form-control" required />
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="form-group form-group-default required">
                                <label>Last Name</label>
                                <input type="text" name="last_name" class="form-control" required />
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
                            <div class="form-group form-group-default">
                                <label>Department</label>
                                <select name="department" class="form-control">
                                    <option value="general">General</option>
                                    <option value="support">Support</option>
                                    <option value="sales">Sales</option>
                                    <option value="press">Press</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="form-group form-group-default required">
                        <label>Subject</label>
                        <input type="text" name="subject" class="form-control" required />
                    </div>

                    <div class="form-group form-group-default required">
                        <label>Message</label>
                        <textarea name="message" class="form-control v-resize" rows="10" required></textarea>
                    </div>

                    <div class="form-group text-center">
                        <button type="submit" class="btn btn-success"><i class="fas fa-paper-plane"></i>&nbsp; Send Message</button>
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

<script defer src="http://ditu.google.cn/maps/api/js?key=AIzaSyChRAVbhFw2Tc8vdJdnX2naETO_9yvLYxc&callback=initMap"></script>
</body>
</html>
