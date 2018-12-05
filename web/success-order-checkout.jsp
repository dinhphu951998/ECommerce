<%-- 
    Document   : success-order-checkout
    Created on : Dec 3, 2018, 12:16:59 PM
    Author     : PhuNDSE63159
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
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
        <title>Success Order</title>
    </head>
    <body>
        <s:if test="%{exception != null}">
            <!-- Large Modal -->
            <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">There is an error in the process</h4>
                        </div>
                        <div class="modal-body">
                            <p>
                                Details: <s:property value="%{exception}"/>
                            </p>
                        </div>
                        <div class="modal-footer">
                            <a href="<s:url action="GetCart"/>" type="button" class="btn btn-sm btn-primary">
                                Back to cart
                            </a>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
        </s:if>
        <s:else>
            <!-- Large Modal -->
            <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">Note</h4>
                        </div>
                        <div class="modal-body">
                            <p>
                                Order submit successfully!
                                Please waiting for us to confirm your order <s:property value="order.Id"/>
                                Access this <a href="FollowOrder">link</a> to track your order
                            </p>
                        </div>
                        <div class="modal-footer">
                            <a href="<s:url action="BackToShop"/>" type="button" class="btn btn-sm btn-primary">Shopping</a>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
        </s:else>

        <input type="hidden" id="popup-modal-input" class="btn btn-primary btn-block" data-toggle="modal" data-target=".bs-example-modal-lg"/>

        <s:include value="footer.jsp"/>
        <script>
            $(document).ready(function () {
                $("#popup-modal-input").click();
            });
        </script>