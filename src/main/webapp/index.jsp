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
    <title>健康体检平台</title>
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
                                <li><a href="login.jsp">Login</a></li>
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
                        <!-- <div class="col-lg-9 d-lg-block d-md-none d-sm-none d-none ">
                            <nav class="navbar navbar-expand-lg justify-content-left">
                                <ul class="navbar-nav">
                                    <li class="active dropdown"><a href="index-2.html" class="nav-link">Home</a>
                                        <ul class="dropdown-menu">
                                            <li><a href="index.html">Home 1</a></li>
                                            <li><a href="index-2.html">Home 2</a></li>
                                            <li><a href="index-3.html">Home 3</a></li>
                                            <li><a href="index-4.html">Home 4</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a href="about.html" class="nav-link">About</a>
                                        <ul class="dropdown-menu">
                                            <li><a href="about.html">About Cleveland</a></li>
                                            <li><a href="doctors.html">Our Doctors</a></li>
                                            <li><a href="single-doctor.html">Single doctor</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a href="services.html" class="nav-link">Services</a>
                                        <ul class="dropdown-menu">
                                            <li><a href="services.html">Our All Services</a></li>
                                            <li><a href="single-service.html">Accident & Emergency</a></li>
                                            <li><a href="single-service.html">Health checks</a></li>
                                            <li><a href="single-service.html">Home Care</a></li>
                                            <li><a href="single-service.html">Diabetes & Endocrinology</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="gallery.html" class="nav-link">Gallery</a></li>
                                    <li class="dropdown"><a href="#" class="nav-link">Pages</a>
                                        <ul class="dropdown-menu">
                                            <li><a href="appointment.html">Appointment</a></li>
                                            <li><a href="testimonial.html">Testimonial</a></li>
                                            <li><a href="new-patient.html">New Patient</a></li>
                                            <li><a href="faq.html">Faq's</a></li>
                                            <li><a href="reports.html">Lab Reports</a></li>
                                            <li><a href="404.html">404 Page</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a href="blog.html" class="nav-link">Blog</a>
                                        <ul class="dropdown-menu">
                                            <li><a href="blog.html">Blog</a></li>
                                            <li><a href="blog-single.html">Blog Single</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="contact.html" class="nav-link">Contact</a></li>
                                </ul>
                            </nav>
                        </div> -->
                        <div class="col-lg-3 col-md-12 d-lg-block d-md-none d-none">
                            <nav class="navbar navbar-expand-lg justify-content-end">
                                <ul class="navbar-nav">
                                    <li class="active dropdown quick-search"><a href="#" class="nav-link">I want To</a>
                                        <ul class="dropdown-menu">
                                            <li><a href="#"><i class="icofont icofont-doctor-alt"></i> Find a Doctor</a>
                                            </li>
                                            <li><a href="#"><i class="icofont icofont-ui-calendar"></i> Request an
                                                    Appointment</a></li>
                                            <li><a href="#"><i class="icofont icofont-medical-sign"></i> Book a
                                                    Healthcheck</a></li>
                                            <li><a href="#"><i class="icofont icofont-prescription"></i> Access Lab
                                                    Reports </a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                <!--- END CONTAINER -->
            </div>
            <!-- END NAVIGATION AREA -->

            <!-- MOBILE-MENU-AREA START -->
            <!-- <div class="mobile-menu-area d-lg-none d-md-block d-sm-block d-block">
                <div class="col-md-9">
                    <div class="mobile-menu">
                        <nav id="dropdown">
                            <ul class="navbar-nav">
                                <li><a href="index.html">Home</a>
                                    <ul>
                                        <li><a href="index.html">Home 1</a></li>
                                        <li><a href="index-2.html">Home 2</a></li>
                                        <li><a href="index-3.html">Home 3</a></li>
                                        <li><a href="index-4.html">Home 4</a></li>
                                    </ul>
                                </li>
                                <li><a href="about.html">About</a>
                                    <ul>
                                        <li><a href="about.html">About Cleveland</a></li>
                                        <li><a href="doctors.html">Our Doctors</a></li>
                                        <li><a href="single-doctor.html">Single doctor</a></li>
                                    </ul>
                                </li>
                                <li><a href="services.html">Services</a>
                                    <ul>
                                        <li><a href="services.html">Our All Services</a></li>
                                        <li><a href="single-service.html">Accident & Emergency</a></li>
                                        <li><a href="single-service.html">Health checks</a></li>
                                        <li><a href="single-service.html">Home Care</a></li>
                                        <li><a href="single-service.html">Diabetes & Endocrinology</a></li>
                                    </ul>
                                </li> -->
            <!-- <li><a href="gallery.html">Gallery</a></li>
                                <li><a href="#">Pages</a>
                                    <ul>
                                        <li><a href="appointment.html">Appointment</a></li>
                                        <li><a href="testimonial.html">Testimonial</a></li>
                                        <li><a href="new-patient.html">New Patient</a></li>
                                        <li><a href="faq.html">Faq's</a></li>
                                        <li><a href="reports.html">Lab Reports</a></li>
                                        <li><a href="404.html">404 Page</a></li>
                                    </ul>
                                </li>
                                <li><a href="blog.html">Blog</a>
                                    <ul>
                                        <li><a href="blog.html">Blog</a></li>
                                        <li><a href="blog-single.html">Blog Single</a></li>
                                    </ul>
                                </li>
                                <li><a href="contact.html">Contact</a></li>
                                <li><a href="#">I want To</a>
                                    <ul>
                                        <li><a href="#"><i class="icofont icofont-doctor-alt"></i> Find a Doctor</a>
                                        </li>
                                        <li><a href="#"><i class="icofont icofont-ui-calendar"></i> Request an
                                                Appointment</a></li>
                                        <li><a href="#"><i class="icofont icofont-medical-sign"></i> Book a
                                                Healthcheck</a></li>
                                        <li><a href="#"><i class="icofont icofont-prescription"></i> Access Lab Reports
                                            </a></li>
                                    </ul>
                                </li> -->
            <!-- </ul>
                        </nav>
                    </div>
                </div>
            </div> -->
            <!-- MOBILE-MENU-AREA END -->
        </div>
    </header>
    <!-- END HEADER SECTION -->
    <div class="footer-top overlay-2 section-back-image-2" data-background="<%=basePath%>assets/img/bg/counter-bg.jpg">
        <div class="auto-container">
            <h1 style="color: rgb(253, 252, 252)">欢迎来到健康体检平台</h1>
            <h2 style="color: rgb(253, 252, 252)">Welcome to the health examination platform</h2>
            <br>
            <br>
            <br>
            <br>
            <br>
            <p style="color: rgb(253, 252, 252)">请先到登陆页面登录您的账号，然后到对应的页面进行相关的操作</p>
            <p style="color: rgb(253, 252, 252)">Please go to the login page to log in your account, and then go to the
                corresponding page for related operations</p>
        </div>
    </div>

    <!-- START FOOTER -->
    <footer>
        <!--Footer top -->
        <div class="copyright">
            <div class="auto-container">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12 col-12 copyright-text">
                        <p> 健康体检平台 | 2019.12</p>
                    </div>
                    <!-- <div class="col-lg-6 col-md-6 col-sm-12 col-12 footer-menu">
                        <ul>
                            <li><a href="#">Make an Enquiry</a> </li>
                            <li><a href="#">Book an Appointment</a> </li>
                            <li><a href="#">Terms and Conditions</a> </li>
                        </ul>
                    </div> -->
                </div>
            </div>
        </div>
    </footer>
    <!-- END FOOTER -->


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
