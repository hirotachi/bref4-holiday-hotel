<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 10/16/2022
  Time: 4:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <link rel="stylesheet" type="text/css"
          href="//fonts.googleapis.com/css?family=|Roboto+Sans:400,700|Playfair+Display:400,700">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/app-assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app-assets/css/others/animate.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app-assets/css/others/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app-assets/css/others/aos.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app-assets/css/others/bootstrap-datepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app-assets/css/others/jquery.timepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app-assets/css/others/fancybox.min.css">
    <!-- Theme Style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app-assets/css/others/style.css">
    <title>Home</title>
</head>
<body>
<body>
<header class="site-header js-site-header">
    <div class="container-fluid">
        <div class="row align-items-center">
            <div class="col-6 col-lg-4 site-logo" data-aos="fade"><a href="#">Hotel</a></div>
            <div class="col-6 col-lg-8">


                <div class="site-menu-toggle js-site-menu-toggle" data-aos="fade">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
                <!-- END menu-toggle -->

                <div class="site-navbar js-site-navbar">
                    <nav role="navigation">
                        <div class="container">
                            <div class="row full-height align-items-center">
                                <div class="col-md-6 mx-auto">
                                    <ul class="list-unstyled menu">
                                        <li class="active"><a href="#">Home</a></li>
                                        <li><a href="Login">Login</a></li>
                                        <li><a href="Register">Register</a></li>
                                        <li><a href="manager-controller">Manager Dashboard</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- END head -->

<section class="site-hero overlay"
         style="background-image: url(${pageContext.request.contextPath}/app-assets/images/others/hero_4.jpg)"
         data-stellar-background-ratio="0.5">
    <div class="container">
        <div class="row site-hero-inner justify-content-center align-items-center">
            <div class="col-md-10 text-center" data-aos="fade-up">
                <span class="custom-caption text-uppercase text-white d-block  mb-3">Welcome To 5 <span
                        class="fa fa-star text-primary"></span>   Hotel</span>
                <h1 class="heading">A Best Place To Stay</h1>
            </div>
        </div>
    </div>

    <a class="mouse smoothscroll" href="#next">
        <div class="mouse-icon">
            <span class="mouse-wheel"></span>
        </div>
    </a>
</section>
<!-- END section -->

<section class="section bg-light pb-0">
    <div class="container">

        <div class="row check-availabilty" id="next">
            <div class="block-32" data-aos="fade-up" data-aos-offset="-200">

                <form action="#">
                    <div class="w-100 d-flex flex-row align-items-center">
                        <div class="row w-75">
                            <div class="col-4">
                                <label for="checkin_date" class="font-weight-bold text-black">Check In</label>
                                <input type="text" id="checkin_date" class="form-control" placeholder="DD/MM/YYYY">

                            </div>
                            <div class="col-4">
                                <label for="checkout_date" class="font-weight-bold text-black">Check Out</label>
                                <input type="text" id="checkout_date" class="form-control" placeholder="DD/MM/YYYY">
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3 w-25 align-self-end h-100">
                            <button class="btn btn-primary btn-block text-white h-100">Check Availabilty</button>
                        </div>
                    </div>
                </form>
            </div>


        </div>
    </div>
</section>

