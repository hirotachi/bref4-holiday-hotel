<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 10/21/2022
  Time: 5:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="description" content="Your vacation, tours and travel theme needs are all met at emprise."/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>5 Hotels</title>
    <link rel="shortcut icon" type="image/png"
          href="${pageContext.request.contextPath}/app-assets/images/others/assets/favicon.ico"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app-assets/css/others/styles/plugins.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app-assets/css/others/styles/main.css"/>
</head>
<body class="rlr-body">
<!-- Main Content -->
<main id="rlr-main" class="rlr-main">
    <!-- Hero Banner -->
    <aside class="rlr-hero--half-mast">
        <!-- Header and Navigation -->
        <div class="rlr-banner__media">
            <header>
                <nav id="rlrTransNav" class="navigation rlr-navigation fixed-top navigation-transparent">
                    <!-- Logo -->
                    <div class="navigation-header">
                        <div class="navigation-brand-text">
                            <div class="rlr-logo rlr-logo__navbar-brand rlr-logo--transparent-bg">
                                <a href="#">
                                    <h1>LOGO</h1>
                                </a>
                            </div>
                        </div>
                        <div class="navigation-button-toggler">
                            <span class="rlr-sVGIcon"> <i
                                    class="rlr-icon-font rlr-icon-font--megamenu flaticon-menu"> </i> </span>
                        </div>
                    </div>
                    <div class="navigation-body rlr-navigation__body container-xxxl">
                        <!-- Main menu -->
                        <ul class="navigation-menu rlr-navigation__menu rlr-navigation__menu--main-links">
                            <!-- Dropdown menu 1 -->
                            <li class="navigation-item is-active">
                                <a class="navigation-link" href="#">Home</a>
                            </li>
                            <!-- Mega menu -->
                            <li class="navigation-item has-submenu">
                                <a class="navigation-link" href="rooms">Reservation</a>
                            </li>
                            <!-- Dropdown menu 1 -->
                            <li class="navigation-item">
                                <a class="navigation-link" href="/about">About</a>
                            </li>
                            <!-- Dropdown menu 2 -->
                            <li class="navigation-item">
                                <a class="navigation-link" href="/contact"> Contact </a>
                            </li>
                        </ul>
                        <ul class="navigation-menu rlr-navigation__menu align-to-right">
                            <li class="navigation-item">
                                <a class="navigation-link" href="login">Login</a>
                            </li>
                            <li class="navigation-item">
                                <a class="navigation-link" href="register">Register</a>
                            </li>
                        </ul>
                    </div>
                </nav>
                <div class="outter">
                    <div class="video-container">
                        <video src="https://cdn2.waituk.com/emprise/iStock-1364007793-compressed.mp4" autoplay loop
                               playsinline muted></video>
                        <div class="container rlr-callout">
                            <div class="rlr-callout__text">
                                <header class="rlr-banner-splide__header">
                                    <h2 class="rlr-banner-splide__slogan">Explore the exotic Views. With our Guide</h2>
                                    <span class="rlr-banner-splide__sub-title">With City tours made for Marco Polo in you</span>
                                </header>
                            </div>
                            <div class="row justify-content-md-center">
                                <!-- Search banner -->
                                <a style="width:30vw; max-width:500px; height: 100px; border-radius: 50px; font-size: 30px;"
                                   class="d-flex flex-row align-items-center justify-content-center text-center btn btn-primary">Explore
                                    Our
                                    Services</a>
                            </div>
                            <div class="rlr-banner-splide--fullwidth-v2">
                                <div class="rlr-banner-font">
                                    <a href="#" class="rlr-icon-text rlr-icon-text--anchor rlr-icon-text__block"><span class="">Top Experiences </span>
                                    </a>
                                    <a href="#" class="rlr-icon-text rlr-icon-text--anchor rlr-icon-text__block"><span
                                            class="">Private Tours </span> </a>
                                    <a href="#" class="rlr-icon-text rlr-icon-text--anchor rlr-icon-text__block"> <span
                                            class="">Quality First </span> </a>
                                </div>
                            </div>
                            <!-- Footer copyright -->
                            <div class="container-fluid rlr-footer__legal--v2">
                                <div class="rlr-footer__legal__row rlr-footer__legal__row--bottom">
                                    <div class="rlr-footer__legal__row__col">
                                        <span>2022 © 5 Hotels</span>
                                    </div>
                                    <nav class="rlr-footer__legal__row__col">
                                        <ul class="rlr-footer__legal--inline">
                                            <li><a href="about">About</a></li>
                                            <li><a href="contact">Contact</a></li>
                                            <li><a href="about">Legal</a></li>
                                        </ul>
                                    </nav>
                                    <!-- Footer payment thumbs -->
                                    <div class="rlr-footer__legal__row__col">
                                        <img src="${pageContext.request.contextPath}/app-assets/images/others/assets/images/ele-payments.png"
                                             alt="Payments"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
        </div>
    </aside>
</main>
<script src="${pageContext.request.contextPath}/app-assets/vendors/others/vendors/navx/js/navigation.min.js"></script>
<script src="${pageContext.request.contextPath}/app-assets/js/others/js/main.js"></script>
</body>
</html>
