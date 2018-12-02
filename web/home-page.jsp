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
        <div class="slide" style="background-image: url(<s:property value="%{listBanners.get(0).Image1}"/>);">
            <div class="container">
                <div class="absolute from-top" style="top: 13%;">
                    <span class="h1 hidden-xs"><s:property value="%{listBanners.get(0).Name}"/></span>
                </div>
                <div class="absolute text-right from-bottom" style="bottom: 13%; right: 15px;">
                    <span class="h2">
                        <span class="text-thin">Only</span><br>
                        <strong>
                            $
                            <s:text name="{0,number,#,##0.00}"> 
                                <s:param name="value" value="listBanners.get(0).Price * (1 - listBanners.get(0).SaleOff)"/> 
                            </s:text>
                        </strong>
                    </span><br>
                    <s:url action="GetProductDetails" var="banner1">
                        <s:param name="Id">
                            <s:property value="listBanners.get(0).Id"/>
                        </s:param>
                    </s:url>
                    <s:a href="%{#banner1}" 
                         cssClass="btn btn-primary btn-with-icon-right waves-effect waves-light space-top-none">
                        View Offer
                        <i class="material-icons arrow_forward"></i>
                    </s:a>
                </div>
            </div>
        </div><!-- .slide -->
        <div class="slide" style="background-image: url(<s:property value="%{listBanners.get(1).Image1}"/>);">
            <div class="container text-center padding-top-3x">
                <span class="h1 from-bottom"><s:property value="%{listBanners.get(1).Name}"/></span><br>
                <span class="h2 from-bottom">
                    <span class="text-thin">Special price: 
                    </span> <strong>
                        $
                        <s:text name="{0,number,#,##0.00}"> 
                            <s:param name="value" value="listBanners.get(1).Price * (1 - listBanners.get(1).SaleOff)"/> 
                        </s:text>
                    </strong>
                </span><br>

                <s:url action="GetProductDetails" var="banner2">
                    <s:param name="Id">
                        <s:property value="listBanners.get(1).Id"/>
                    </s:param>
                </s:url>
                <s:a href="%{#banner2}" 
                     cssClass="btn btn-primary btn-with-icon-right waves-effect waves-light scale-up">
                    View Offer
                    <i class="material-icons arrow_forward"></i>
                </s:a>

            </div>
        </div><!-- .slide -->
        <div class="slide" style="background-image: url(<s:property value="%{listBanners.get(2).Image1}"/>);">
            <div class="container padding-top-3x">
                <span class="h1 space-top from-left"><s:property value="%{listBanners.get(2).Name}"/></span><br>
                <span class="h2 from-right"><span class="text-thin">
                        Only <span class="hidden-xs">today</span>
                    </span> <strong>
                        $
                        <s:text name="{0,number,#,##0.00}"> 
                            <s:param name="value" value="listBanners.get(2).Price * (1 - listBanners.get(2).SaleOff)"/> 
                        </s:text>
                    </strong>
                </span><br>

                <a href="GetProductDetails?Id=<s:property value="%{listBanners.get(2).Id}"/>" class="btn btn-primary btn-with-icon-right waves-effect waves-light scale-up">
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
        <s:iterator value="%{listCategories}">
            <div class="col-sm-3 col-xs-6">
                <a href="#" class="category-link">
                    <img src="img/categories/cat01.jpg" alt="Category">
                    <s:property value="Name"/>
                </a><!-- .category-link -->
            </div><!-- .col-sm-4 -->
        </s:iterator>
    </div><!-- .row -->

    <div class="row padding-top">

        <!-- Special Offer -->
        <div class="col-lg-3 col-md-4">
            <div class="info-box text-center">
                <h2>Special Offer<br><span class="text-danger">-<s:property value="%{highestOffer.SaleOff * 100}"/>%</span></h2>

                <s:url action="GetProductDetails" var="special">
                    <s:param name="Id">
                        <s:property value="highestOffer.Id"/>
                    </s:param>
                </s:url>
                <s:a href="%{#special}" cssClass="inline">
                    <img src="<s:property value="%{highestOffer.Image1}"/>" alt="Special Offer">
                </s:a>

                <h3 class="lead text-normal space-bottom-half">
                    <s:a href="%{#special}" cssClass="link-title">
                        <s:property value="%{highestOffer.Name}"/>
                    </s:a>
                </h3>
                <span class="lead text-normal text-gray text-crossed">$<s:property value="%{highestOffer.Price}"/></span>
                <span class="h4 text-normal text-danger">
                    $<s:text name="{0,number,#,##0.00}"> 
                        <s:param name="value" value="highestOffer.Price * (1 - highestOffer.SaleOff)"/> 
                    </s:text>
                </span>

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
                        <s:iterator value="%{list8Newest}">
                            <div class="col-lg-3 col-sm-6">
                                <div class="shop-item">
                                    <div class="shop-thumbnail">
                                        <span class="shop-label text-warning">New</span>

                                        <a href="<s:url action="GetProductDetails">
                                               <s:param name="Id">
                                                   <s:property value="Id"/>
                                               </s:param>
                                           </s:url>" class="item-link">
                                        </a>
                                        <img src="<s:property value="Image1"/>" alt="Shop item">
                                        <div class="shop-item-tools">
                                            <a href="#" class="add-to-whishlist" data-id="<s:property value="Id"/>" 
                                               data-toggle="tooltip" data-placement="top" title="Wishlist">
                                                <i class="material-icons favorite_border"></i>
                                            </a>

                                            <a href="<s:url action="AddToCart">
                                                   <s:param name="Id">
                                                       <s:property value="Id"/>
                                                   </s:param>
                                               </s:url>" class="add-to-cart">
                                                <em>Add to Cart</em>
                                                <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                                <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                                                </svg>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="shop-item-details">
                                        <h3 class="shop-item-title"><a href="GetProductDetails?Id=<s:property value="%{Id}"/>"><s:property value="Name"/></a></h3>
                                        <span class="shop-item-price">
                                            $
                                            <s:text name="{0,number,#,##0.00}"> 
                                                <s:param name="value" value="Price * (1 - SaleOff)"/> 
                                            </s:text>
                                        </span>
                                    </div>
                                </div><!-- .shop-item -->
                            </div><!-- .col-lg-3.col-sm-6 -->
                        </s:iterator>
                    </div>
                </div><!-- .tab-pane#newcomers -->

                <!-- #toprated -->
                <div role="tabpanel" class="tab-pane transition fade scale" id="toprated">
                    <div class="row">
                        <s:iterator value="%{list8Rating}">
                            <div class="col-lg-3 col-sm-6">
                                <div class="shop-item">
                                    <div class="shop-thumbnail">
                                        <span class="item-rating text-warning">
                                            <s:iterator begin="0" end="%{RatingScore - 1}">
                                                <i class="material-icons star"></i>
                                            </s:iterator>
                                            <s:if test="%{RatingScore < 5}">
                                                <s:iterator begin="0" end="%{5 - RatingScore - 1}">
                                                    <i class="material-icons star_border"></i>
                                                </s:iterator>
                                            </s:if>
                                        </span>

                                        <a href="<s:url action="GetProductDetails">
                                               <s:param name="Id">
                                                   <s:property value="Id"/>
                                               </s:param>
                                           </s:url>" class="item-link">
                                        </a>
                                        <img src="<s:property value="Image1"/>" alt="Shop item">
                                        <div class="shop-item-tools">
                                            <a href="#" class="add-to-whishlist" data-id="<s:property value="Id"/>" 
                                               data-toggle="tooltip" data-placement="top" title="Wishlist">
                                                <i class="material-icons favorite_border"></i>
                                            </a>

                                            <a href="<s:url action="AddToCart">
                                                   <s:param name="Id">
                                                       <s:property value="Id"/>
                                                   </s:param>
                                               </s:url>" class="add-to-cart">
                                                <em>Add to Cart</em>
                                                <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                                <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                                                </svg>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="shop-item-details">
                                        <h3 class="shop-item-title">
                                            <a href="GetProductDetails?Id=<s:property value="%{Id}"/>">
                                                <s:property value="Name"/>
                                            </a>
                                        </h3>
                                        <span class="shop-item-price">
                                            $
                                            <s:text name="{0,number,#,##0.00}"> 
                                                <s:param name="value" value="Price * (1 - SaleOff)"/> 
                                            </s:text>
                                        </span>
                                    </div>
                                </div><!-- .shop-item -->
                            </div><!-- .col-lg-3.col-sm-6 -->
                        </s:iterator>
                    </div>
                </div><!-- .tab-pane#toprated -->

                <!-- #onsale -->
                <div role="tabpanel" class="tab-pane transition fade scale" id="onsale">
                    <div class="row">
                        <s:iterator value="%{list8Saling}">
                            <div class="col-lg-3 col-sm-6">
                                <div class="shop-item">
                                    <div class="shop-thumbnail">
                                        <span class="shop-label text-danger">Sale</span>

                                        <a href="<s:url action="GetProductDetails">
                                               <s:param name="Id">
                                                   <s:property value="Id"/>
                                               </s:param>
                                           </s:url>" class="item-link">
                                        </a>
                                        <img src="<s:property value="Image1"/>" alt="Shop item">
                                        <div class="shop-item-tools">
                                            <a href="#" class="add-to-whishlist" data-id="<s:property value="Id"/>" 
                                               data-toggle="tooltip" data-placement="top" title="Wishlist">
                                                <i class="material-icons favorite_border"></i>
                                            </a>

                                            <a href="<s:url action="AddToCart">
                                                   <s:param name="Id">
                                                       <s:property value="Id"/>
                                                   </s:param>
                                               </s:url>" class="add-to-cart">
                                                <em>Add to Cart</em>
                                                <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                                <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                                                </svg>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="shop-item-details">
                                        <h3 class="shop-item-title">
                                            <a href="GetProductDetails?Id=<s:property value="%{Id}"/>">
                                                <s:property value="Name"/>
                                            </a>
                                        </h3>
                                        <span class="shop-item-price">
                                            <span class="old-price">$<s:property value="Price"/></span>
                                            $<s:text name="{0,number,#,##0.00}"> 
                                                <s:param name="value" value="Price * (1 - SaleOff)"/> 
                                            </s:text>
                                        </span>
                                    </div>
                                </div><!-- .shop-item -->
                            </div><!-- .col-lg-3.col-sm-6 -->
                        </s:iterator>
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
<input type="hidden" id="popup-modal-input" class="btn btn-primary btn-block" data-toggle="modal" data-target=".bs-example-modal-lg"/>


<s:include value="footer.jsp"/>