<section class="section slider-section bg-light">
    <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7">
                <h2 class="heading" data-aos="fade-up">Photos</h2>
                <p data-aos="fade-up" data-aos-delay="100">Far far away, behind the word mountains, far from the
                    countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove
                    right at the coast of the Semantics, a large language ocean.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="home-slider major-caousel owl-carousel mb-5" data-aos="fade-up" data-aos-delay="200">
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}/app-assets/images/others/slider-1.jpg"
                           data-fancybox="images" data-caption="Caption for this image"><img
                                src="${pageContext.request.contextPath}/app-assets/images/others/slider-1.jpg"
                                alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}/app-assets/images/others/slider-2.jpg"
                           data-fancybox="images" data-caption="Caption for this image"><img
                                src="${pageContext.request.contextPath}/app-assets/images/others/slider-2.jpg"
                                alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}/app-assets/images/others/slider-3.jpg"
                           data-fancybox="images" data-caption="Caption for this image"><img
                                src="${pageContext.request.contextPath}/app-assets/images/others/slider-3.jpg"
                                alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}/app-assets/images/others/slider-4.jpg"
                           data-fancybox="images" data-caption="Caption for this image"><img
                                src="${pageContext.request.contextPath}/app-assets/images/others/slider-4.jpg"
                                alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}/app-assets/images/others/slider-5.jpg"
                           data-fancybox="images" data-caption="Caption for this image"><img
                                src="${pageContext.request.contextPath}/app-assets/images/others/slider-5.jpg"
                                alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}/app-assets/images/others/slider-6.jpg"
                           data-fancybox="images" data-caption="Caption for this image"><img
                                src="${pageContext.request.contextPath}/app-assets/images/others/slider-6.jpg"
                                alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}/app-assets/images/others/slider-7.jpg"
                           data-fancybox="images" data-caption="Caption for this image"><img
                                src="${pageContext.request.contextPath}/app-assets/images/others/slider-7.jpg"
                                alt="Image placeholder" class="img-fluid"></a>
                    </div>
                </div>
                <!-- END slider -->
            </div>

        </div>
    </div>
</section>
<!-- END section -->

<!-- END section -->
<section class="section testimonial-section">
    <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7">
                <h2 class="heading" data-aos="fade-up">People Says</h2>
            </div>
        </div>
        <div class="row">
            <div class="js-carousel-2 owl-carousel mb-5" data-aos="fade-up" data-aos-delay="200">

                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="${pageContext.request.contextPath}/app-assets/images/others/person_1.jpg"
                             alt="Image placeholder" class="rounded-circle mx-auto">
                    </div>
                    <blockquote>

                        <p>&ldquo;A small river named Duden flows by their place and supplies it with the necessary
                            regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your
                            mouth.&rdquo;</p>
                    </blockquote>
                    <p><em>&mdash; Jean Smith</em></p>
                </div>

                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="${pageContext.request.contextPath}/app-assets/images/others/person_2.jpg"
                             alt="Image placeholder" class="rounded-circle mx-auto">
                    </div>
                    <blockquote>
                        <p>&ldquo;Even the all-powerful Pointing has no control about the blind texts it is an almost
                            unorthographic life One day however a small line of blind text by the name of Lorem Ipsum
                            decided to leave for the far World of Grammar.&rdquo;</p>
                    </blockquote>
                    <p><em>&mdash; John Doe</em></p>
                </div>

                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="images/person_3.jpg" alt="Image placeholder" class="rounded-circle mx-auto">
                    </div>
                    <blockquote>

                        <p>&ldquo;When she reached the first hills of the Italic Mountains, she had a last view back on
                            the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline
                            of her own road, the Line Lane.&rdquo;</p>
                    </blockquote>
                    <p><em>&mdash; John Doe</em></p>
                </div>


                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="${pageContext.request.contextPath}/app-assets/images/others/person_1.jpg"
                             alt="Image placeholder" class="rounded-circle mx-auto">
                    </div>
                    <blockquote>

                        <p>&ldquo;A small river named Duden flows by their place and supplies it with the necessary
                            regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your
                            mouth.&rdquo;</p>
                    </blockquote>
                    <p><em>&mdash; Jean Smith</em></p>
                </div>

                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="${pageContext.request.contextPath}/app-assets/images/others/person_2.jpg"
                             alt="Image placeholder" class="rounded-circle mx-auto">
                    </div>
                    <blockquote>
                        <p>&ldquo;Even the all-powerful Pointing has no control about the blind texts it is an almost
                            unorthographic life One day however a small line of blind text by the name of Lorem Ipsum
                            decided to leave for the far World of Grammar.&rdquo;</p>
                    </blockquote>
                    <p><em>&mdash; John Doe</em></p>
                </div>

                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="${pageContext.request.contextPath}/app-assets/images/others/person_3.jpg"
                             alt="Image placeholder" class="rounded-circle mx-auto">
                    </div>
                    <blockquote>

                        <p>&ldquo;When she reached the first hills of the Italic Mountains, she had a last view back on
                            the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline
                            of her own road, the Line Lane.&rdquo;</p>
                    </blockquote>
                    <p><em>&mdash; John Doe</em></p>
                </div>

            </div>
            <!-- END slider -->
        </div>

    </div>
