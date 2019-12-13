<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <link rel="shortcut icon" type="image/x-icon" href="<%=basePath%>assets/img/favicon.ico" />
    <title>管理员页面</title>
    <!-- Bootstrap core CSS -->
    <link href="<%=basePath%>assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Font  -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,400i,500,500i,600,700|Raleway:400,400i,500i,600,700"
        rel="stylesheet">
    <!-- flaticon icon -->
    <link rel="stylesheet" href="<%=basePath%>assets/fonts/icon-font.min.css">
    <!-- icofont icon -->
    <link rel="stylesheet" href="<%=basePath%>assets/fonts/icofont.css">
    <!--- meanmenu Css-->
    <link rel="stylesheet" href="<%=basePath%>assets/css/meanmenu.min.css" media="all" />
    <!-- animate CSS -->
    <link rel="stylesheet" href="<%=basePath%>assets/css/animate.css">
    <!--- owl carousel Css-->
    <link rel="stylesheet" href="<%=basePath%>assets/owlcarousel/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=basePath%>assets/owlcarousel/css/owl.theme.default.min.css">
    <!-- venobox -->
    <link rel="stylesheet" href="<%=basePath%>assets/venobox/css/venobox.css" />
    <!-- Style CSS -->
    <link rel="stylesheet" href="<%=basePath%>assets/css/style.css">
    <!-- Responsive  CSS -->
    <link rel="stylesheet" href="<%=basePath%>assets/css/responsive.css">
</head>

