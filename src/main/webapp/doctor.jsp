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
    <title>医生页面页面</title>
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
                                <ul id="doctorMenu" class="navbar-nav">
                                
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
                        <h2>医生界面(Doctor)</h2>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><span class="lnr lnr-home"></span></a></li>
                        <li class="breadcrumb-item">Pages</li>
                        <li class="breadcrumb-item active">Doctor</li>
                    </ol>
                </div>
            </div>
            <!-- end row-->
        </div>
    </section>
    <!-- END PAGE BANNER AND BREADCRUMBS -->


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
			$("#doctorMenu").html('<li class="dropdown"><button id="" onclick="" type="button" class="btn btn-primary">菜单内容</button></li>');
		}
		/*用window.onload调用myfun()*/
		window.onload = myfun; //不要括号
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

</html>