</section>


<section class="section blog-post-entry bg-light">
    <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7">
                <h2 class="heading" data-aos="fade-up">Events</h2>
                <p data-aos="fade-up">Far far away, behind the word mountains, far from the countries Vokalia and
                    Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of
                    the Semantics, a large language ocean.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">

                <div class="media media-custom d-block mb-4 h-100">
                    <a href="#" class="mb-4 d-block"><img
                            src="${pageContext.request.contextPath}/app-assets/images/others/img_1.jpg"
                            alt="Image placeholder" class="img-fluid"></a>
                    <div class="media-body">
                        <span class="meta-post">February 26, 2018</span>
                        <h2 class="mt-0 mb-3"><a href="#">Travel Hacks to Make Your Flight More Comfortable</a></h2>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia,
                            there live the blind texts.</p>
                    </div>
                </div>

            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="200">
                <div class="media media-custom d-block mb-4 h-100">
                    <a href="#" class="mb-4 d-block"><img
                            src="${pageContext.request.contextPath}/app-assets/images/others/img_2.jpg"
                            alt="Image placeholder" class="img-fluid"></a>
                    <div class="media-body">
                        <span class="meta-post">February 26, 2018</span>
                        <h2 class="mt-0 mb-3"><a href="#">5 Job Types That Aallow You To Earn As You Travel The
                            World</a></h2>
                        <p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language
                            ocean.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="300">
                <div class="media media-custom d-block mb-4 h-100">
                    <a href="#" class="mb-4 d-block"><img
                            src="${pageContext.request.contextPath}/app-assets/images/others/img_3.jpg"
                            alt="Image placeholder" class="img-fluid"></a>
                    <div class="media-body">
                        <span class="meta-post">February 26, 2018</span>
                        <h2 class="mt-0 mb-3"><a href="#">30 Great Ideas On Gifts For Travelers</a></h2>
                        <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.
                            t is a paradisematic country, in which roasted parts of sentences.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="section bg-image overlay" style="background-image: url('images/hero_4.jpg');">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-12 col-md-6 text-center mb-4 mb-md-0 text-md-left" data-aos="fade-up">
                <h2 class="text-white font-weight-bold">A Best Place To Stay. Reserve Now!</h2>
            </div>
            <div class="col-12 col-md-6 text-center text-md-right" data-aos="fade-up" data-aos-delay="200">
                <a href="#" class="btn btn-outline-white-primary py-3 text-white px-5">Reserve Now</a>
            </div>
        </div>
    </div>
</section>

<script src="${pageContext.request.contextPath}/app-assets/js/others/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/app-assets/js/others/jquery-migrate-3.0.1.min.js"></script>
<script src="${pageContext.request.contextPath}/app-assets/js/others/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/app-assets/js/others/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/app-assets/js/others/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/app-assets/js/others/jquery.stellar.min.js"></script>
<script src="${pageContext.request.contextPath}/app-assets/js/others/jquery.fancybox.min.js"></script>


<script src="${pageContext.request.contextPath}/app-assets/js/others/aos.js"></script>

<script src="${pageContext.request.contextPath}/app-assets/js/others/bootstrap-datepicker.js"></script>
<script src="${pageContext.request.contextPath}/app-assets/js/others/jquery.timepicker.min.js"></script>


<script src="${pageContext.request.contextPath}/app-assets/js/others/main.js"></script>
</body>
</body>
</html>