<body>

    <!-- START PRELOADER -->
    <div id="page-preloader">
        <div class="preloader-wrench"></div>
    </div>
    <!-- END PRELOADER -->

    <!-- START HEADER SECTION -->
    <header class="main-header header-1">
        <!-- START TOP AREA -->
        <div class="top-area">
            <div class="auto-container">
                <div class="row">

                    <!-- 图标 -->
                    <div class="col-lg-3 col-md-3 col-sm-6 col-7 mx-md-auto mx-sm-auto mx-auto pl-0">
                        <div class="logo">
                            <a href="index.jsp">
                                <img class="img-fluid" src="<%=basePath%>assets/img/logo.png" alt="">
                            </a>
                        </div>
                    </div>
                    <!-- 图标 -->

                    <!-- 登录/登出 -->
                    <div class="col-lg-8 col-md-12 col-sm-12 col-12">
                        <div class="info-menu">
                            <ul>
                                <li><a href="login/logout">Logout</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- 登录/登出 -->

                </div>
            </div>
        </div>
        <!-- END TOP AREA -->

        <!-- START NAVIGATION AREA -->
        <div class="sticky-menu">
            <div class="mainmenu-area">
                <div class="auto-container">
                    <div class="row">
                        <div class="col-lg-9 d-lg-block d-md-none d-sm-none d-none ">
                            <nav class="navbar navbar-expand-lg justify-content-left">
                                <ul id="adminMenu" class="navbar-nav">
                                
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                <!--- END CONTAINER -->
            </div>
            <!-- END NAVIGATION AREA -->

        </div>
    </header>
    <!-- END HEADER SECTION -->

    <br>
    <br>
    <!-- START PAGE BANNER AND BREADCRUMBS -->
    <section class="single-page-title-area" data-background="<%=basePath%>assets/img/bg/heading.png">
        <div class="auto-container">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-12 col-12">
                    <div class="single-page-title">
                        <h2>管理员界面(Admin)</h2>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><span class="lnr lnr-home"></span></a></li>
                        <li class="breadcrumb-item">Pages</li>
                        <li class="breadcrumb-item active">Admin</li>
                    </ol>
                </div>
            </div>
            <!-- end row-->
        </div>
    </section>
    <!-- END PAGE BANNER AND BREADCRUMBS -->

    <!-- START ABOUT SECTION -->
    <section class="section-padding">
    <form id="adminAbout" method="POST">
        <div class="auto-container">
            <div class="row">
                <div
                    class="col-lg-6 col-md-6 col-sm-12 col-12 pr-lg-5 pr-md-5 pr-sm-0 pr-0 mb-lg-0 mb-md-0 mb-sm-5 mb-5 about-us-into">
                    <h3>Welcome to <span>Our Admin Page</span></h3>
                    <p>管理员，欢迎你，首先，你可以在这里注册/添加用户，其次你还能在这里查询用户信息并修改其信息</p>
                    <p>Welcome, administrator. First of all, you can register/add users here. Second, you can also query
                        user information and modify their information here</p>
                    <!-- <a href="#" class="about-us-into-btn">Learn More <i class="icofont icofont-caret-right"></i></a> -->
                </div>
                <!-- end col -->
                <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="about-us-into-features mb-5">
                        <div class="about-us-into-features-icon">
                            <i class="icofont icofont-paralysis-disability"></i>
                        </div>
                        <div class="about-us-into-features-text">
                            <h5>注册/添加用户</h5>
                            <p>注册/添加用户（添加新的用户名，用户密码，用户状态，用户权限）
                                Register/add users (add new username, user password, user status, user permissions)
                            </p>
                            <button id="addbtn" onclick="toaddUser()" type="button" class="btn btn-primary">执行</button>
                        </div>
                    </div>
                    <div class="about-us-into-features">
                        <div class="about-us-into-features-icon">
                            <i class="icofont icofont-laboratory"></i>
                        </div>
                        <div class="about-us-into-features-text">
                            <h5>查询用户信息</h5>
                            <p>查询用户信息并修改其信息（用户密码，用户状态，用户权限）
                                Query user information and modify its information (user password, user status, user
                                rights)
                            </p>
                            <button id="selectbtn" onclick="toselectUser()" type="button" class="btn btn-primary">执行</button>
                        </div>
                    </div>
                </div>
                <!-- end col -->
            </div>
        </div>
        <!--- END CONTAINER -->
    </form>
    </section>
    <!-- END ABOUT SECTION -->

    <!-- START FOOTER -->
    <footer>
        <!--Footer top -->
        <div class="copyright">
            <div class="auto-container">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12 col-12 copyright-text">
                        <p> 健康体检平台 | 2019.12</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- END FOOTER -->

	<script type="text/javascript">
		function myfun() {
			$("#adminMenu").html('<li class="dropdown"><button id="addbtn" onclick="toaddUser()" type="button" class="btn btn-primary">注册/添加用户</button></li><li class="dropdown"><button id="selectbtn" onclick="toselectUser()" type="button" class="btn btn-primary">查询用户</button></li><li class="dropdown"><button id="updatebtn" onclick="toupUser()" type="button" class="btn btn-primary">修改用户信息</button></li>');
		}
		/*用window.onload调用myfun()*/
		window.onload = myfun; //不要括号
	</script>
	<script type="text/javascript">
		function toaddUser() {
			$.ajax({
				type : "POST",
				url : 'admin/addUser',
				data : $("#adminAbout").serialize(),
				dataType : "json",
				success : function(data) {
					var toUser = '';
					if (data.toaddSuccess == "to") {
						toUser += '<div class="auto-container">';
						toUser += '<form id="addUser" method="post">';
						toUser += '<div id="addUserError">';
						toUser += '<div class="single-page-title">';
						toUser += '<h3>注册/添加用户</h3>';
						toUser += '</div>';
						toUser += '<br>';
						toUser += '<div class="input-group">';
						toUser += '<span class="input-group-addon"><i class="icon-user"></i></span>';
						toUser += '<input type="text" name="addLoginCode" class="form-control" placeholder="输入用户名">';
						toUser += '<span class="input-group-addon fix-border"><i class="icon-key"></i></span>';
						toUser += '<input type="text" name="addLoginPassword" class="form-control" placeholder="输入密码">';
						toUser += '</div>';
						toUser += '<br>';
						toUser += '<div class="input-group">';
						toUser += '<span class="input-group-addon">选择人员类别</span>';
						toUser += '<select name="userTypeId" class="form-control">';
						toUser += '<option selected></option>';
						toUser += '<option value="0">管理员</option>';
						toUser += '<option value="1">医生</option>';
						toUser += '<option value="2">开单人员</option>';
						toUser += '<option value="3">收费站人员</option>';
						toUser += '</select>';
						toUser += '</div>';
						toUser += '<br>';
						toUser += '<div class="input-group">';
						toUser += '<span class="input-group-addon">选择用户状态</span>';
						toUser += '<select name="userState" class="form-control">';
						toUser += '<option selected></option>';
						toUser += '<option value="0">正常</option>';
						toUser += '<option value="1">锁定</option>';
						toUser += '</select>';
						toUser += '</div>';
						toUser += '<br>';
						toUser += '<div>';
						toUser += '<button id="addUserCheck" type="button" class="btn btn-primary"';
						toUser += 'onclick="addcheck()">注册/添加用户</button>';
						toUser += '</div>';
						toUser += '</div>';
						toUser += '</form>';
						toUser += '</div>';
					}
					$("#adminAbout").html(toUser);
				}
			})
		}
		function toselectUser() {
			$.ajax({
				type : "POST",
				url : 'admin/selectUser',
				data : $("#adminAbout").serialize(),
				dataType : "json",
				success : function(data) {
					var toUser = '';
					if (data.toselectSuccess == "to") {
						toUser += '<div class="auto-container">';
						toUser += '<div>';
						toUser += '<button id="updatebtn" onclick="toupUser()" type="button" class="btn btn-primary">前往修改用户信息</button>';
						toUser += '</div>';
						toUser += '<br>';
						toUser += '<div class="single-page-title">';
						toUser += '<h3>查询用户信息</h3>';
						toUser += '</div>';
						toUser += '<br>';
						toUser += '<div class="input-control search-box search-box-circle has-icon-left has-icon-right" id="searchLoginCode">';
						toUser += '<label for="inputSearchExample1" class="input-control-icon-left search-icon"><i class="icon icon-search">通过用户名查询：</i></label>';
						toUser += '<input name="searchByLoginCode" type="text" class="form-control search-input" placeholder="输入用户名查询用户信息">';
						toUser += '</div>';
						toUser += '<div class="input-control search-box search-box-circle has-icon-left has-icon-right" id="searchUserState">';
						toUser += '<label for="inputSearchExample2" class="input-control-icon-left search-icon"><i class="icon icon-search">通过用户状态查询：</i></label>';
						toUser += '<input name="searchByUserState" type="text" class="form-control search-input" placeholder="输入用户状态查询用户信息">';
						toUser += '</div>';
						toUser += '<div class="input-control search-box search-box-circle has-icon-left has-icon-right" id="searchUserTypeId">';
						toUser += '<label for="inputSearchExample3" class="input-control-icon-left search-icon"><i class="icon icon-search">通过用户的人员类别查询：</i></label>';
						toUser += '<input name="searchByUserTypeId" type="text" class="form-control search-input" placeholder="输入用户的人员类别查询用户信息">';
						toUser += '</div>';
						toUser += '<br>';
						toUser += '<button id="GoToSearchUser" onclick="gotoSearchUser()" type="button" class="btn btn-primary">查询</button>';
						toUser += '</div>';
						toUser += '<br>';
						toUser += '<br>';
						toUser += '<div id="selectUserError">';
						toUser += '<table class="table table-hover">';
						toUser += '<thead>';
						toUser += '<tr>';
						toUser += '<th>用户名</th>';
						toUser += '<th class="flex-col" data-width="100">用户密码</th>';
						toUser += '<th class="flex-col" data-width="200">用户状态</th>';
						toUser += '<th class="flex-col" data-width="300">用户人员类别</th>';
						toUser += '</tr>';
						toUser += '</thead>';
						toUser += '<tbody id="inputUserInfo">';
						toUser += '</tbody>';
						toUser += '</table>';
						toUser += '</div>';
					}
					$("#adminAbout").html(toUser);
				}
			})
		}
	</script>
	<script type="text/javascript">
		function toupUser() {
			$.ajax({
				type : "POST",
				url : 'admin/updateUser',
				data : $("#adminAbout").serialize(),
				dataType : "json",
				success : function(data) {
					var toUser = '';
					if (data.toupdateSuccess == "to") {
						toUser += '<div class="auto-container">';
						toUser += '<div>';
						toUser += '<div class="single-page-title">';
						toUser += '<h3>修改用户信息</h3>';
						toUser += '</div>';
						toUser += '<br>';
						toUser += '<div class="input-control search-box search-box-circle has-icon-left has-icon-right" id="updateLoginCode">';
						toUser += '<label for="inputSearchExample1" class="input-control-icon-left search-icon"><i class="icon icon-search">输入需要修改用户信息的用户名：</i></label>';
						toUser += '<input name="upLoginCode" type="text" class="form-control search-input" placeholder="输入需要修改用户信息的用户名">';
						toUser += '</div>';
						toUser += '<div class="input-control search-box search-box-circle has-icon-left has-icon-right" id="updateLoginCode">';
						toUser += '<label for="inputSearchExample1" class="input-control-icon-left search-icon"><i class="icon icon-search">输入用户密码的修改值：</i></label>';
						toUser += '<input name="upLoginPassword" type="text" class="form-control search-input" placeholder="输入用户密码的修改值">';
						toUser += '</div>';
						toUser += '<div class="input-control search-box search-box-circle has-icon-left has-icon-right" id="updateUserState">';
						toUser += '<label for="inputSearchExample2" class="input-control-icon-left search-icon"><i class="icon icon-search">输入用户状态的修改值：</i></label>';
						toUser += '<input name="upUserState" type="text" class="form-control search-input" placeholder="输入用户状态的修改值">';
						toUser += '</div>';
						toUser += '<div class="input-control search-box search-box-circle has-icon-left has-icon-right" id="updateUserTypeId">';
						toUser += '<label for="inputSearchExample3" class="input-control-icon-left search-icon"><i class="icon icon-search">输入用户状态的修改值：</i></label>';
						toUser += '<input name="upUserTypeId" type="text" class="form-control search-input" placeholder="输入用户人员类别的修改值">';
						toUser += '</div>';
						toUser += '<br>';
						toUser += '<button id="GoToUpdateUser" onclick="gotoUpdateUser()" type="button" class="btn btn-primary">确认修改</button>';
						toUser += '</div>';
						toUser += '</div>';
					}
					$("#adminAbout").html(toUser);
				}
			})
		}
	</script>
	<script type="text/javascript">
		function addcheck() {
			$.ajax({
				type : "POST",
				url : 'admin/doAddUser',
				data : $("#addUser").serialize(),
				dataType : "json",
				success : function(data) {
					if (data.addSuccess == "0") {
						alert("输入内容有误！");
					} else if (data.addSuccess == "1") {
						alerthtml("添加用户成功！");
						window.top.location.href = "admin.jsp";
					}
				}
			})
		}
	</script>
	<script type="text/javascript">
		function gotoSearchUser() {
			$.ajax({
				type : "POST",
				url : 'admin/doSelectUser',
				data : $("#adminAbout").serialize(),
				dataType : "json",
				success : function(data) {
					if (data.selectSuccess == "0") {
						alert("没有输入查询条件，无法查询！");
					} else if (data.selectSuccess == "1") {
						var userinfo = '';
						for (i in data.userinfoMap) {
							userinfo = '<td>' + data.userinfoMap[i].LOGIN_CODE + '</td>' + '<td>' + data.userinfoMap[i].LOGIN_PASSWORD + '</td>' + '<td>' + data.userinfoMap[i].LOGIN_STATE + '</td>' + '<td>' + data.userinfoMap[i].PERSON_TYPE_ID + '</td>';
							$("#inputUserInfo").append('<tr>' + userinfo + '</tr>');
						}
					}
				}
			})
		}
	</script>
	<script type="text/javascript">
		function gotoUpdateUser() {
			$.ajax({
				type : "POST",
				url : 'admin/doUpdateUser',
				data : $("#adminAbout").serialize(),
				dataType : "json",
				success : function(data) {
					if (data.updateSuccess == "0") {
						alert("没有输入完整的修改条件，无法修改！");
					} else if (data.updateSuccess == "1") {
					    alert("修改完成！");
						window.top.location.href = "admin.jsp";
					}
				}
			})
		}
	</script>

	<!-- Latest jQuery -->
    <script src="<%=basePath%>assets/js/jquery-2.2.4.min.js"></script>
    <!-- popper js -->
    <script src="<%=basePath%>assets/bootstrap/js/popper.min.js"></script>
    <!-- Latest compiled and minified Bootstrap -->
    <script src="<%=basePath%>assets/bootstrap/js/bootstrap.min.js"></script>
    <!-- meanmenu min js  -->
    <script src="<%=basePath%>assets/js/jquery.meanmenu.min.js"></script>
    <!-- Sticky JS -->
    <script src="<%=basePath%>assets/js/jquery.sticky.js"></script>
    <!-- gijgo js  -->
    <script src="<%=basePath%>assets/js/gijgo.js"></script>
    <!-- owl-carousel min js  -->
    <script src="<%=basePath%>assets/owlcarousel/js/owl.carousel.min.js"></script>
    <!-- jquery appear js  -->
    <script src="<%=basePath%>assets/js/jquery.appear.js"></script>
    <!-- countTo js -->
    <script src="<%=basePath%>assets/js/jquery.inview.min.js"></script>
    <!-- jquery mixitup js -->
    <script src="<%=basePath%>assets/js/jquery.mixitup.min.js"></script>
    <!-- venobox js -->
    <script src="<%=basePath%>assets/venobox/js/venobox.min.js"></script>
    <!-- scrolltopcontrol js -->
    <script src="<%=basePath%>assets/js/scrolltopcontrol.js"></script>
    <!-- WOW - Reveal Animations When You Scroll -->
    <script src="<%=basePath%>assets/js/wow.min.js"></script>
    <!-- scripts js -->
    <script src="<%=basePath%>assets/js/scripts.js"></script>
