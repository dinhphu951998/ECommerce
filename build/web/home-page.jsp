<%-- 
    Document   : home-page
    Created on : Nov 27, 2018, 2:03:56 PM
    Author     : PhuNDSE63159
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<s:include value="header.jsp"/>

<section class="hero-slider" data-loop="true" data-autoplay="true" data-interval="7000">
    <div class="inner">
        <div class="slide" style="background-image: url(img/hero-slider/01.jpg);">
            <div class="container">
                <div class="absolute from-top" style="top: 13%;">
                    <span class="h1 hidden-xs">New SPA<br>Cosmetics</span>
                </div>
                <div class="absolute text-right from-bottom" style="bottom: 13%; right: 15px;">
                    <span class="h2"><span class="text-thin">Only</span><br><strong>$127.99</strong></span><br>
                    <a href="#" class="btn btn-primary btn-with-icon-right waves-effect waves-light space-top-none">
                        View Offer
                        <i class="material-icons arrow_forward"></i>
                    </a>
                </div>
            </div>
        </div><!-- .slide -->
        <div class="slide" style="background-image: url(img/hero-slider/02.jpg);">
            <div class="container text-center padding-top-3x">
                <span class="h1 from-bottom">Stylish Chair</span><br>
                <span class="h2 from-bottom"><span class="text-thin">Special offer: </span> <strong>-25%</strong></span><br>
                <a href="#" class="btn btn-primary btn-with-icon-right waves-effect waves-light scale-up">
                    View Offer
                    <i class="material-icons arrow_forward"></i>
                </a>
            </div>
        </div><!-- .slide -->
        <div class="slide" style="background-image: url(img/hero-slider/03.jpg);">
            <div class="container padding-top-3x">
                <span class="h1 space-top from-left">Dior Sunglasses</span><br>
                <span class="h2 from-right"><span class="text-thin">Only <span class="hidden-xs">today</span></span> <strong>-30%</strong></span><br>
                <a href="#" class="btn btn-primary btn-with-icon-right waves-effect waves-light scale-up">
                    View Offer
                    <i class="material-icons arrow_forward"></i>
                </a>
            </div>
        </div><!-- .slide -->
    </div><!-- .inner -->
</section>

