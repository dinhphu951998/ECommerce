<%-- 
    Document   : header
    Created on : Nov 26, 2018, 1:20:54 PM
    Author     : PhuNDSE63159
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>M-Store</title>

        <meta name="description" content="M-Store - Modern E-Commerce Template" />
        <meta name="keywords" content="shop, e-commerce, modern, minimalist style, responsive, online store, business, mobile, blog, bootstrap, html5, css3, jquery, js, gallery, slider, touch, creative, clean" />
        <meta name="author" content="Rokaux" />

        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        <link href="css/vendor/material-icons.min.css" rel="stylesheet" media="screen">

        <link href="css/vendor/socicon.min.css" rel="stylesheet" media="screen">

        <link href="css/vendor/bootstrap.min.css" rel="stylesheet" media="screen">

        <link href="css/theme.min.css" rel="stylesheet" media="screen">

        <script src="js/vendor/page-preloading.js"></script>
    </head>

    <body class="page-preloading">

        <div class="page-preloader">
            <div class="preloader">
                <img src="img/preloader.gif" alt="Preloader">
            </div>
        </div><!-- .page-preloader -->
        <s:if test="%{#session.USER == null}">
            <!-- Large Modal -->
            <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <section class="container padding-top-3x padding-bottom-2x">
                        <div class="row padding-top">
                            <div class="col-md-4 padding-bottom">
                                <h3>Login</h3>
                                <h3 style="color: red"></h3>
                                <form id="Login" name="Login" action="/ECommerce/Login" method="POST" class="login-form">
                                    <input type="text" name="Id" value="" id="Login_Id" class="form-control" required="required" placeholder="Username"/>
                                    <input type="password" name="password" id="Login_password" class="form-control" required="required" placeholder="Password"/>
                                    <div class="form-footer">
                                        <div class="rememberme">
                                            <label class="checkbox">
                                                <input type="checkbox" name="remember" value="true" id="Login_remember" style="color:red"/><input type="hidden" id="__checkbox_Login_remember" name="__checkbox_remember" value="true" /> Remember me
                                            </label>
                                        </div>
                                        <div class="form-submit">
                                            <button type="submit" class="btn btn-primary btn-block waves-effect waves-light">Login</button>
                                        </div>
                                    </div>
                                </form>
                                <a href="/ECommerce/registerForm">Register here</a>
                            </div><!-- .col-md-4 -->

                            <div class="col-md-3 padding-top-2x">
                                <a href="#" class="social-signup-btn ssb-facebook">
                                    <i class="socicon-facebook"></i>
                                    <span>Signup with Facebook</span>
                                </a>
                                <a href="#" class="social-signup-btn ssb-google">
                                    <i class="socicon-googleplus"></i>
                                    <span>Signup with Google+</span>
                                </a>
                                <a href="#" class="social-signup-btn ssb-twitter">
                                    <i class="socicon-twitter"></i>
                                    <span>Signup with Twitter</span>
                                </a>
                            </div><!-- .col-md-3 -->
                        </div><!-- .row -->
                    </section><!-- .container -->


                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
        </s:if>

        <div class="page-wrapper">

            <header class="navbar navbar-sticky">

                <!-- Site Logo -->
                <s:a href="Home" cssClass="site-logo visible-desktop">
                    <span>[</span> M
                    <span class="text-gray">/</span>
                    STORE <span>]</span>
                </s:a>

                <s:a href="Home" cssClass="site-logo visible-mobile">
                    <span>[</span> M <span>]</span>
                </s:a>

                <nav class="main-navigation text-center">
                    <ul class="menu">
                        <li class="current-menu-item">
                            <s:a action="Home">Home</s:a>
                            </li>
                            <li class="">
                            <s:a action="shop">Shop</s:a>
                            </li>
                            <li class="menu-item-has-children">
                                <a href="#">Pages</a>
                                <ul class="sub-menu">
                                    <li><a href="About">About</a></li>
                                    <li><a href="contacts.html">Contacts</a></li>
                                    <li><a href="faq.html">FAQ</a></li>          
                                </ul>
                            </li>

                        <s:if test="%{#session.USER == null}">
                            <li class="">
                                <s:a href="/ECommerce/LoginForm">Login</s:a>
                                </li>
                        </s:if>
                        <s:if test="%{#session.USER != null}">
                            <li class="menu-item-has-children">
                                <s:a href="#" ><s:property value="#session.USER.lastName" /></s:a>
                                    <ul class="sub-menu">
                                        <li><a href="/ECommerce/logout">Log out</a></li>         
                                    </ul>
                                </li>

                        </s:if>
                    </ul>
                </nav>

                <div class="toolbar">
                    <div class="inner"> 
                        <s:form action="Profile" method="post" id="profile-form" theme="simple"></s:form>
                            <a href="#" class="mobile-menu-toggle"><i class="material-icons menu"></i></a>
                            <a href="#" id="profile-button"><i class="material-icons person"></i></a>
                            <div class="cart-btn">
                            <s:a action="GetCart">
                                <i>
                                    <span class="material-icons shopping_basket"></span>
                                    <s:if test="#session.CART != null">
                                        <span class="count">
                                            <s:property value="#session.CART.cart.size()"/>
                                        </span>
                                    </s:if>
                                </i>
                            </s:a>
                            <s:if test="#session.CART != null">
                                <!-- Cart Dropdown -->
                                <div class="cart-dropdown">
                                    <s:set var="shoppingCart" value="#session.CART"/>
                                    <s:iterator value="#session.CART.cart">
                                        <div class="cart-item">
                                            <a href="<s:url action="GetProductDetails">
                                                   <s:param name="Id">
                                                       <s:property value="key.Id"/>
                                                   </s:param>
                                               </s:url>" class="item-thumb">
                                                <img src="<s:property value="key.image1"/>" alt="Item">
                                            </a>
                                            <div class="item-details">
                                                <h3 class="item-title">
                                                    <a href="<s:url action="GetProductDetails">
                                                           <s:param name="Id">
                                                               <s:property value="key.Id"/>
                                                           </s:param>
                                                       </s:url>">
                                                        <s:property value="key.name"/>
                                                    </a>
                                                </h3>
                                                <h4 class="item-price">
                                                    <s:property value="value"/> x 
                                                    $<s:text name="{0,number,#,##0.0}"> 
                                                        <s:param name="value" value="key.price * (1- key.saleOff)"/> 
                                                    </s:text>
                                                </h4>
                                            </div>
                                            <a href="<s:url action="RemoveItem">
                                                   <s:param name="Id">
                                                       <s:property value="key.Id"/>
                                                   </s:param>
                                                   <s:param name="image">
                                                       <s:property value="key.image1"/>
                                                   </s:param>
                                               </s:url>" class="close-btn">
                                                <i class="material-icons close"></i>
                                            </a>
                                        </div><!-- .cart-item -->
                                    </s:iterator>
                                    <div class="cart-subtotal">
                                        <div class="column">
                                            <span>Subtotal:</span>
                                        </div>
                                        <div class="column">
                                            <span class="amount">
                                                $<s:property value="#session.CART.total"/>
                                            </span>
                                        </div>
                                    </div>
                                </div><!-- .cart-dropdown -->
                            </s:if>
                        </div>
                    </div>
                </div>
            </header>
