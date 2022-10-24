
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="description" content="Your vacation, tours and travel theme needs are all met at emprise."/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>5 Hotels - Rooms</title>
    <link rel="shortcut icon" type="image/png"
          href="${pageContext.request.contextPath}/app-assets/images/others/assets/favicon.ico"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app-assets/css/others/styles/plugins.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app-assets/css/others/styles/main.css"/>
</head>
<body class="rlr-body">
<!-- Header -->
<header>
    <nav id="navigation" class="navigation rlr-navigation default-nav fixed-top">
        <!-- Logo -->
        <div class="navigation-header">
            <div class="navigation-brand-text">
                <div class="rlr-logo rlr-logo__navbar-brand rlr-logo--default">
                    <a href="home">
                       Home
                    </a>
                </div>
            </div>
            <div class="navigation-button-toggler">
                <span class="rlr-sVGIcon"> <i class="rlr-icon-font rlr-icon-font--megamenu flaticon-menu"> </i> </span>
            </div>
        </div>
        <div class="navigation-body rlr-navigation__body container">
            <!-- Main menu -->
            <ul class="navigation-menu rlr-navigation__menu rlr-navigation__menu--main-links">
                <!-- Dropdown menu 1 -->
                <li class="navigation-item">
                    <a class="navigation-link" href="home">Home</a>
                </li>
                <li class="navigation-item is-active">
                    <a class="navigation-link" href="rooms">Reservation</a>
                </li>
            </ul>
            <!-- User actions menu -->
            <ul class="navigation-menu rlr-navigation__menu align-to-right">
                <li class="navigation-dropdown-item">
                    <a class="navigation-dropdown-link" href="login">Login</a>
                </li>
                <li class="navigation-dropdown-item">
                    <a class="navigation-dropdown-link" href="register">Register</a>
                </li>
            </ul>
        </div>
    </nav>
