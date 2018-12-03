<%-- 
    Document   : profile
    Created on : Dec 1, 2018, 1:52:11 PM
    Author     : DAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<s:include value="header.jsp"/>
<!-- Featured Image -->
<div class="featured-image" style="background-image: url(img/<s:property value="%{dto.Image}"/>);"></div>

<!-- Content -->
<section class="container padding-top-3x">
    <h1 class="mobile-center">
        <s:property value="%{dto.FirstName}"/>, <span class="text-semibold"><s:property value="%{dto.LastName}"/></span>
    </h1>
    <div class="row padding-top">
        <div class="col-sm-9 padding-bottom-2x">
            <!-- Nav Tabs -->
            <ul class="nav-tabs mobile-center" role="tablist">
                <li class="active"><a href="#profile" role="tab" data-toggle="tab">
                        <i class="material-icons person"></i>
                        Profile
                    </a></li>
                <li><a href="#password" role="tab" data-toggle="tab">
                        <i class="material-icons keyboard"></i>
                        Change Password
                    </a></li>
                <li><a href="#orders" role="tab" data-toggle="tab">
                        <i class="material-icons shopping_cart"></i>
                        Orders 
                        <s:if test="%{listOrders != null}">
                            (<s:property value="%{listOrders.size}"/>)
                        </s:if>
                    </a></li>
                <li><a href="#whishlist" role="tab" data-toggle="tab">
                        <i class="material-icons favorite"></i>
                        Whishlist 
                        <s:if test="%{listWishes != null}">
                            (<s:property value="%{listWishes.size}"/>)
                        </s:if>
                    </a></li>
            </ul><!-- .nav-tabs -->

            <!-- Tab Panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane transition fade scale in active" id="profile">
                    <form method="post" action="UpdateProfile">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-element">
                                    <label for="first_name">First Name</label>
                                    <input type="text" id="first_name" class="form-control" required=""
                                           value="<s:property value="%{dto.FirstName}"/>" name="firstName">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-element">
                                    <label for="last_name">Last Name</label>
                                    <input type="text" id="last_name" class="form-control" required=""
                                           value="<s:property value="%{dto.LastName}"/>" name="lastName">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-element">
                                    <label for="email">Email Address</label>
                                    <input type="email" id="email" class="form-control" required=""
                                           value="<s:property value="%{dto.Email}"/>" name="email">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-element">
                                    <label for="phone">Phone Number</label>
                                    <input type="text" id="phone" class="form-control" required=""
                                           value="<s:property value="%{dto.Phone}"/>" name="phone">
                                </div>
                            </div>
                        </div>
                        <div class="form-element">
                            <label for="address">Address</label>
                            <input type="text" id="address" class="form-control" required=""
                                   value="<s:property value="%{dto.Address}"/>" name="address">
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <label class="checkbox space-top">
                                    <input type="checkbox" checked> Subscribe me to newsletter
                                </label>
                            </div>
                            <div class="col-sm-6 text-right mobile-center">
                                <button type="submit" class="btn btn-primary waves-effect waves-light">
                                    Update Profile
                                </button>
                            </div>
                        </div>
                    </form>
                </div><!-- .tab-pane#profile -->
                <div role="tabpanel" class="tab-pane transition fade scale" id="password">
                    <form method="post" action="ChangePassword" onsubmit="return checkPassword()">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-element">
                                    <label for="password">New Password</label>
                                    <input type="password" id="new_password" 
                                           class="form-control" required="" name="password">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-element">
                                    <label for="password_confirm">Confirm Password</label>
                                    <input type="password" id="password_confirm" class="form-control" required="">
                                    <p class="text-warning" id="password_err_msg"></p>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 text-right mobile-center">
                                <button type="submit" class="btn btn-primary waves-effect waves-light">Change Password</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div role="tabpanel" class="tab-pane transition fade scale" id="orders">
                    <s:if test="%{listOrders != null}">
                        <div class="table-responsive">
                            <table>
                                <thead>
                                    <tr>
                                        <th>Order #</th>
                                        <th>Date Purchased</th>
                                        <th>Status</th>
                                        <th>Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <s:iterator value="%{listOrders}">
                                        <tr>
                                            <s:url value="OrderDetail" var="Detail">
                                                <s:param name="id" value="ID"/>
                                            </s:url>
                                            <td><s:a href="%{Detail}"><s:property value="ID"/></s:a></td>
                                            <td><s:property value="DatePurchased"/></td>
                                            <td>
                                                <s:if test="Status == 'Delivered'">
                                                    <span class="text-success">Delivered</span>
                                                </s:if>
                                                <s:if test="Status == 'In Progress'">
                                                    <span class="text-warning">In Progress</span>
                                                </s:if>
                                                <s:if test="Status == 'Canceled'">
                                                    <span class="text-danger">Canceled</span>
                                                </s:if>
                                            </td>
                                            <td>$<s:property value="Total"/></td>
                                        </tr>
                                    </s:iterator>
                                </tbody>
                            </table>
                        </div>
                    </s:if>

                </div><!-- .tab-pane#orders -->
                <div role="tabpanel" class="tab-pane transition fade scale" id="whishlist">
                    <div class="row">
                        <s:if test="%{listWishes != null}">
                            <s:if test="%{listWishes.size > 0}">
                                <s:iterator value="listWishes">
                                    <!-- Item -->
                                    <div class="col-md-4 col-sm-6">
                                        <div class="shop-item">
                                            <div class="shop-thumbnail">
                                                <a href="GetProductDetails?Id=<s:property value="Id"/>" 
                                                   class="item-link"></a>
                                                   <img src="img/<s:property value="Image1"/>" alt="Shop item">
                                                <div class="shop-item-tools">
                                                    <a href="#" class="add-to-whishlist" data-toggle="tooltip" title="Remove from wishlist">
                                                        <i class="material-icons close"></i>
                                                    </a>
                                                    <a href="#" class="add-to-cart">
                                                        <em>Add to Cart</em>
                                                        <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                                        <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"></path>
                                                        </svg>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="shop-item-details">
                                                <h3 class="shop-item-title"><a href="GetProductDetails?Id=<s:property value="Id"/>"><s:property value="Name"/></a></h3>
                                                <span class="shop-item-price">
                                                    $<s:property value="Price * (1 - SaleOff)"/>
                                                </span>
                                            </div>
                                        </div><!-- .shop-item -->
                                    </div>
                                </s:iterator>
                            </s:if>
                            <s:if test="%{listWishes.size == 0}">
                                <p class="text-gray">Empty Whishlist</p>
                            </s:if>
                        </s:if>

                    </div>
                </div><!-- .tab-pane#whishlist -->
            </div><!-- .tab-content -->
        </div><!-- .col-sm-8 -->

        <!-- Sidebar -->
        <div class="col-sm-3 padding-bottom-2x">
            <aside class="mobile-center">
                <h3>Your reward points:</h3>
                <h3><span class="text-semibold">1356</span> <span class="h5">points</span></h3>
                <p class="text-sm text-gray">You can spend these points on products from our shop catalog, to reduce shipping cost, etc.</p>
                <a href="shop-boxed-sl.html" class="btn btn-default btn-ghost icon-left btn-block">
                    <i class="material-icons arrow_back"></i>
                    Go to Shop
                </a>
                <a href="#" class="btn btn-primary btn-block waves-effect waves-light space-top-none">Get more points</a>
            </aside>
        </div><!-- .col-sm-4 -->
    </div><!-- .row -->
</section><!-- .container -->
<script>
    function checkPassword() {
        var check = true;
        var password = document.getElementById("new_password").value;
        var confirm = document.getElementById("password_confirm").value;
        var errMsg = document.getElementById("password_err_msg");
        if (password != confirm) {
            errMsg.innerHTML = "Passord confirm does not match new password!";
            check = false;
        } else {
            errMsg.innerHTML = "";
        }
        return check;
    }
</script>
<s:include value="footer.jsp" />