</body>
    
    <!-- <script type="text/javascript">
    var row;
    function edit(el){
			row = el;//保存要编辑的是哪行
			var updatePW = document.getElementById("updatePW");
			updatePW.style.display = divInfo.style.display=="none"?"block":"none";
			var upLoginCode = el.childNodes[1].innerHTML;
			var upLoginPassword = el.childNodes[2].innerHTML;
			var upUserState = el.childNodes[3].innerHTML;
			var upUserTypeId = el.childNodes[4].innerHTML;
			document.getElementById("txtlc").value = upLoginCode;
			document.getElementById("txtpw").value = upLoginPassword;
			document.getElementById("txtus").value = upUserState;
			document.getElementById("txtuti").value = upUserTypeId;
			//更改按钮的文字,把按钮调用的方法改为修改的方法
			document.getElementById("GoToSearchUser").innerHTML = "确认修改";
			document.getElementById("GoToSearchUser").setAttribute("onclick","editSave()");
		}
	</script>
	<script type="text/javascript">
	function editSave(){
			var upLoginCode = document.getElementById("txtlc").value;
			var upLoginPassword = document.getElementById("txtpw").value;
			var upUserState = document.getElementById("txtus").value;
			var upUserTypeId = document.getElementById("txtuti").value;
			var data={"upLoginCode":upLoginCode,"upLoginPassword":upLoginPassword,"upUserState":upUserState,"upUserTypeId":upUserTypeId}
			// console.log(row);
			$.ajax({
                type: "POST",
                url: 'admin/doUpdateUser',
                data:data,
                dataType: "json",
                success: function (data) {
                    if(data.updateSuccess=="0"){
                        $("#selectUserError").html("没有输入正确的修改信息，无法修改！");
                        window.top.location.href = "admin.jsp";
                    }else if(data.updateSuccess=="1"){
			            row.childNodes[1].innerHTML = upLoginCode;
			            row.childNodes[2].innerHTML = upLoginPassword;
			            row.childNodes[3].innerHTML = upUserState;
			            row.childNodes[4].innerHTML = upUserTypeId;
			            var updatePW = document.getElementById("updatePW");
			            updatePW.style.display = divInfo.style.display=="none"?"block":"none";
			            document.getElementById("GoToSearchUser").innerHTML = "查询";
			            document.getElementById("GoToSearchUser").setAttribute("onclick","gotoSearchUser()");
                    }
                
                }
			})
		}
	</script> -->

</html>
