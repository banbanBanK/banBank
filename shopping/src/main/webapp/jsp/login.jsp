<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Login Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="../css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="../css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<!-- font-awesome icons -->
<link href="../css/font-awesome.css" rel="stylesheet">
<link href="../css/admin-login.css" rel="stylesheet" type="text/css">
<!-- //font-awesome icons -->
 <!-- js-->
<script src="../js/jquery-1.11.1.min.js"></script>
<script src="../js/modernizr.custom.js"></script>
<!--webfonts-->
<link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//webfonts--> 
<!--animate-->
<link href="../css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="../js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<!-- Metis Menu -->
<script src="../js/metisMenu.min.js"></script>
<script src="../js/custom.js"></script>
<link href="../css/custom.css" rel="stylesheet">
<!--//Metis Menu -->

</head> 
<body class="cbp-spmenu-push">
	<div class="main-content">
		
		<!-- main content start-->
		<div id="page-wrapper-login" style="height: 94%;">
			<div class="main-page login-page " >
				<h3 class="title1">后台登录界面</h3>
				<div class="widget-shadow" id="Admin" >
					<div class="login-top">
						<h3>欢迎 管理员</h3>
					</div>
					<div class="login-body">
						<form method="post" action="javaScript:login()">
							<input type="text" class="user" id="id" name="id" placeholder="输入你的管理员Id" required="">
							<input type="password" name="password" id="pwd" class="lock" placeholder="密码" required="">
							<input type="submit" name="SignIn" value="登录">
							<div class="forgot-grid">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked="">记住我</label>
								<div class="forgot">
									<a href="/findPwd.jsp">忘记密码?</a>
								</div>
								<div class="clearfix"> </div>
							</div>
						</form>
					</div>
					<script>
						function login() {

						    var id = document.getElementById("id").value;
						    var pwd = document.getElementById("pwd").value;
							$.ajax({
                                url:"/adminLogin?id="+id+"&password="+pwd,
                                type:"post",
                                dataType:"json",
                                success(result){
                                    if(result){
                                        alert("登陆成功！");
                                        window.location="http://localhost:8080/InfoView";
                                    }else{
                                        alert("请检查您的账号密码！");
                                    }
                                }
                            })
                        }
					</script>
				</div>
			</div>
		</div>
		<!--footer-->
		<div class="footer" style="height: 6%;">
		   <p>Copyright &copy; 2018.Company name All rights reserved.</p>
		</div>
        <!--//footer-->
	</div>
	<!-- Classie -->
		<script src="../js/classie.js"></script>
	<!--scrolling js-->
	<script src="../js/jquery.nicescroll.js"></script>
	<script src="../js/scripts.js"></script>
	<!--//scrolling js-->
	<!-- Bootstrap Core JavaScript -->
   <script src="../js/bootstrap.js"> </script>
</body>
</html>