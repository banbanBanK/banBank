<%@ page import="java.util.List" %>
<%@ page import="com.chinasofti.ssm.domain.*" %><%--
  Created by IntelliJ IDEA.
  User: 该读过
  Date: 2018/7/28
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<%
    Good good = (Good) request.getAttribute("good");
    List<Good> recommendGoods = (List<Good>) request.getAttribute("recommendGoods");
    ProductDetails productDetails = (ProductDetails) request.getAttribute("productDetails");
    List<Faq> faqs = (List<Faq>) request.getAttribute("faqs");
    List<ProductStyle> productStyles = (List<ProductStyle>) request.getAttribute("productStyles");
    int evaluation = 0;
    request.setAttribute("evaluation",evaluation);
%>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <title><%=good.getGoodName()%></title>

    <meta name="author" content="IntelCoder, www.intelcoder.com" />
    <meta name="description" content="Staro is a clean and light HTML5 theme for showing your products in a simple and elegant way. It's a fully responsive e-commerce template that was built with customers in mind." />

    <link rel="icon" href="../img/favicon.png" type="image/png" />

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600" />

    <link rel="stylesheet" href="../plugins/bootstrap/bootstrap.min.css" />
    <link rel="stylesheet" href="../plugins/font-awesome/css/all.css" />
    <link rel="stylesheet" href="../plugins/bxslider/bxslider.min.css" />

    <link rel="stylesheet" href="../css2/style.css" />
    <link rel="stylesheet" href="../css2/responsive.css" />
    <link rel="stylesheet" href="../css2/ic-helpers.min.css" />

</head>
<body>

