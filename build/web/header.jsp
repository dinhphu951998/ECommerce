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

        <div class="page-wrapper">

            <header class="navbar navbar-sticky">

                <!-- Site Logo -->
                <a href="index.html" class="site-logo visible-desktop">
                    <span>[</span> M
                    <span class="text-gray">/</span>
                    STORE <span>]</span>
                </a><!-- site-logo.visible-desktop -->
                <a href="index.html" class="site-logo visible-mobile">
                    <span>[</span> M <span>]</span>
                </a>

                <nav class="main-navigation text-center">
                    <ul class="menu">
                        <li class="current-menu-item">
                            <a href="Home">Home</a>
                        </li>
                        <li class="">
                            <a href="shop-fullwidth-sl.html">Shop</a>
                        </li>
                        <li class="">
                            <a href="/ECommerce/GetProductDetails?Id=1">Detail Test</a>
                        </li>
                        <li class="menu-item-has-children">
                            <a href="#">Pages</a>
                            <ul class="sub-menu">
                                <li><a href="about.html">About</a></li>
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
                        <a href="#" class="mobile-menu-toggle"><i class="material-icons menu"></i></a>
                        <a href="account.html"><i class="material-icons person"></i></a>
                        <div class="cart-btn">
                            <a href="shopping-cart.html">
                                <i>
                                    <span class="material-icons shopping_basket"></span>
                                    <span class="count">2</span>
                                </i>
                            </a>
                        </div>
                    </div>
                </div>
            </header>
