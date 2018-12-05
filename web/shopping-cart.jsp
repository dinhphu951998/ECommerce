<%-- 
    Document   : shopping-cart
    Created on : Dec 1, 2018, 10:53:04 PM
    Author     : PhuNDSE63159
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<s:include value="header.jsp"/>
<!-- Container -->
<section class="container padding-top-3x padding-bottom">

    <h1 class="space-top-half">Shopping Cart</h1>
    <div class="row padding-top">

        <s:if test="%{shoppingCart == null }">
            <h1>Your cart is empty</h1>
        </s:if>
        <s:else>
            <!-- Cart -->
            <div class="col-sm-8 padding-bottom-2x">
                <p class="text-sm">
                    <span class="text-gray">Currently</span> <s:property value="shoppingCart.cart.size()"/> items
                    <span class="text-gray"> in cart</span>
                </p>
                <s:form action="UpdateCart" theme="simple" id="update-form">
                    <div class="shopping-cart">
                        <s:iterator value="shoppingCart.cart">
                            <!-- Item -->
                            <div class="item">
                                <s:url action="GetProductDetails" var="details">
                                    <s:param name="Id">
                                        <s:property value="key.Id"/>
                                    </s:param>
                                </s:url>
                                <s:a href="%{#details}" cssClass="item-thumb">
                                    <img src="<s:property value="key.image1"/>" alt="Item">
                                </s:a>
                                <s:hidden name="hashCode" value="%{key.hashCode()}"/>
                                <div class="item-details">
                                    <h3 class="item-title">
                                        <s:a href="%{#details}">
                                            <s:property value="key.name"/>
                                        </s:a>
                                    </h3>
                                    <s:if test="%{key.attVal1 != null}">
                                        <h6>
                                            <s:property value="key.attVal1"/>
                                        </h6>
                                    </s:if>
                                    <h4 class="item-price">
                                        $<s:text name="{0,number,#,##0.00}"> 
                                            <s:param name="value" value="key.price * (1- key.saleOff)"/> 
                                        </s:text>
                                    </h4>

                                    <div class="count-input">
                                        <a class="incr-btn" data-action="decrease" href="#">–</a>
                                        <input name="quantity" class="quantity" type="text" value="<s:property value="value"/>"/>
                                        <a class="incr-btn" data-action="increase" href="#">+</a>
                                    </div>
                                </div>

                                <a href="<s:url action="RemoveItem">
                                       <s:param name="Id">
                                           <s:property value="key.Id"/>
                                       </s:param>
                                       <s:param name="image">
                                           <s:property value="key.image1"/>
                                       </s:param>
                                   </s:url>" class="item-remove" data-toggle="tooltip" data-placement="top" title="Remove">
                                    <i class="material-icons remove_shopping_cart"></i>
                                </a>
                            </div><!-- .item -->
                        </s:iterator>
                    </div><!-- .shopping-cart -->
                </s:form>

                <s:if test="%{shoppingCart.cart.size() != 0}">

                    <!-- Coupon -->
                    <div class="">
                        <p class="text-gray text-sm">Have discount coupon?</p>
                        <form method="post" class="row">
                            <div class="col-md-8 col-sm-7">
                                <div class="form-element">
                                    <input type="text" class="form-control" placeholder="Enter coupon" required>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-5">
                                <button type="submit" class="btn btn-default btn-ghost btn-block space-top-none space-bottom">
                                    Apply Coupon
                                </button>
                            </div>
                        </form>
                    </div>
                </div><!-- .col-sm-8 -->

                <!-- Sidebar -->
                <div class="col-md-3 col-md-offset-1 col-sm-4 padding-bottom-2x">
                    <aside>
                        <h3 class="toolbar-title">Cart subtotal:</h3>
                        <h4 class="amount">$<s:property value="shoppingCart.total"/></h4>
                        <p class="text-sm text-gray">* Note: This amount does not include costs for international shipping. You will be able to calculate shipping costs on checkout.</p>
                        <a href="#" onclick="submitUpdateForm()" class="btn btn-default btn-block waves-effect waves-light">
                            Update Cart
                        </a>
                        <a href="<s:url action="LoadCheckoutForm"/>" class="btn btn-primary btn-block waves-effect waves-light space-top-none">Checkout</a>
                    </aside>
                </div><!-- .col-md-3.col-sm-4 -->
            </s:if>
        </s:else>
        <script>
            function submitUpdateForm() {
                var form = document.getElementById("update-form");
                form.submit();
            }
        </script>
    </div><!-- .row -->
</section><!-- .container -->
<s:include value="footer.jsp"/>