<section class="container-fluid padding-top-3x">

    <!-- Featured Categories -->
    <h3 class="text-center padding-top">Categories</h3>
    <div class="row padding-top padding-bottom-3x">
        <div class="col-sm-3 col-xs-6">
            <a href="#" class="category-link">
                <img src="img/categories/cat01.jpg" alt="Category">
                Clocks
            </a><!-- .category-link -->
        </div><!-- .col-sm-4 -->
        <div class="col-sm-3 col-xs-6">
            <a href="#" class="category-link">
                <img src="img/categories/cat02.jpg" alt="Category">
                Furniture
            </a><!-- .category-link -->
        </div><!-- .col-sm-4 -->
        <div class="col-sm-3 col-xs-6">
            <a href="#" class="category-link">
                <img src="img/categories/cat03.jpg" alt="Category">
                Lightning
            </a><!-- .category-link -->
        </div><!-- .col-sm-4 -->
        <div class="col-sm-3 col-xs-6">
            <a href="#" class="category-link">
                <img src="img/categories/cat04.jpg" alt="Category">
                Bags
            </a><!-- .category-link -->
        </div><!-- .col-sm-4 -->
    </div><!-- .row -->

    <div class="row padding-top">

        <!-- Special Offer -->
        <div class="col-lg-3 col-md-4">
            <div class="info-box text-center">
                <h2>Special Offer<br><span class="text-danger">-30%</span></h2>
                <a href="shop-single.html" class="inline">
                    <img src="img/shop/special-offer.jpg" alt="Special Offer">
                </a>
                <h3 class="lead text-normal space-bottom-half"><a href="shop-single.html" class="link-title">FLOS Outdoor Lightning</a></h3>
                <span class="lead text-normal text-gray text-crossed">$800.00</span>
                <span class="h4 text-normal text-danger">$560.00</span>

                <!-- Countdown -->
                <!-- Date Format: month/day/year. "date-time" data attribute is required. -->
                <div class="countdown space-top-half padding-top" data-date-time="07/30/2017 12:00:00">
                    <div class="item">
                        <div class="days">00</div>
                        <span class="days_ref">Days</span>
                    </div>
                    <div class="item">
                        <div class="hours">00</div>
                        <span class="hours_ref">Hours</span>
                    </div>
                    <div class="item">
                        <div class="minutes">00</div>
                        <span class="minutes_ref">Mins</span>
                    </div>
                    <div class="item">
                        <div class="seconds">00</div>
                        <span class="seconds_ref">Secs</span>
                    </div>
                </div><!-- .counter -->
            </div><!-- .info-box -->
            <div class="padding-bottom-2x visible-xs"></div>
        </div><!-- .col-lg-3.col-md-4 -->

        <!-- Products -->
        <div class="col-lg-9 col-md-8">
            <!-- Nav Tabs -->
            <ul class="nav-tabs text-center" role="tablist">
                <li class="active"><a href="#newcomers" role="tab" data-toggle="tab">New Arrivals</a></li>
                <li><a href="#toprated" role="tab" data-toggle="tab">Top Rated</a></li>
                <li><a href="#onsale" role="tab" data-toggle="tab">On Sale</a></li>
            </ul><!-- .nav-tabs -->

            <!-- Tab Panes -->
            <div class="tab-content">

                <!-- #newcomers -->
                <div role="tabpanel" class="tab-pane transition fade scale in active" id="newcomers">
                    <div class="row space-top-half">
                        <div class="col-lg-3 col-sm-6">
                            <div class="shop-item">
                                <div class="shop-thumbnail">
                                    <span class="shop-label text-danger">Sale</span>
                                    <a href="shop-single.html" class="item-link"></a>
                                    <img src="img/shop/th01.jpg" alt="Shop item">
                                    <div class="shop-item-tools">
                                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                                            <i class="material-icons favorite_border"></i>
                                        </a>
                                        <a href="#" class="add-to-cart">
                                            <em>Add to Cart</em>
                                            <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="shop-item-details">
                                    <h3 class="shop-item-title"><a href="shop-single.html">Storage Box</a></h3>
                                    <span class="shop-item-price">
                                        <span class="old-price">$49.00</span>
                                        $38.00
                                    </span>
                                </div>
                            </div><!-- .shop-item -->
                        </div><!-- .col-lg-3.col-sm-6 -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="shop-item">
                                <div class="shop-thumbnail">
                                    <a href="shop-single.html" class="item-link"></a>
                                    <img src="img/shop/th02.jpg" alt="Shop item">
                                    <div class="shop-item-tools">
                                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                                            <i class="material-icons favorite_border"></i>
                                        </a>
                                        <a href="#" class="add-to-cart">
                                            <em>Add to Cart</em>
                                            <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="shop-item-details">
                                    <h3 class="shop-item-title"><a href="shop-single.html">Shoulder Bag</a></h3>
                                    <span class="shop-item-price">
                                        $125.00
                                    </span>
                                </div>
                            </div><!-- .shop-item -->
                        </div><!-- .col-lg-3.col-sm-6 -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="shop-item">
                                <div class="shop-thumbnail">
                                    <a href="shop-single.html" class="item-link"></a>
                                    <img src="img/shop/th03.jpg" alt="Shop item">
                                    <div class="shop-item-tools">
                                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                                            <i class="material-icons favorite_border"></i>
                                        </a>
                                        <a href="#" class="add-to-cart">
                                            <em>Add to Cart</em>
                                            <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="shop-item-details">
                                    <h3 class="shop-item-title"><a href="shop-single.html">Glass Vase</a></h3>
                                    <span class="shop-item-price">
                                        $62.50
                                    </span>
                                </div>
                            </div><!-- .shop-item -->
                        </div><!-- .col-lg-3.col-sm-6 -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="shop-item">
                                <div class="shop-thumbnail">
                                    <a href="shop-single.html" class="item-link"></a>
                                    <img src="img/shop/th04.jpg" alt="Shop item">
                                    <div class="shop-item-tools">
                                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                                            <i class="material-icons favorite_border"></i>
                                        </a>
                                        <a href="#" class="add-to-cart">
                                            <em>Add to Cart</em>
                                            <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="shop-item-details">
                                    <h3 class="shop-item-title"><a href="shop-single.html">Alarm Clock</a></h3>
                                    <span class="shop-item-price">
                                        $178.00
                                    </span>
                                </div>
                            </div><!-- .shop-item -->
                        </div><!-- .col-lg-3.col-sm-6 -->
                    </div><!-- .row -->
                    <div class="row">
                        <div class="col-lg-3 col-sm-6">
                            <div class="shop-item">
                                <div class="shop-thumbnail">
                                    <a href="shop-single.html" class="item-link"></a>
                                    <img src="img/shop/th05.jpg" alt="Shop item">
                                    <div class="shop-item-tools">
                                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                                            <i class="material-icons favorite_border"></i>
                                        </a>
                                        <a href="#" class="add-to-cart">
                                            <em>Add to Cart</em>
                                            <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="shop-item-details">
                                    <h3 class="shop-item-title"><a href="shop-single.html">Wall Clock</a></h3>
                                    <span class="shop-item-price">
                                        $69.00
                                    </span>
                                </div>
                            </div><!-- .shop-item -->
                        </div><!-- .col-lg-3.col-sm-6 -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="shop-item">
                                <div class="shop-thumbnail">
                                    <a href="shop-single.html" class="item-link"></a>
                                    <img src="img/shop/th06.jpg" alt="Shop item">
                                    <div class="shop-item-tools">
                                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                                            <i class="material-icons favorite_border"></i>
                                        </a>
                                        <a href="#" class="add-to-cart">
                                            <em>Add to Cart</em>
                                            <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="shop-item-details">
                                    <h3 class="shop-item-title"><a href="shop-single.html">LED Lighting</a></h3>
                                    <span class="shop-item-price">
                                        $130.00
                                    </span>
                                </div>
                            </div><!-- .shop-item -->
                        </div><!-- .col-lg-3.col-sm-6 -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="shop-item">
                                <div class="shop-thumbnail">
                                    <span class="shop-label text-warning">Popular</span>
                                    <a href="shop-single.html" class="item-link"></a>
                                    <img src="img/shop/th07.jpg" alt="Shop item">
                                    <div class="shop-item-tools">
                                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                                            <i class="material-icons favorite_border"></i>
                                        </a>
                                        <a href="#" class="add-to-cart">
                                            <em>Add to Cart</em>
                                            <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="shop-item-details">
                                    <h3 class="shop-item-title"><a href="shop-single.html">Sunglasses</a></h3>
                                    <span class="shop-item-price">
                                        $99.00
                                    </span>
                                </div>
                            </div><!-- .shop-item -->
                        </div><!-- .col-lg-3.col-sm-6 -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="shop-item">
                                <div class="shop-thumbnail">
                                    <a href="shop-single.html" class="item-link"></a>
                                    <img src="img/shop/th08.jpg" alt="Shop item">
                                    <div class="shop-item-tools">
                                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                                            <i class="material-icons favorite_border"></i>
                                        </a>
                                        <a href="#" class="add-to-cart">
                                            <em>Add to Cart</em>
                                            <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="shop-item-details">
                                    <h3 class="shop-item-title"><a href="shop-single.html">Hook Basket</a></h3>
                                    <span class="shop-item-price">
                                        $112.35
                                    </span>
                                </div>
                            </div><!-- .shop-item -->
                        </div><!-- .col-lg-3.col-sm-6 -->
                    </div><!-- .row -->
                </div><!-- .tab-pane#newcomers -->

                <!-- #toprated -->
                <div role="tabpanel" class="tab-pane transition fade scale" id="toprated">
                    <div class="row">
                        <div class="col-lg-3 col-sm-6">
                            <div class="shop-item">
                                <div class="shop-thumbnail">
                                    <span class="item-rating text-warning">
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star"></i>
                                    </span>
                                    <a href="shop-single.html" class="item-link"></a>
                                    <img src="img/shop/th09.jpg" alt="Shop item">
                                    <div class="shop-item-tools">
                                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                                            <i class="material-icons favorite_border"></i>
                                        </a>
                                        <a href="#" class="add-to-cart">
                                            <em>Add to Cart</em>
                                            <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="shop-item-details">
                                    <h3 class="shop-item-title"><a href="shop-single.html">Leather Case</a></h3>
                                    <span class="shop-item-price">
                                        $118.00
                                    </span>
                                </div>
                            </div><!-- .shop-item -->
                        </div><!-- .col-lg-3.col-sm-6 -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="shop-item">
                                <div class="shop-thumbnail">
                                    <span class="item-rating text-warning">
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star"></i>
                                    </span>
                                    <a href="shop-single.html" class="item-link"></a>
                                    <img src="img/shop/th10.jpg" alt="Shop item">
                                    <div class="shop-item-tools">
                                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                                            <i class="material-icons favorite_border"></i>
                                        </a>
                                        <a href="#" class="add-to-cart">
                                            <em>Add to Cart</em>
                                            <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="shop-item-details">
                                    <h3 class="shop-item-title"><a href="shop-single.html">Concrete Lamp</a></h3>
                                    <span class="shop-item-price">
                                        $85.90
                                    </span>
                                </div>
                            </div><!-- .shop-item -->
                        </div><!-- .col-lg-3.col-sm-6 -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="shop-item">
                                <div class="shop-thumbnail">
                                    <span class="item-rating text-warning">
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star_half"></i>
                                    </span>
                                    <a href="shop-single.html" class="item-link"></a>
                                    <img src="img/shop/th11.jpg" alt="Shop item">
                                    <div class="shop-item-tools">
                                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                                            <i class="material-icons favorite_border"></i>
                                        </a>
                                        <a href="#" class="add-to-cart">
                                            <em>Add to Cart</em>
                                            <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="shop-item-details">
                                    <h3 class="shop-item-title"><a href="shop-single.html">Stylish Chair</a></h3>
                                    <span class="shop-item-price">
                                        $417.00
                                    </span>
                                </div>
                            </div><!-- .shop-item -->
                        </div><!-- .col-lg-3.col-sm-6 -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="shop-item">
                                <div class="shop-thumbnail">
                                    <span class="item-rating text-warning">
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star_border"></i>
                                    </span>
                                    <a href="shop-single.html" class="item-link"></a>
                                    <img src="img/shop/th12.jpg" alt="Shop item">
                                    <div class="shop-item-tools">
                                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                                            <i class="material-icons favorite_border"></i>
                                        </a>
                                        <a href="#" class="add-to-cart">
                                            <em>Add to Cart</em>
                                            <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="shop-item-details">
                                    <h3 class="shop-item-title"><a href="shop-single.html">Desktop Light</a></h3>
                                    <span class="shop-item-price">
                                        $245.00
                                    </span>
                                </div>
                            </div><!-- .shop-item -->
                        </div><!-- .col-lg-3.col-sm-6 -->
                    </div><!-- .row -->
                    <div class="row">
                        <div class="col-lg-3 col-sm-6">
                            <div class="shop-item">
                                <div class="shop-thumbnail">
                                    <span class="item-rating text-warning">
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star_border"></i>
                                    </span>
                                    <a href="shop-single.html" class="item-link"></a>
                                    <img src="img/shop/th13.jpg" alt="Shop item">
                                    <div class="shop-item-tools">
                                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                                            <i class="material-icons favorite_border"></i>
                                        </a>
                                        <a href="#" class="add-to-cart">
                                            <em>Add to Cart</em>
                                            <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="shop-item-details">
                                    <h3 class="shop-item-title"><a href="shop-single.html">Storage Jar</a></h3>
                                    <span class="shop-item-price">
                                        $19.80
                                    </span>
                                </div>
                            </div><!-- .shop-item -->
                        </div><!-- .col-lg-3.col-sm-6 -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="shop-item">
                                <div class="shop-thumbnail">
                                    <span class="item-rating text-warning">
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star_half"></i>
                                        <i class="material-icons star_border"></i>
                                    </span>
                                    <a href="shop-single.html" class="item-link"></a>
                                    <img src="img/shop/th14.jpg" alt="Shop item">
                                    <div class="shop-item-tools">
                                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                                            <i class="material-icons favorite_border"></i>
                                        </a>
                                        <a href="#" class="add-to-cart">
                                            <em>Add to Cart</em>
                                            <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="shop-item-details">
                                    <h3 class="shop-item-title"><a href="shop-single.html">Ceramic Watch</a></h3>
                                    <span class="shop-item-price">
                                        $299.00
                                    </span>
                                </div>
                            </div><!-- .shop-item -->
                        </div><!-- .col-lg-3.col-sm-6 -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="shop-item">
                                <div class="shop-thumbnail">
                                    <span class="item-rating text-warning">
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star_half"></i>
                                        <i class="material-icons star_border"></i>
                                    </span>
                                    <a href="shop-single.html" class="item-link"></a>
                                    <img src="img/shop/th15.jpg" alt="Shop item">
                                    <div class="shop-item-tools">
                                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                                            <i class="material-icons favorite_border"></i>
                                        </a>
                                        <a href="#" class="add-to-cart">
                                            <em>Add to Cart</em>
                                            <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="shop-item-details">
                                    <h3 class="shop-item-title"><a href="shop-single.html">Tissue Holder</a></h3>
                                    <span class="shop-item-price">
                                        $76.40
                                    </span>
                                </div>
                            </div><!-- .shop-item -->
                        </div><!-- .col-lg-3.col-sm-6 -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="shop-item">
                                <div class="shop-thumbnail">
                                    <span class="item-rating text-warning">
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star"></i>
                                        <i class="material-icons star_border"></i>
                                        <i class="material-icons star_border"></i>
                                    </span>
                                    <a href="shop-single.html" class="item-link"></a>
                                    <img src="img/shop/th16.jpg" alt="Shop item">
                                    <div class="shop-item-tools">
                                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                                            <i class="material-icons favorite_border"></i>
                                        </a>
                                        <a href="#" class="add-to-cart">
                                            <em>Add to Cart</em>
                                            <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="shop-item-details">
                                    <h3 class="shop-item-title"><a href="shop-single.html">Pendant Lamp</a></h3>
                                    <span class="shop-item-price">
                                        $27.00
                                    </span>
                                </div>
                            </div><!-- .shop-item -->
                        </div><!-- .col-lg-3.col-sm-6 -->
                    </div><!-- .row -->
                </div><!-- .tab-pane#toprated -->

                <!-- #onsale -->
                <div role="tabpanel" class="tab-pane transition fade scale" id="onsale">
                    <div class="row">
                        <div class="col-lg-3 col-sm-6">
                            <div class="shop-item">
                                <div class="shop-thumbnail">
                                    <span class="shop-label text-danger">Sale</span>
                                    <a href="#" class="item-link"></a>
                                    <img src="img/shop/th05.jpg" alt="Shop item">
                                    <div class="shop-item-tools">
                                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                                            <i class="material-icons favorite_border"></i>
                                        </a>
                                        <a href="#" class="add-to-cart">
                                            <em>Add to Cart</em>
                                            <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="shop-item-details">
                                    <h3 class="shop-item-title"><a href="#">Wall Clock</a></h3>
                                    <span class="shop-item-price">
                                        <span class="old-price">$69.00</span>
                                        $48.00
                                    </span>
                                </div>
                            </div><!-- .shop-item -->
                        </div><!-- .col-lg-3.col-sm-6 -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="shop-item">
                                <div class="shop-thumbnail">
                                    <span class="shop-label text-danger">Sale</span>
                                    <a href="#" class="item-link"></a>
                                    <img src="img/shop/th06.jpg" alt="Shop item">
                                    <div class="shop-item-tools">
                                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                                            <i class="material-icons favorite_border"></i>
                                        </a>
                                        <a href="#" class="add-to-cart">
                                            <em>Add to Cart</em>
                                            <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="shop-item-details">
                                    <h3 class="shop-item-title"><a href="#">LED Lighting</a></h3>
                                    <span class="shop-item-price">
                                        <span class="old-price">$155.00</span>
                                        $130.00
                                    </span>
                                </div>
                            </div><!-- .shop-item -->
                        </div><!-- .col-lg-3.col-sm-6 -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="shop-item">
                                <div class="shop-thumbnail">
                                    <span class="shop-label text-danger">Sale</span>
                                    <a href="#" class="item-link"></a>
                                    <img src="img/shop/th04.jpg" alt="Shop item">
                                    <div class="shop-item-tools">
                                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                                            <i class="material-icons favorite_border"></i>
                                        </a>
                                        <a href="#" class="add-to-cart">
                                            <em>Add to Cart</em>
                                            <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="shop-item-details">
                                    <h3 class="shop-item-title"><a href="#">Alarm Clock</a></h3>
                                    <span class="shop-item-price">
                                        <span class="old-price">$225.00</span>
                                        $178.00
                                    </span>
                                </div>
                            </div><!-- .shop-item -->
                        </div><!-- .col-lg-3.col-sm-6 -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="shop-item">
                                <div class="shop-thumbnail">
                                    <span class="shop-label text-danger">Sale</span>
                                    <a href="#" class="item-link"></a>
                                    <img src="img/shop/th08.jpg" alt="Shop item">
                                    <div class="shop-item-tools">
                                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                                            <i class="material-icons favorite_border"></i>
                                        </a>
                                        <a href="#" class="add-to-cart">
                                            <em>Add to Cart</em>
                                            <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="shop-item-details">
                                    <h3 class="shop-item-title"><a href="#">Hook Basket</a></h3>
                                    <span class="shop-item-price">
                                        <span class="old-price">$180.00</span>
                                        $112.35
                                    </span>
                                </div>
                            </div><!-- .shop-item -->
                        </div><!-- .col-lg-3.col-sm-6 -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="shop-item">
                                <div class="shop-thumbnail">
                                    <span class="shop-label text-danger">Sale</span>
                                    <a href="shop-single.html" class="item-link"></a>
                                    <img src="img/shop/th01.jpg" alt="Shop item">
                                    <div class="shop-item-tools">
                                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                                            <i class="material-icons favorite_border"></i>
                                        </a>
                                        <a href="#" class="add-to-cart">
                                            <em>Add to Cart</em>
                                            <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="shop-item-details">
                                    <h3 class="shop-item-title"><a href="shop-single.html">Storage Box</a></h3>
                                    <span class="shop-item-price">
                                        <span class="old-price">$49.00</span>
                                        $38.00
                                    </span>
                                </div>
                            </div><!-- .shop-item -->
                        </div><!-- .col-lg-3.col-sm-6 -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="shop-item">
                                <div class="shop-thumbnail">
                                    <span class="shop-label text-danger">Sale</span>
                                    <a href="shop-single.html" class="item-link"></a>
                                    <img src="img/shop/th07.jpg" alt="Shop item">
                                    <div class="shop-item-tools">
                                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                                            <i class="material-icons favorite_border"></i>
                                        </a>
                                        <a href="#" class="add-to-cart">
                                            <em>Add to Cart</em>
                                            <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="shop-item-details">
                                    <h3 class="shop-item-title"><a href="shop-single.html">Sunglasses</a></h3>
                                    <span class="shop-item-price">
                                        <span class="old-price">$122.00</span>
                                        $99.00
                                    </span>
                                </div>
                            </div><!-- .shop-item -->
                        </div><!-- .col-lg-3.col-sm-6 -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="shop-item">
                                <div class="shop-thumbnail">
                                    <span class="shop-label text-danger">Sale</span>
                                    <a href="shop-single.html" class="item-link"></a>
                                    <img src="img/shop/th09.jpg" alt="Shop item">
                                    <div class="shop-item-tools">
                                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                                            <i class="material-icons favorite_border"></i>
                                        </a>
                                        <a href="#" class="add-to-cart">
                                            <em>Add to Cart</em>
                                            <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="shop-item-details">
                                    <h3 class="shop-item-title"><a href="shop-single.html">Leather Case</a></h3>
                                    <span class="shop-item-price">
                                        <span class="old-price">$160.00</span>
                                        $118.00
                                    </span>
                                </div>
                            </div><!-- .shop-item -->
                        </div><!-- .col-lg-3.col-sm-6 -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="shop-item">
                                <div class="shop-thumbnail">
                                    <span class="shop-label text-danger">Sale</span>
                                    <a href="shop-single.html" class="item-link"></a>
                                    <img src="img/shop/th02.jpg" alt="Shop item">
                                    <div class="shop-item-tools">
                                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                                            <i class="material-icons favorite_border"></i>
                                        </a>
                                        <a href="#" class="add-to-cart">
                                            <em>Add to Cart</em>
                                            <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="shop-item-details">
                                    <h3 class="shop-item-title"><a href="shop-single.html">Shoulder Bag</a></h3>
                                    <span class="shop-item-price">
                                        <span class="old-price">$199.00</span>
                                        $125.00
                                    </span>
                                </div>
                            </div><!-- .shop-item -->
                        </div><!-- .col-lg-3.col-sm-6 -->
                    </div><!-- .row -->
                </div><!-- .tab-pane#onsale -->
            </div><!-- .tab-content -->
        </div><!-- .col-lg-9.col-md-8 -->
    </div><!-- .row -->