<%
    String customerId = (String)session.getAttribute("customerId");
    boolean loginStatus = false ;
    if(customerId!=null ){
        loginStatus = (boolean)session.getAttribute("loginStatus");
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
        <a href="/jspFront/login.jsp" class="text-primary">
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


    <ul style="margin: 150px 50px">
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
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-5 p-0">
                <div class="product-img-wrapper">
                    <div class="product-img-container bg-info">
                        <div class="bxslider">
                            <div><img src="../img/products/product-details1.png" alt="" /></div>
                            <div><img src="../img/products/product-details2.png" alt="" /></div>
                            <div><img src="../img/products/product-details3.png" alt="" /></div>
                            <div><img src="../img/products/product-details4.png" alt="" /></div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xs-12 col-sm-12 col-md-7 m-t-100">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-10 col-md-push-1 m-b-70">
                        <div class="row">
                            <div class="col-sm-8">
                                <h2><%=good.getGoodName()%></h2>
                            </div>

                            <div class="col-sm-4">
                                <h5 class="text-xs-center text-right text-gray"><%=good.getType().getTypeName()%> <img src="../img/computer.png" class="h-30 align-text-bottom m-l-20" alt="" /></h5>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 m-tb-100">
                                <p class="text-justify m-tb-70"><%=productDetails.getReview()%></p>

                                <h2>￥<%=good.getGoodPrice()%><small class="strike m-l-10">原价</small></h2>

                                <div class="m-b-20">
                                    <%
                                        if(productStyles != null && productStyles.size() != 0){
                                            for(int i = 1;i <= productStyles.size();i++){
                                                for(int k = 0;k < productStyles.size();k++){
                                                    if(productStyles.get(k).getRelationPlace() == i){
                                    %>
                                    <a href="../GoodDetailsFindById?id=<%=productStyles.get(k).getRelation().getId()%>&fatherTypeId=<%=productStyles.get(k).getRelation().getType().getFatherTypeId()%>" class="thumbnail variant active">
                                        <span class="variant-color" style="background: <%=productStyles.get(k).getRelatedColor()%>;"></span>
                                        <span class="variant-name"><%=productStyles.get(k).getRelatedColor()%></span>
                                    </a>
                                    <%
                                                    }
                                                }
                                            }
                                        }
                                    %>
                                </div>

                                <a onclick="addToCart(<%=good.getGoodId()%>,<%=customerId%>,<%=loginStatus%>)" class="btn btn-success"><i class="fas fa-shopping-bag"></i>&nbsp; Add to Cart</a>
                            </div>
                            <script>
                                function addToCart(goodId,customerId,status)
                                {
                                    if (status === true) {
                                        var param = "/addToCart?customerId=" + customerId + "&goodId=" + goodId;
                                        $.ajax(
                                            {
                                                url: "/addToCart?customerId=" + customerId + "&goodId=" + goodId, // 数据发送方式
                                                type: "post", // 接受数据格式
                                                dataType: "json", // 要传递的数据
                                                success: function a(result) {
                                                    if (result)
                                                        alert("添加成功，请到购物车中查看~");
                                                    else
                                                        alert("该商品已经添加至购物车中，请仔细查看哦~");
                                                }
                                            }
                                        )
                                    } else {
                                        alert("您还没有登录，登录后才能继续操作哦~");
                                        window.location = "http://localhost:8080/jspFront/login.jsp";
                                    }
                                }
                            </script>
                            <!-- Tabs -->
                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <div role="tabpanel">
                                    <ul class="nav nav-tabs nav-justified text-uppercase m-b-50" role="tablist">
                                        <li class="active">
                                            <a href="#tab1" data-toggle="tab">商品介绍</a>
                                        </li>

                                        <li>
                                            <a href="#tab2" data-toggle="tab">规格与包装</a>
                                        </li>

                                        <li>
                                            <a href="#tab3" data-toggle="tab">商品评价</a>
                                        </li>

                                        <li>
                                            <a href="#tab4" data-toggle="tab">社区互动</a>
                                        </li>
                                    </ul>

                                    <div class="tab-content">
                                        <div class="tab-pane active" id="tab1">
                                            <dl class="dl-horizontal">
                                                <dt>商品名称</dt><dd><%=good.getGoodName()%></dd>
                                                <dt>商品编号</dt><dd><%=good.getGoodId()%></dd>
                                                <dt>商品类型</dt><dd><%=productDetails.getProductType()%></dd>
                                                <dt>商品定位</dt><dd><%=productDetails.getProductPosition()%></dd>
                                                <dt>商品毛重</dt><dd><%=productDetails.getWeight()%></dd>
                                                <dt>上市时间</dt><dd><%=productDetails.getTimeToMarket()%></dd>
                                            </dl>
                                        </div>

                                        <div class="tab-pane" id="tab2">
                                            <dl class="dl-horizontal">
                                                <dt>CPU型号</dt><dd><%=productDetails.getCpu()%></dd>
                                                <dt>内存容量</dt><dd><%=productDetails.getRam()%></dd>
                                                <dt>硬盘容量</dt><dd><%=productDetails.getHardDisk()%></dd>
                                                <dt>屏幕尺寸</dt><dd><%=productDetails.getScreenSize()%></dd>
                                                <dt>显卡型号</dt><dd><%=productDetails.getGraphicsCard()%></dd>
                                                <hr class="m-tb-30" />
                                                <dt>包装清单</dt><dd><%=productDetails.getPackingList()%></dd>
                                            </dl>
                                        </div>

                                        <div class="tab-pane" id="tab3">
                                            <form >
                                                <div class="form-group form-group-default required">
                                                    <label>评论内容:</label>
                                                    <textarea id="comment" name="comment" class="form-control v-resize" rows="7" required></textarea>
                                                    <input type="hidden" id="evaluation">
                                                </div>
                                                <p onmouseover="rate(this,event)">
                                                    <img src="../img/demo/star-off.png" title="很烂" />
                                                    <img src="../img/demo/star-off.png" title="一般" />
                                                    <img src="../img/demo/star-off.png" title="还好" />
                                                    <img src="../img/demo/star-off.png" title="较好" />
                                                    <img src="../img/demo/star-off.png" title="很好" />
                                                </p>
                                                <script type="text/javascript">
                                                    function rate(obj,oEvent){
                                                        var imgSrc = '../img/demo/star-off.png'; //没有填色的星星
                                                        var imgSrc_2 = '../img/demo/star-on.png'; //打分后有颜色的星星
                                                        if(obj.rateFlag) return;
                                                        var e = oEvent || window.event;
                                                        var target = e.target || e.srcElement;
                                                        var imgArray = obj.getElementsByTagName("img");
                                                        for(var i=0; !(i >= imgArray.length); i++){
                                                            imgArray[i]._num = i;
                                                            imgArray[i].onclick=function(){
                                                                if(obj.rateFlag) return;
                                                                obj.rateFlag=true;
                                                                document.getElementById("evaluation").value = this._num+1;
                                                                alert(document.getElementById("evaluation").value); //this._num+1这个数字写入到数据库中,作为评分的依据
                                                            };
                                                        }
                                                        if(target.tagName=="IMG"){
                                                            for(var j=0; !(j >= imgArray.length); j++){
                                                                if(!(j > target._num)){
                                                                    imgArray[j].src=imgSrc_2;
                                                                } else {
                                                                    imgArray[j].src=imgSrc;
                                                                }
                                                            }
                                                        } else {
                                                            for(var k=0; !(k >= imgArray.length); k++){
                                                                imgArray[k].src=imgSrc;
                                                            }
                                                        }
                                                    }
                                                </script>
                                                <div class="form-group text-right">
                                                    <input type="button"value="提交" class="btn btn-success" onclick="
                                                            var comment = document.getElementById('comment').value;
                                                            var evaluation = document.getElementById('evaluation').value;
                                                            location.href='../PublishComment?commentStr='+comment+'&customerId=1&id=<%=good.getId()%>&evaluation='+evaluation+'&fatherTypeId=<%=good.getType().getFatherTypeId()%>';"
                                                    />
                                                </div>
                                            </form>
                                        </div>

                                        <div class="tab-pane" id="tab4">
                                            <h4 class="m-b-30">心中有疑惑就问问别人吧~</h4>

                                            <%
                                                if(faqs != null && faqs.size() != 0){
                                                    for(int i = 0;i < 5 && i< faqs.size();i++){
                                                        Faq faq = faqs.get(i);
                                            %>
                                            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading" role="tab" id="q1">
                                                        <h4 class="panel-title">
                                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#col1" aria-expanded="false" aria-controls="col1">
                                                                <%=faq.getQuestion()%>
                                                            </a>
                                                        </h4>
                                                    </div>

                                                    <div id="col1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="q1">
                                                        <div class="panel-body">
                                                            <div class="text-uppercase m-b-15">
                                                                <small><span class="label label-primary">Answer</span></small>
                                                            </div>

                                                            <p class="text-justify"><%=faq.getAnswer()%></p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <%
                                                    }
                                                }
                                            %>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- Tabs -->
                        </div>
                    </div>
                </div>

                <div class="row bg-white">
                    <div class="col-xs-12 col-sm-1 col-md-1 vertical-col">
                        <div class="recommended-text">Recommended</div>
                    </div>

                    <div class="col-xs-12 col-sm-10 col-md-10">
                        <div class="row">
                            <%
                                for(int i = 0;i < 3;i++){
                                    Good recommendGood = recommendGoods.get(i);
                            %>
                            <div class="col-xs-12 col-sm-4 col-md-4">
                                <a href="../GoodDetailsFindById?id=<%=recommendGood.getId() %>&fatherTypeId=<%=recommendGood.getType().getFatherTypeId()%>" class="product-item">
                                    <img src="<%=recommendGood.getGoodImage() %>" class="img-responsive p-30" alt="" />
                                </a>
                                <a href="../GoodDetailsFindById?id=<%=recommendGood.getId() %>&fatherTypeId=<%=recommendGood.getType().getFatherTypeId()%>">
                                    <h5 class="text-center m-b-20"><%=recommendGood.getGoodName()%></h5>
                                </a>
                            </div>
                            <%
                                }
                            %>
                        </div>
                    </div>

                    <div class="col-xs-12 col-sm-1 col-md-1 hidden-xs"></div>
                </div>
            </div>
        </div>
    </div>
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
<script src="../plugins/bxslider/bxslider.min.js"></script>
<script src="../js/global.js"></script>
</body>
</html>
