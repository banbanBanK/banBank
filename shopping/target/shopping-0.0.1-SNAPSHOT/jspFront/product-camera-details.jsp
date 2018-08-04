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
    int evaluation = (int) request.getAttribute("evaluation");
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

    <script type="text/javascript" src="../js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="../js/jquery.raty.js"></script>
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
        <%
            List<Type> types_parents = (List<Type>)request.getAttribute("types_parents");
            if(types_parents != null && types_parents.size() != 0){
                for(Type type_parents : types_parents){
        %>
        <li>
            <a href="../GoodFindByRootTypeId?fatherTypeId=<%=type_parents.getTypeId() %>"><%=type_parents.getTypeName() %>
                <img src="../img/icon-headphones.png" class="h-30 align-middle m-l-20" alt="" />
            </a>
        </li>
        <ul>
            <%
                List<Type> types_children = (List<Type>) request.getAttribute("types_children");
                if(types_children != null && types_children.size() != 0 && type_parents.getTypeId().equals(types_children.get(0).getFatherTypeId())){
                    for(Type type_children : types_children){
            %>
            <li>
                <a href="../GoodFindByChildrenTypeId?typeId=<%=type_children.getTypeId() %>&fatherTypeId=<%=type_parents.getTypeId() %>"><%=type_children.getTypeName() %>
                    <img src="../img/icon-headphones.png" class="h-30 align-middle m-l-20" alt="" />
                </a>
            </li>
            <%
                    }
                }
            %>
        </ul>
        <%
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
                <img src="../img/icon-headphones.png" class="h-30 align-middle m-l-20" alt="" />
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
                                <h5 class="text-xs-center text-right text-gray"><%=good.getType().getTypeName()%> <img src="../img/icon-headphones.png" class="h-30 align-text-bottom m-l-20" alt="" /></h5>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 m-tb-100">
                                <p class="text-justify m-tb-70"><%=productDetails.getReview()%></p>

                                <h2><%=good.getGoodPrice()%><small class="strike m-l-10">原价</small></h2>

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

                                <a href="#" class="btn btn-success"><i class="fas fa-shopping-bag"></i>&nbsp; Add to Cart</a>
                            </div>

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
                                                <dt>传感器类型</dt><dd><%=productDetails.getSensorType()%></dd>
                                                <dt>传感器尺寸</dt><dd><%=productDetails.getSensorSize()%></dd>
                                                <dt>有效像素</dt><dd><%=productDetails.getPixel()%></dd>
                                                <dt>最高分辨率</dt><dd><%=productDetails.getResolution()%></dd>
                                                <dt>显示屏类型</dt><dd><%=productDetails.getScreenType()%></dd>
                                                <dt>显示屏尺寸</dt><dd><%=productDetails.getScreenSize()%></dd>
                                                <hr class="m-tb-30" />
                                                <dt>包装清单</dt><dd><%=productDetails.getPackingList()%></dd>
                                            </dl>
                                        </div>

                                        <div class="tab-pane" id="tab3">
                                            <form >
                                                <div class="form-group form-group-default required">
                                                    <label>评论内容:</label>
                                                    <textarea id="comment" name="comment" class="form-control v-resize" rows="7" required></textarea>
                                                </div>
                                                <div id="starts"></div>
                                                <script type="text/javascript">
                                                    $(function(){
                                                        $("#starts").raty({
                                                            number : 5,//星星个数
                                                            starOn : '../img/demo/star-on.png',
                                                            starOff : '../img/demo/star-off.png',
                                                            hints : ['很差','一般','不错','很好','非常满意'],
                                                            click : function(score, evt) {
                                                                ${evaluation} = score;
                                                            }
                                                        });
                                                    });
                                                </script>
                                                <div class="form-group text-right">
                                                    <input type="button"value="提交" class="btn btn-success" onclick="var comment = document.getElementById('comment').value;
                                                            location.href='../PublishComment?commentStr='+comment+'&customerId=1&evaluation=<%=evaluation%>&id=<%=good.getId()%>&fatherTypeId=<%=good.getType().getFatherTypeId()%>';">
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
<script src="../plugins/bxslider/bxslider.min.js"></script>

<script src="../js/global.js"></script>
</body>
</html>