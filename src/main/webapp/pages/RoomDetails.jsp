<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 10/22/2022
  Time: 4:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8"/>
  <meta name="description" content="Your vacation, tours and travel theme needs are all met at emprise."/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Rooms Details</title>
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
        <li class="navigation-item">
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
<!-- End Header -->
<!-- Main Content -->
<main id="rlr-main" class="rlr-main--fixed-top">
  <!-- Main Content -->
  <div class="container">
    <!-- Media Slider -->
    <aside class="row">
      <!-- Media main image carousel -->
      <div class="col-md-10 rlr-media">
        <div class="splide rlr-media--wrapper rlr-js-media">
          <!-- Arrows -->
          <div class="splide__arrows">
            <button class="rlr-media__arrow splide__arrow splide__arrow--prev">
              <svg width="10" height="16" viewBox="0 0 10 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M1.889 14.942 8.47 8.36 1.889 1.778" stroke="var(--white)" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path>
              </svg>
            </button>
            <button class="rlr-media__arrow splide__arrow splide__arrow--next">
              <svg width="10" height="16" viewBox="0 0 10 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M1.889 14.942 8.47 8.36 1.889 1.778" stroke="var(--white)" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path>
              </svg>
            </button>
          </div>
          <!-- Media main images -->
          <div class="splide__track rlr-media__strack">
            <ul id="image-preview" class="splide__list">
              <li class="splide__slide rlr-media__image-view">
                <img class="lazyload" src="https://www.seminolehardrocktampa.com/-/media/project/shrss/sga/casinos/hard-rock/tampa/hotel/cards/east-queen_680x590.jpg" alt="media image" />
              </li>
              <li class="splide__slide rlr-media__image-view">
                <img class="lazyload" src="https://www.seminolehardrocktampa.com/-/media/project/shrss/sga/casinos/hard-rock/tampa/hotel/cards/east-queen_680x590.jpg" alt="media image" />
              </li>
              <li class="splide__slide rlr-media__image-view">
                <img class="lazyload" src="https://www.seminolehardrocktampa.com/-/media/project/shrss/sga/casinos/hard-rock/tampa/hotel/cards/east-queen_680x590.jpg" alt="media image" />
              </li>
              <li class="splide__slide rlr-media__image-view">
                <img class="lazyload" src="https://www.seminolehardrocktampa.com/-/media/project/shrss/sga/casinos/hard-rock/tampa/hotel/cards/east-queen_680x590.jpg" alt="media image" />
              </li>
              <li class="splide__slide rlr-media__image-view">
                <img class="lazyload" src="https://www.seminolehardrocktampa.com/-/media/project/shrss/sga/casinos/hard-rock/tampa/hotel/cards/east-queen_680x590.jpg" alt="media image" />
              </li>
            </ul>
          </div>
          <!-- Media pagination counter -->
          <div class="rlr-media__custom-pagination rlr-js-custom-pagination">
            <svg width="18" height="14" viewBox="0 0 18 14" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path
                      d="M1.2 0C.542 0 0 .558 0 1.235v11.53C0 13.442.542 14 1.2 14h15.6c.658 0 1.2-.558 1.2-1.235V1.235C18 .558 17.458 0 16.8 0H1.2zm0 .824h15.6c.228 0 .4.176.4.411v9.844l-3.506-3.95a.4.4 0 0 0-.588 0l-2.862 3.126L6.1 5.488a.4.4 0 0 0-.362-.135.4.4 0 0 0-.232.129L.8 10.687V1.235C.8 1 .972.823 1.2.823zm9.2 2.058c-.879 0-1.6.743-1.6 1.647 0 .905.721 1.647 1.6 1.647.879 0 1.6-.742 1.6-1.647 0-.904-.721-1.647-1.6-1.647zm0 .824c.447 0 .8.363.8.823 0 .46-.353.824-.8.824a.806.806 0 0 1-.8-.824c0-.46.353-.823.8-.823zm-4.606 2.67 5.912 6.8H1.2a.397.397 0 0 1-.4-.411v-.869l4.994-5.52zm7.6 1.64 3.806 4.285v.464a.397.397 0 0 1-.4.411h-4.019l-2-2.303 2.613-2.856z"
                      fill="#212529"
              ></path>
            </svg>
            <span class="rlr-media__page-counter rlr-js-page"> 0 </span>
          </div>
        </div>
      </div>
      <!-- Media Thumbnails -->
      <div class="col-md-2 rlr-media">
        <!-- Media sidebar -->
        <div class="splide rlr-media--wrapper rlr-media--sidebar rlr-js-thumbnail-media">
          <!-- Arrows -->
          <div class="splide__arrows">
            <button class="rlr-media__arrow splide__arrow splide__arrow--prev">
              <svg width="10" height="16" viewBox="0 0 10 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M1.889 14.942 8.47 8.36 1.889 1.778" stroke="var(--white)" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path>
              </svg>
            </button>
            <button class="rlr-media__arrow splide__arrow splide__arrow--next">
              <svg width="10" height="16" viewBox="0 0 10 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M1.889 14.942 8.47 8.36 1.889 1.778" stroke="var(--white)" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path>
              </svg>
            </button>
          </div>
          <!-- Thumbnails -->
          <div class="splide__track rlr-media__strack">
            <ul id="image-preview-thumb" class="splide__list">
              <li class="splide__slide rlr-media__image-view">
                <img class="rlr-media__thumb lazyload" src="https://www.seminolehardrocktampa.com/-/media/project/shrss/sga/casinos/hard-rock/tampa/hotel/cards/east-queen_680x590.jpg" alt="media image" />
              </li>
              <li class="splide__slide rlr-media__image-view">
                <img class="rlr-media__thumb lazyload" src="https://www.seminolehardrocktampa.com/-/media/project/shrss/sga/casinos/hard-rock/tampa/hotel/cards/east-queen_680x590.jpg" alt="media image" />
              </li>
              <li class="splide__slide rlr-media__image-view">
                <img class="rlr-media__thumb lazyload" src="https://www.seminolehardrocktampa.com/-/media/project/shrss/sga/casinos/hard-rock/tampa/hotel/cards/east-queen_680x590.jpg" alt="media image" />
              </li>
              <li class="splide__slide rlr-media__image-view">
                <img class="rlr-media__thumb lazyload" src="https://www.seminolehardrocktampa.com/-/media/project/shrss/sga/casinos/hard-rock/tampa/hotel/cards/east-queen_680x590.jpg" alt="media image" />
              </li>
              <li class="splide__slide rlr-media__image-view">
                <img class="rlr-media__thumb lazyload" src="https://www.seminolehardrocktampa.com/-/media/project/shrss/sga/casinos/hard-rock/tampa/hotel/cards/east-queen_680x590.jpg" alt="media image" />
              </li>
            </ul>
          </div>
        </div>
      </div>
    </aside>
    <!-- Product Detail Sextion -->
    <section class="row rlr-product-detail-section">
      <div class="rlr-product-detail-section__details col-xl-8">
        <!-- Product Detail Header -->
        <div class="rlr-product-detail-header" id="rlr-js-detail-header">
          <div class="rlr-product-detail-header__contents">
            <!-- Breadcrumb -->
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb rlr-breadcrumb__items">
                <li class="breadcrumb-item rlr-breadcrumb__item"><a href="home">Home</a></li>
                <li class="breadcrumb-item rlr-breadcrumb__item"><a href="rooms">Rooms</a></li>
              </ol>
            </nav>
            <h1 class="rlr-section__heading--main rlr-product-detail-header__title">Room Title</h1>
            <div class="rlr-review-stars" itemscope >
              <div class="rlr-review-stars__content">
                <span class="rlr-review-stars__count">132</span>
                <span> Reviews</span>
              </div>
            </div>
          </div>
          <div class="rlr-product-detail-header__actions">
            <button type="button" data-bs-toggle="popover-share" data-content-id="rlr-js-share-popover" id="rlr-js-share-button" class="btn rlr-button rlr-button--circle rlr-popover-button" aria-label="share">
              <i class="rlr-icon-font flaticon-share-1"></i>
            </button>
            <div id="rlr-js-share-popover" class="rlr-popover--hide">
              <div class="rlr-share">
                <h3 class="rlr-share__title">Share with a friend</h3>
                <ul class="rlr-share__items">
                  <li class="rlr-share__list rlr-js--facebook">
                    <a href="#" class="rlr-icon-text rlr-icon-text--anchor rlr-icon-text__block rlr-share__item"> <i class="rlr-icon-font flaticon-facebook"> </i> <span class="rlr-share__title">Facebook </span> </a>
                  </li>
                  <li class="rlr-share__list rlr-js--twitter">
                    <a href="#" class="rlr-icon-text rlr-icon-text--anchor rlr-icon-text__block rlr-share__item"> <i class="rlr-icon-font flaticon-twitter"> </i> <span class="rlr-share__title">Twitter </span> </a>
                  </li>
                  <li class="rlr-share__list rlr-js--reddit">
                    <a href="#" class="rlr-icon-text rlr-icon-text--anchor rlr-icon-text__block rlr-share__item"> <i class="rlr-icon-font flaticon-instagram"> </i> <span class="rlr-share__title">Reddit </span> </a>
                  </li>
                  <li class="rlr-share__list rlr-js--whatsapp">
                    <a href="#" class="rlr-icon-text rlr-icon-text--anchor rlr-icon-text__block rlr-share__item"> <i class="rlr-icon-font flaticon-whatsapp"> </i> <span class="rlr-share__title">Whatsapp </span> </a>
                  </li>
                  <li class="rlr-share__list rlr-js--messenger">
                    <a href="#" class="rlr-icon-text rlr-icon-text--anchor rlr-icon-text__block rlr-share__item"> <i class="rlr-icon-font flaticon-messenger"> </i> <span class="rlr-share__title">Messenger </span> </a>
                  </li>
                  <li class="rlr-share__list rlr-js--email">
                    <a href="#" class="rlr-icon-text rlr-icon-text--anchor rlr-icon-text__block rlr-share__item"> <i class="rlr-icon-font flaticon-email-1"> </i> <span class="rlr-share__title">Email </span> </a>
                  </li>
                </ul>
                <div class="rlr-copylink">
                  <label class="rlr-copylink__title">Share link</label>
                  <div class="rlr-copylink__wrapper"><input type="text" autocomplete="off" class="form-control rlr-copylink__input" value="join.untitledui.com/project" /> <i class="rlr-icon-font flaticon-copy"> </i></div>
                </div>
              </div>
            </div>
            <div class="rlr-product-detail-header__button-wrapper">
              <button type="button" class="btn rlr-button rlr-button--circle rlr-wishlist rlr-wishlist-button rlr-js-action-wishlist" aria-label="Save to Wishlist">
                <i class="rlr-icon-font flaticon-heart-1"> </i>
              </button>
              <span class="rlr-product-detail-header__helptext rlr-js-helptext"></span>
            </div>
          </div>
        </div>
        <!-- Secondary Menu -->
        <nav class="rlr-product-detail-secondary-menu">
          <ul class="rlr-product-detail-secondary-menu__tabitems" id="rlr-js-secondary-menu">
            <li class="rlr-product-detail-secondary-menu__tabitem js-tabitem is-active" id="rlr-product-sec-overview"><span>Overview</span></li>
          </ul>
        </nav>
        <!-- Overview -->
        <div class="rlr-secondary-menu-desc" data-id="rlr-product-sec-overview">
          <div class="rlr-secondary-menu-desc__icon">
          </div>
          <div class="rlr-secondary-menu-desc__details">
            <div class="rlr-overview-detail">
              <div class="rlr-readmore-desc rlr-overview-detail__description">
                <p class="rlr-readmore-desc__content rlr-js-desc">
                  Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nam itaque voluptate cumque soluta, fuga fugiat eos excepturi, sit qui, cum ducimus recusandae. Minima cupiditate perspiciatis deleniti tenetur ducimus, nesciunt iste. Soluta dolorum reiciendis cum
                  earum asperiores nam pariatur tempore sequi excepturi eius et similique illo error, provident accusamus illum harum enim impedit natus dolore architecto. Quam earum harum obcaecati porro? Quod sequi, voluptate cupiditate vero ut assumenda odit fuga expedita
                  tempora iure minus! Omnis veritatis provident fugit esse explicabo ut cupiditate possimus? Dicta eligendi assumenda, harum non ipsa sunt asperiores?
                </p>
                <span class="rlr-readmore-desc__readmore rlr-js-readmore">Show more...</span>
              </div>
              <div class="rlr-overview-detail__icon-groupset">
                <div class="rlr-overview-detail__icon-group">
                  <span class="rlr-overview-detail__label">Duration</span>
                  <div class="rlr-overview-detail__icons">
                    <figure class="rlr-icon-text"><i class="rlr-icon-font flaticon-three-o-clock-clock"> </i> <span class="">2 Days </span></figure>
                  </div>
                </div>
                <div class="rlr-overview-detail__icon-group">
                  <span class="rlr-overview-detail__label">Activity</span>
                  <div class="rlr-overview-detail__icons">
                    <figure class="rlr-icon-text"><i class="rlr-icon-font flaticon-beach"> </i> <span class="">Beach </span></figure>
                  </div>
                </div>
                <div class="rlr-overview-detail__icon-group">
                  <span class="rlr-overview-detail__label">Physical</span>
                  <div class="rlr-overview-detail__icons">
                    <figure class="rlr-icon-text"><i class="rlr-icon-font flaticon-icecream-cone"> </i> <span class="">Luxury </span></figure>
                  </div>
                </div>
                <div class="rlr-overview-detail__icon-group">
                  <span class="rlr-overview-detail__label">Group Size</span>
                  <div class="rlr-overview-detail__icons">
                    <figure class="rlr-icon-text"><i class="rlr-icon-font flaticon-add-user"> </i> <span class="">8 </span></figure>
                  </div>
                </div>
                <div class="rlr-overview-detail__icon-group">
                  <span class="rlr-overview-detail__label">Age</span>
                  <div class="rlr-overview-detail__icons">
                    <figure class="rlr-icon-text"><i class="rlr-icon-font flaticon-carbon-tall-man"> </i> <span class="">7+ </span></figure>
                  </div>
                </div>
                <div class="rlr-overview-detail__icon-group">
                  <span class="rlr-overview-detail__label">Location</span>
                  <div class="rlr-overview-detail__icons">
                    <figure class="rlr-icon-text"><i class="rlr-icon-font flaticon-map-marker"> </i> <span class="">Rome, Italy </span></figure>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Booking Form -->
      <aside class="col-xl-4 col-xxxl-3 d-xl-block offset-xxxl-1 mt-5 mt-lg-0">
        <form class="rlr-booking-card">
          <fieldset class="rlr-fieldrow">
            <legend class="rlr-booking-card__legend--hide">Booking form</legend>
            <article itemscope class="rlr-booking-card__price-details rlr-fieldrow__form-element">
              <span class="rlr-booking-card__total-price">Total price</span>
              <header class="rlr-booking-card__offer">
                <h2 class="rlr-booking-card__price" itemscope >
                  <span class="rlr-booking-card__current-price rlr-booking-card--currency" itemprop="priceCurrency">£</span>
                  <span itemprop="lowPrice" class="rlr-booking-card__current-price rlr-booking-card--low-price">1759</span>
                  <span itemprop="category" class="rlr-booking-card__price-type rlr-booking-card__price-type--result">inc. taxes</span>
                </h2>
              </header>
              <span class="rlr-booking-card__info">*Price based on selections bellow.</span>
            </article>
            <div class="rlr-fieldrow__item rlr-booking-card__form-item">
              <label class="rlr-form-label rlr-form-label--dark rlr-booking-card__label" for="rlr-booking-dateranges-input"> Dates </label>
              <div class="rlr-input-group rlr-input-group__datefield rlr-js-booking-form-daterange" id="rlr-booking-startRange">
                <input type="text" autocomplete="off" id="rlr-booking-dateranges-input" class="form-control form-input" placeholder="Select preferred dates" />
              </div>
            </div>
            <div class="rlr-fieldrow__item rlr-booking-card__form-item">
              <label class="rlr-form-label rlr-form-label--dark rlr-booking-card__label" for="rlr-booking-travellers-input"> Travellers </label>
              <div class="rlr-input-group" data-bs-toggle="popover-booking" data-content-id="rlr-js-booking-travellers" id="rlr-js-booking-travellers-button">
                <input type="button" value="1 Adult" id="rlr-booking-travellers-input" class="form-control form-input rlr-popover-button" />
                <div class="rlr-input-group__iconset--absolute">
                  <span class="rlr-booking-card__counter rlr-js-counter">1</span>
                </div>
              </div>
              <div id="rlr-js-booking-travellers" class="rlr-popover--hide">
                <div id="rlr-js-booking-travellers-bookingform" data-name="booking-form">
                  <div class="rlr-popover__header">
                    <label class="rlr-form-label rlr-form-label--dark"> Travellers </label>
                    <button type="button" class="btn rlr-button rlr-js-booking-close rlr-button--transparent">
                      <i class="rlr-icon-font flaticon-check-mark"> </i>
                    </button>
                  </div>
                  <div class="rlr-popover-wrapper rlr-popover--travellers">
                    <div class="rlr-input-groups">
                      <div class="rlr-input-group rlr-input-group__numberfield rlr-custom-input--numberfield rlr-popover__numberfield">
                        <label class="rlr-form-label rlr-form-label--light"> Adult </label>
                        <div class="rlr-input-group__iconset rlr-js-input-group__iconset">
                          <button type="button" tabindex="0" aria-label="decrease quantity" class="rlr-input-group__button"></button>
                          <input type="number" autocomplete="off" id="rlr-popover-numberfield-adult" class="form-control form-input rlr-booking-card__counter rlr-js-input-counter" placeholder="0" data-name="Adults" />
                          <button type="button" tabindex="0" aria-label="increase quantity" class="rlr-input-group__button"></button>
                        </div>
                      </div>
                      <div class="rlr-input-group rlr-input-group__numberfield rlr-custom-input--numberfield rlr-popover__numberfield">
                        <label class="rlr-form-label rlr-form-label--light"> Children </label>
                        <div class="rlr-input-group__iconset rlr-js-input-group__iconset">
                          <button type="button" tabindex="0" aria-label="decrease quantity" class="rlr-input-group__button"></button>
                          <input type="number" autocomplete="off" id="rlr-popover-numberfield-child" class="form-control form-input rlr-booking-card__counter rlr-js-input-counter" placeholder="0" data-name="Child" />
                          <button type="button" tabindex="0" aria-label="increase quantity" class="rlr-input-group__button"></button>
                        </div>
                      </div>
                      <div class="rlr-input-group rlr-input-group__numberfield rlr-custom-input--numberfield rlr-popover__numberfield">
                        <label class="rlr-form-label rlr-form-label--light"> Infants </label>
                        <div class="rlr-input-group__iconset rlr-js-input-group__iconset">
                          <button type="button" tabindex="0" aria-label="decrease quantity" class="rlr-input-group__button"></button>
                          <input type="number" autocomplete="off" id="rlr-popover-numberfield-infant" class="form-control form-input rlr-booking-card__counter rlr-js-input-counter" placeholder="0" data-name="Infant" />
                          <button type="button" tabindex="0" aria-label="increase quantity" class="rlr-input-group__button"></button>
                        </div>
                      </div>
                      <div class="rlr-input-group rlr-input-group__numberfield rlr-custom-input--numberfield rlr-popover__numberfield">
                        <label class="rlr-form-label rlr-form-label--light"> Seniors </label>
                        <div class="rlr-input-group__iconset rlr-js-input-group__iconset">
                          <button type="button" tabindex="0" aria-label="decrease quantity" class="rlr-input-group__button"></button>
                          <input type="number" autocomplete="off" id="rlr-popover-numberfield-senior" class="form-control form-input rlr-booking-card__counter rlr-js-input-counter" placeholder="0" data-name="Senior" />
                          <button type="button" tabindex="0" aria-label="increase quantity" class="rlr-input-group__button"></button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="rlr-fieldrow__item rlr-booking-card__form-item">
              <label class="rlr-form-label rlr-form-label--dark rlr-booking-card__label" for="rlr-booking-selection-input"> Selections </label>
              <div class="rlr-input-group" data-bs-toggle="popover-booking" data-content-id="rlr-js-booking-selection" id="rlr-js-booking-selection-button">
                <input type="text" id="rlr-booking-selection-input" autocomplete="off" class="form-control form-input rlr-popover-button" placeholder="Flight, hotel, car etc." />
              </div>
              <div id="rlr-js-booking-selection" class="rlr-popover--hide">
                <div id="rlr-js-booking-selection-bookingform" data-name="booking-form">
                  <div class="rlr-popover__header">
                    <label class="rlr-form-label rlr-form-label--light"> Selections </label>
                    <button type="button" class="btn rlr-button rlr-js-booking-close rlr-button--transparent">
                      <i class="rlr-icon-font flaticon-check-mark"> </i>
                    </button>
                  </div>
                  <div class="rlr-popover__wrapper">
                    <ul class="rlr-checkboxes">
                      <li class="form-check form-check-block rlr-popover__checkbox-wrapper">
                        <div class="rlr-popover__checkbox">
                          <input class="form-check-input rlr-form-check-input" id="rlr-booking-single-room" type="checkbox" value="Single Room" /> <label class="rlr-form-label rlr-form-label--checkbox" for="rlr-booking-single-room"> Single Room </label>
                        </div>
                        <span class="rlr-popover__price">$110.00</span>
                      </li>
                      <li class="form-check form-check-block rlr-popover__checkbox-wrapper">
                        <div class="rlr-popover__checkbox">
                          <input class="form-check-input rlr-form-check-input" id="rlr-booking-deluxe-room" type="checkbox" value="Deluxe Room" /> <label class="rlr-form-label rlr-form-label--checkbox" for="rlr-booking-deluxe-room"> Deluxe Room </label>
                        </div>
                        <span class="rlr-popover__price">$200.00</span>
                      </li>
                      <li class="form-check form-check-block rlr-popover__checkbox-wrapper">
                        <div class="rlr-popover__checkbox">
                          <input class="form-check-input rlr-form-check-input" id="rlr-airport-pickup" type="checkbox" value="Airport Pickup" /> <label class="rlr-form-label rlr-form-label--checkbox" for="rlr-airport-pickup"> Airport Pickup </label>
                        </div>
                        <span class="rlr-popover__price">$120.00</span>
                      </li>
                      <li class="form-check form-check-block rlr-popover__checkbox-wrapper">
                        <div class="rlr-popover__checkbox"><input class="form-check-input rlr-form-check-input" id="rlr-breakfast" type="checkbox" value="Breakfast" /> <label class="rlr-form-label rlr-form-label--checkbox" for="rlr-breakfast"> Breakfast </label></div>
                        <span class="rlr-popover__price">$140.00</span>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </fieldset>
          <fieldset class="rlr-booking-card__results rlr-booking-card__results--found">
            <ul class="rlr-booking-card__result-list">
              <li class="rlr-icon-text">
                <i class="rlr-icon-font flaticon-three-o-clock-clock"> </i>
                <div class="rlr-icon-text__text-wrapper">
                  <span class="">10:00 AM </span>
                  <span class="rlr-icon-text__subtext">Starting Time</span>
                </div>
              </li>
            </ul>
            <div class="rlr-icon-text rlr-booking-card__message">
              <i class="rlr-icon-font flaticon-carbon-result"> </i>
              <div class="rlr-icon-text__text-wrapper">
                <span class="">Instant confirmation </span>
                <span class="rlr-icon-text__subtext">Once you confirm booking, you'll receive details to print.</span>
              </div>
            </div>
          </fieldset>
          <a href="/checkout" class="btn rlr-button rlr-booking-card__button"> Proceed to Booking </a>
        </form>
      </aside>
    </section>
  </div>
</main>

<!-- Scripts -->
<script src="${pageContext.request.contextPath}/app-assets/vendors/others/vendors/navx/js/navigation.min.js" defer></script>
<script src="${pageContext.request.contextPath}/app-assets/js/others/js/main.js" defer></script>
</body>
</html>
