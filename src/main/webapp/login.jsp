<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<%-- <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head> --%>
<head>
<base href="<%=basePath%>">
<title>健康体检管理平台登录</title>

<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

.bg-blur {
	float: left;
	width: 100%;
	background-repeat: no-repeat;
	background-position: center;
	background-size: cover;
	-webkit-filter: blur(15px);
	-moz-filter: blur(15px);
	-o-filter: blur(15px);
	-ms-filter: blur(15px);
	filter: blur(15px);
}

body {
	font-family: "微软雅黑";
	font-size: 14px;
	background: url(<%=basePath%>image/1494318631621.jpg) fixed center
		center;
}

.logo_box {
	width: 280px;
	height: 490px;
	padding: 35px;
	color: #EEE;
	position: absolute;
	left: 50%;
	top: 100px;
	margin-left: -175px;
}

.logo_box h3 {
	text-align: center;
	height: 20px;
	font: 20px "microsoft yahei", Helvetica, Tahoma, Arial,
		"Microsoft jhengHei", sans-serif;
	color: #FFFFFF;
	height: 20px;
	line-height: 20px;
	padding: 0 0 35px 0;
}

.forms {
	width: 280px;
	height: 485px;
}

.logon_inof {
	width: 100%;
	min-height: 450px;
	padding-top: 35px;
	position: relative;
}

.input_outer {
	height: 46px;
	padding: 0 5px;
	margin-bottom: 20px;
	border-radius: 50px;
	position: relative;
	border: rgba(255, 255, 255, 0.2) 2px solid !important;
}

.u_user {
	width: 25px;
	height: 25px;
	background: url(<%=basePath%>image/login_ico.png);
	background-position: -125px 0;
	position: absolute;
	margin: 12px 13px;
}

.us_uer {
	width: 25px;
	height: 25px;
	background-image: url(<%=basePath%>image/login_ico.png);
	background-position: -125px -34px;
	position: absolute;
	margin: 12px 13px;
}

.l-login {
	position: absolute;
	z-index: 1;
	left: 50px;
	top: 0;
	height: 46px;
	font: 14px "microsoft yahei", Helvetica, Tahoma, Arial,
		"Microsoft jhengHei";
	line-height: 46px;
}

label {
	color: rgb(255, 255, 255);
	display: block;
}

.text {
	width: 220px;
	height: 46px;
	outline: none;
	display: inline-block;
	font: 14px "microsoft yahei", Helvetica, Tahoma, Arial,
		"Microsoft jhengHei";
	margin-left: 50px;
	border: none;
	background: none;
	line-height: 46px;
}

/*///*/
.mb2 {
	margin-bottom: 20px
}

.mb2 a {
	text-decoration: none;
	outline: none;
}

.submit {
	padding: 15px;
	margin-top: 20px;
	display: block;
}

.act-but {
	height: 20px;
	line-height: 20px;
	text-align: center;
	font-size: 20px;
	border-radius: 50px;
	background: #0096e6;
}

/*////*/
.check {
	width: 280px;
	height: 22px;
}

.clearfix::before {
	content: "";
	display: table;
}

.clearfix::after {
	display: block;
	clear: both;
	content: "";
	visibility: hidden;
	height: 0;
}

.login-rm {
	float: left;
}

.login-fgetpwd {
	float: right;
}

.check {
	width: 18px;
	height: 18px;
	background: #fff;
	border: 1px solid #e5e6e7;
	margin: 0 5px 0 0;
	border-radius: 2px;
}

.check-ok {
	background-position: -128px -70px;
	width: 18px;
	height: 18px;
	display: inline-block;
	border: 1px solid #e5e6e7;
	margin: 0 5px 0 0;
	border-radius: 2px;
	vertical-align: middle
}

.checkbox {
	vertical-align: middle;
	margin: 0 5px 0 0;
}

/*=====*/
/*其他登录口*/
.logins {
	width: 280px;
	height: 27px;
	line-height: 27px;
	float: left;
	padding-bottom: 30px;
}

.qq {
	width: 27px;
	height: 27px;
	float: left;
	display: inline-block;
	text-align: center;
	margin-left: 5px;
	margin-right: 18px;
}

.wx {
	width: 27px;
	height: 27px;
	text-align: center;
	line-height: 27px;
	display: inline-block;
	margin: 5px 18px auto 5px;
}

.wx img {
	width: 16px;
	height: 16px;
	float: left;
	line-height: 27px;
	text-align: center;
}

/*////*/
.sas {
	width: 280px;
	height: 18px;
	float: left;
	color: #FFFFFF;
	text-align: center;
	font-size: 16px;
	line-height: 16px;
	margin-bottom: 50px;
}

.sas a {
	width: 280px;
	height: 18px;
	color: #FFFFFF;
	text-align: center;
	line-height: 18px;
	text-decoration: none;
}
</style>
</head>

<!-- <body>
    <a href="login/abc">test</a>
  </body> -->
<body>
	<script type="text/javascript"
		src="<%=basePath%>js/jquery-3.4.1.min.js"></script>

	<div class="logo_box">
		<h3>健康体检管理平台登录</h3>
		<form id="loginform" method="post">
		<div id="loginError">
			<div class="input_outer">
				<span class="u_user"></span> <input name="loginCode" class="text"
					onFocus=" if(this.value=='输入用户名登录') this.value=''"
					onBlur="if(this.value=='') this.value='输入用户名登录'"
					value="输入用户名登录" style="color: #FFFFFF !important" type="text">
			</div>
			<div class="input_outer">
				<span class="us_uer"></span> <label class="l-login login_password"
					style="color: rgb(255, 255, 255);display: block;">输入密码</label> <input
					name="loginPassword" class="text"
					style="color: #FFFFFF !important; position:absolute; z-index:100;"
					onFocus="$('.login_password').hide()"
					onBlur="if(this.value=='') $('.login_password').show()" value=""
					type="password">
			</div>
			<div class="mb2">
				<button type=button class="act-but submit" id="loginbtn" style="color: #FFFFFF" onclick="logincheck()">登录</button>
			</div>
		</div>
			<!-- <input name="savesid" value="0" id="check-box" class="checkbox" type="checkbox"><span>记住用户名</span> -->
		</form>
		<!-- <a href="#" class="login-fgetpwd" style="color: #FFFFFF">忘记密码？</a> -->


		<!-- <div class="sas">
			<a href="login/login">还没注册账号！</a>
		</div> -->

	</div>

	<script type="text/javascript">
	function logincheck(){
	$.ajax({
				type : "POST",
				url : 'login/login',
				data : $("#loginform").serialize(),
				dataType : "json",
				success : function(data) {
					if (data.success=="0") {
						$("#loginError").html("用户名或密码错误！");
					} else if (data.success=="1") {
						/* $("#loginError").html("登录成功！"); */
						if(data.url==0){
						window.top.location.href = "admin.jsp";						
						}else if(data.url==1){
						window.top.location.href = "doctor.jsp";
						}else if(data.url==2){
						window.top.location.href = "billman.jsp";
						}else if(data.url==3){
						window.top.location.href = "chargeman.jsp";
						}
					}
				}
			})
	}
	</script>

</body>

</html>