</section><!-- .container-fluid -->

<!-- Brands -->
<section class="container padding-top-2x padding-bottom">
    <hr>
    <h3 class="text-center padding-top-2x">More brands</h3>
    <div class="row padding-top">
        <!-- Brand -->
        <div class="col-sm-4 col-xs-6">
            <a href="#" class="brand">
                <div class="brand-logo opacity-75">
                    <img src="img/brands/01.svg" alt="Brand">
                </div>
                <p class="brand-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi est corrupti sapiente itaque.</p>
            </a>
        </div>
        <!-- Brand -->
        <div class="col-sm-4 col-xs-6">
            <a href="#" class="brand">
                <div class="brand-logo opacity-75">
                    <img src="img/brands/02.svg" alt="Brand">
                </div>
                <p class="brand-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi est corrupti sapiente itaque.</p>
            </a>
        </div>
        <!-- Brand -->
        <div class="col-sm-4 col-xs-6">
            <a href="#" class="brand">
                <div class="brand-logo opacity-75">
                    <img src="img/brands/03.svg" alt="Brand">
                </div>
                <p class="brand-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi est corrupti sapiente itaque.</p>
            </a>
        </div>
        <!-- Brand -->
        <div class="col-sm-4 col-xs-6">
            <a href="#" class="brand">
                <div class="brand-logo opacity-75">
                    <img src="img/brands/04.svg" alt="Brand">
                </div>
                <p class="brand-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi est corrupti sapiente itaque.</p>
            </a>
        </div>
        <!-- Brand -->
        <div class="col-sm-4 col-xs-6">
            <a href="#" class="brand">
                <div class="brand-logo opacity-75">
                    <img src="img/brands/05.svg" alt="Brand">
                </div>
                <p class="brand-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi est corrupti sapiente itaque.</p>
            </a>
        </div>
        <!-- Brand -->
        <div class="col-sm-4 col-xs-6">
            <a href="#" class="brand">
                <div class="brand-logo opacity-75">
                    <img src="img/brands/06.svg" alt="Brand">
                </div>
                <p class="brand-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi est corrupti sapiente itaque.</p>
            </a>
        </div>
    </div><!-- .row -->
