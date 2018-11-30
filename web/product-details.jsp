<%-- 
    Document   : product-details
    Created on : Nov 29, 2018, 11:08:42 PM
    Author     : PhuNDSE63159
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<s:include value="header.jsp"/>
<!-- Pager + Product Gallery -->
<section class="fw-section bg-gray padding-top-3x">

    <!-- Page Navigation -->
    <a href="#" class="page-nav page-prev">
        <span class="page-preview">
            <img src="<s:property value="product.image1"/>" alt="Page">
        </span>
        &mdash; Prev
    </a>
    <a href="#" class="page-nav page-next">
        <span class="page-preview">
            <img src="<s:property value="product.image2"/>" alt="Page">
        </span>
        Next &mdash;
    </a>
    <div class="container padding-top">

        <!-- Product Gallery -->
        <div class="product-gallery">
            <!-- Preview -->
            <ul class="product-gallery-preview">
                <li id="preview01"><img src="<s:property value="product.image2"/>" alt="Product"></li>
                <li id="preview02" class="current"><img src="<s:property value="product.image3"/>" alt="Product"></li>
                <li id="preview03"><img src="<s:property value="product.image4"/>" alt="Product"></li>
            </ul><!-- .product-gallery-preview -->
            <!-- Thumblist -->
            <ul class="product-gallery-thumblist">
                <li><a href="#preview01">
                        <img src="<s:property value="product.image2"/>" alt="Product">
                    </a></li>
                <li class="active"><a href="#preview02">
                        <img src="<s:property value="product.image3"/>" alt="Product">
                    </a></li>
                <li><a href="#preview03">
                        <img src="<s:property value="product.image4"/>" alt="Product">
                    </a></li>
            </ul><!-- .product-gallery-thumblist -->
        </div><!-- .product-gallery -->
    </div><!-- .container -->
</section><!-- .fw-section.bg-gray -->

<!-- Product Info -->
<section class="fw-section bg-gray padding-bottom-3x">
    <div class="container">
        <div class="product-info padding-top-2x text-center">
            <h1 class="h2 space-bottom-half"><s:property value="product.name"/></h1>
            <h2>$<s:property value="product.price"/></h2>
            <p class="text-sm text-gray">
                <s:property value="product.shortDescription"/>
            </p>
            <div class="product-meta">
                <div class="product-sku">
                    <!--                    <strong>SKU: </strong>
                                        <span>146950023</span>-->
                </div>
                <div class="product-category">
                    <strong>Category: </strong>
                    <a href="#">
                        <s:property value="category.name"/>
                    </a>
                </div>
                <span class="product-rating text-warning">
                    <i class="material-icons star"></i>
                    <i class="material-icons star"></i>
                    <i class="material-icons star"></i>
                    <i class="material-icons star"></i>
                    <i class="material-icons star_border"></i>
                </span>
            </div><!-- .product-meta -->
            <div class="product-tools shop-item">
                <div class="count-input">
                    <a class="incr-btn" data-action="decrease" href="#">–</a>
                    <input class="quantity" type="text" value="1">
                    <a class="incr-btn" data-action="increase" href="#">+</a>
                </div><!-- .count-input -->
                <div class="form-element">
                    <s:if test="%{colors != null}">
                        <s:select list="colors" 
                                  cssClass="form-control form-control-sm color-select" >
                        </s:select>
                    </s:if>
                </div><!-- .form-element -->
                <a href="#" class="add-to-cart">
                    <em>Add to Cart</em>
                    <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                    <path stroke-dasharray="19.79 19.79" 
                          stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" 
                          stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" 
                          d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"></path>
                    </svg>
                </a><!-- .add-to-cart -->
            </div><!-- .product-tools -->
        </div><!-- .product-info -->
    </div><!-- .container -->
</section><!-- .fw-section.bg-gray -->

<!-- Product Tabs -->
<section class="container padding-top-2x">
    <!-- Nav Tabs -->
    <ul class="nav-tabs text-center" role="tablist">
        <li class="active"><a href="#description" role="tab" data-toggle="tab">Description</a></li>
        <!--<li><a href="#additional" role="tab" data-toggle="tab">Additional Info</a></li>-->
    </ul><!-- .nav-tabs -->
    <!-- Tab panes -->
    <div class="tab-content">
        <div role="tabpanel" class="tab-pane transition fade in active" id="description">
            <div class="row space-top">
                <!--                <div class="col-md-6 space-bottom">
                                    <div class="embed-responsive embed-responsive-16by9">
                                        <iframe src="https://player.vimeo.com/video/105829213?color=77cde3&amp;title=0&amp;byline=0&amp;portrait=0" allowfullscreen></iframe>
                                    </div>
                                </div>
                -->
                <div class="col-md-6">
                    <p>
                        <s:property value="product.description"/>
                    </p>
                </div>
                <div class="col-md-6">
                    <table class="table-no-border">
                        <s:iterator value="attribute" var="entry">
                            <tr>
                                <th>
                                    <s:property value="key"/>
                                </th>
                                <td>
                                    <s:property value="value"/>
                                </td>
                            </tr>
                        </s:iterator>
                    </table>
                </div>

            </div>
        </div><!-- .tab-pane --> 
    </div><!-- .tab-content -->
</section><!-- .container -->

<!-- Related Products -->
<section class="container padding-top padding-bottom">
    <hr>
    <h3 class="padding-top">You May Also Like</h3>
    <div class="row padding-top">
        <s:iterator value="products">
            <div class="col-lg-3 col-sm-6">
                <div class="shop-item">
                    <div class="shop-thumbnail">
                        <s:url action="GetProductDetails" var="detailsLink">
                            <s:param name="Id" value="id"/>
                        </s:url>
                        <s:a href="%{detailsLink}" cssClass="item-link"></s:a>
                            <!--<a href="#" class="item-link"></a>-->
                            <img src="<s:property value="image1"/>" alt="Shop item">
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
                        <h3 class="shop-item-title"><a href="#"><s:property value="name"/></a></h3>
                        <span class="shop-item-price">
                            $<s:property value="price"/>
                        </span>
                    </div>
                </div><!-- .shop-item -->
            </div><!-- .col-lg-3.col-sm-6 -->
        </s:iterator>

    </div><!-- .row -->
</section><!-- .container -->

<s:include value="footer.jsp"/>