</header>
<!-- Main Content -->
<main id="rlr-main" class="rlr-main--fixed-top">
    <div class="rlr-search-results-page container">
        <div class="rlr-search-results-page__breadcrumb-section">
            <!-- Breadcrumb -->
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb rlr-breadcrumb__items">
                    <li class="breadcrumb-item rlr-breadcrumb__item"><a href="home">Home</a></li>
                    <li class="breadcrumb-item rlr-breadcrumb__item"><a href="rooms">Destination</a></li>
                </ol>
            </nav>
            <div class="rlr-icon-text"><i class="rlr-icon-font flaticon-phone-receiver-silhouette"> </i> <span class="rlr-search-results-page__phone">Questions? +212 (6) 318-67404 </span></div>
        </div>
        <div class="row rlr-search-results-page__product-details">
            <div class="rlr-search-results-page__product-list col-xl-12">
                <div class="row rlr-search-results-page__card-wrapper">
                    <div class="col-md-6 col-xl-4 col-xxl-3">
                        <!-- Product card item -->
                        <article class="rlr-product-card rlr-product-card--v3">
                            <!-- Product card image -->
                            <figure class="rlr-product-card__image-wrapper">
                                <span class="rlr-badge rlr-badge-- rlr-badge-- rlr-badge--abs rlr-badge--abs-left"> -30% </span>
                                <img src="https://www.businessinsider.in/photo/68664363/heres-why-hotel-room-rates-in-india-may-double-in-the-next-3-to-4-years.jpg"  alt="product-image" />
                            </figure>
                            <div class="rlr-product-card__detail-wrapper rlr-js-detail-wrapper">
                                <!-- Product card header -->
                                <header class="rlr-product-card__header">
                                    <div>
                                        <a href="page-details" class="rlr-product-card__anchor-title">
                                            <h2 class="rlr-product-card__title" itemprop="name">Room One</h2>
                                        </a>
                                        <div>
                                            <a href="page-details" class="rlr-product-card__anchor-cat">
                                                <span class="rlr-product-card__sub-title">Extra</span>
                                            </a>
                                            <span class="rlr-product-card__sub-title">|</span>
                                            <a href="page-details" class="rlr-product-card__anchor-sub-cat">
                                                <span class="rlr-product-card__sub-title">Stoke on Trent</span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="rlr-product-detail-header__button-wrapper">
                                        <button type="button" class="btn rlr-button rlr-button--circle rlr-wishlist rlr-wishlist-button--light rlr-wishlist-button rlr-js-action-wishlist" aria-label="Save to Wishlist">
                                            <i class="rlr-icon-font flaticon-heart-1"> </i>
                                        </button>
                                        <span class="rlr-product-detail-header__helptext rlr-js-helptext"></span>
                                    </div>
                                </header>
                                <!-- Product card body -->
                                <div class="rlr-product-card__details">
                                    <div class="rlr-product-card__prices" itemprop="offers">
                                        <span class="rlr-product-card__from">from </span>
                                        <span class="rlr-product-card__price"> <mark itemprop="priceCurrency">$</mark><mark itemprop="price">80.00</mark> </span>
                                    </div>
                                    <div class="rlr-product-card__ratings" itemprop="aggregateRating">
                                        <div class="rlr-review-stars" itemprop="ratingValue" >
                                            <i class="rlr-icon-font flaticon-star-1"> </i> <i class="rlr-icon-font flaticon-star-1"> </i> <i class="rlr-icon-font flaticon-star-1"> </i> <i class="rlr-icon-font flaticon-star-1"> </i> <i class="rlr-icon-font flaticon-star"> </i>
                                        </div>1
                                        <span class="rlr-product-card__rating-text" itemprop="reviewCount">4.7 (108)</span>
                                    </div>
                                </div>
                                <!-- Product card footer -->
                                <div class="rlr-product-card__footer">
                                    <div class="rlr-icon-text rlr-product-card__icon-text"><i class="rlr-icon-font flaticon-three-o-clock-clock"> </i> <span class="">7 Days </span></div>
                                    <ul class="rlr-product-card__icon-text-list">
                                        <li class="rlr-icon-text rlr-product-card__icon-text"><i class="rlr-icon-font flaticon-check"> </i> <span class="rlr-icon-text__title">New on Emprise </span></li>
                                        <li class="rlr-icon-text rlr-product-card__icon-text"><i class="rlr-icon-font flaticon-check"> </i> <span class="rlr-icon-text__title">Free Cancellation</span></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Product card link -->
                            <a href="/product?id=30" class="rlr-product-card__anchor"></a>
                        </article>
                    </div>
                </div>
                <hr class="rlr-search-results-page__divider" />
                <nav class="rlr-pagination" aria-label="Product list navigation">
                    <ul class="pagination rlr-pagination__list">
                        <li class="page-item rlr-pagination__page-item disabled">
                            <a class="page-link rlr-pagination__page-link rlr-pagination__page-link--prev" href="#" aria-label="Previous">
                                <span aria-hidden="true">Previous</span>
                            </a>
                        </li>
                        <li class="page-item rlr-pagination__page-item">
                            <ul class="pagination rlr-pagination__child-list">
                                <li class="page-item rlr-pagination__page-item"><a class="page-link rlr-pagination__page-link rlr-pagination__page-link--counter" href="#">1</a></li>
                                <li class="page-item rlr-pagination__page-item"><a class="page-link rlr-pagination__page-link rlr-pagination__page-link--counter" href="#">2</a></li>
                                <li class="page-item rlr-pagination__page-item"><a class="page-link rlr-pagination__page-link rlr-pagination__page-link--counter" href="#">3</a></li>
                                <li class="page-item rlr-pagination__page-item"><a class="page-link rlr-pagination__page-link rlr-pagination__page-link--counter" href="#">...</a></li>
                                <li class="page-item rlr-pagination__page-item"><a class="page-link rlr-pagination__page-link rlr-pagination__page-link--counter" href="#">8</a></li>
                                <li class="page-item rlr-pagination__page-item"><a class="page-link rlr-pagination__page-link rlr-pagination__page-link--counter" href="#">9</a></li>
                                <li class="page-item rlr-pagination__page-item"><a class="page-link rlr-pagination__page-link rlr-pagination__page-link--counter" href="#">10</a></li>
                            </ul>
                        </li>
                        <li class="page-item rlr-pagination__page-item">
                            <a class="page-link rlr-pagination__page-link rlr-pagination__page-link--next" href="#" aria-label="Next">
                                <span aria-hidden="true">Next</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</main>
<!-- Scripts -->
<script src="${pageContext.request.contextPath}/app-assets/vendors/others/vendors/navx/js/navigation.min.js" defer></script>
<script src="${pageContext.request.contextPath}/app-assets/js/others/js/main.js" defer></script>
</body>
</html>