</section><!-- .container -->

<!-- Video Popup -->
<div class="fw-section space-top-2x padding-top-3x padding-bottom-3x" style="background-image: url(img/video_bg.jpg);">
    <div class="container padding-top-3x padding-bottom-3x text-center">
        <div class="space-top-3x space-bottom">
            <!-- Add ".light-skin" class to alter appearance. -->
            <a href="https://player.vimeo.com/video/135832597?color=77cde3&amp;title=0&amp;byline=0&amp;portrait=0" class="video-popup-btn">
                <i class="material-icons play_arrow"></i>
            </a>
        </div>
        <p class="space-bottom-2x">M-Store - your reliable partner.</p>
    </div>
</div><!-- .fw-section -->

<!-- Features -->
<section class="container space-top space-bottom padding-top-3x padding-bottom-3x">
    <div class="row">
        <!-- Feature -->
        <div class="col-md-3 col-sm-6">
            <div class="feature text-center">
                <div class="feature-icon">
                    <i class="material-icons location_on"></i>
                </div>
                <h4 class="feature-title">Free World-Wide Shipping</h4>
                <p class="feature-text">Free shipping on all orders over $100</p>
            </div>
        </div>
        <!-- Feature -->
        <div class="col-md-3 col-sm-6">
            <div class="feature text-center">
                <div class="feature-icon">
                    <i class="material-icons autorenew"></i>
                </div>
                <h4 class="feature-title">Money Back Guarantee</h4>
                <p class="feature-text">We return money within 30 days</p>
            </div>
        </div>
        <!-- Feature -->
        <div class="col-md-3 col-sm-6">
            <div class="feature text-center">
                <div class="feature-icon">
                    <i class="material-icons headset_mic"></i>
                </div>
                <h4 class="feature-title">24/7 Online Support</h4>
                <p class="feature-text">Friendly 24/7 customer support</p>
            </div>
        </div>
        <!-- Feature -->
        <div class="col-md-3 col-sm-6">
            <div class="feature text-center">
                <div class="feature-icon">
                    <i class="material-icons credit_card"></i>
                </div>
                <h4 class="feature-title">Secure Online Payments</h4>
                <p class="feature-text">We posess SSL / Secure Certificate</p>
            </div>
        </div>
    </div><!-- .row -->
</section><!-- .container -->


<s:include value="footer.jsp"/>
