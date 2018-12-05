<%-- 
    Document   : shop
    Created on : Nov 30, 2018, 11:18:06 PM
    Author     : thanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<s:include value="header.jsp"/>
<!-- Shop Catalog -->
<section class="container padding-top-3x padding-bottom-3x">

    <!-- Sidebar Toggle / visible only on mobile -->
    <div class="sidebar-toggle">
        <i class="material-icons filter_list"></i>
    </div>

    <h1 class="space-top-half">Enjoy shopping</h1>
    <div class="row padding-top">

        <!-- Sidebar (Filters) -->
        <div class="col-md-3 col-sm-4">
            <aside class="sidebar">
                <span class="sidebar-close"><i class="material-icons close"></i></span>
                <div class="widgets">

                    <!-- Categories Widget -->
                    <div class="widget widget-categories">
                        <h3 class="widget-title">Categories</h3>
                        <ul>
                            <li 
                                <s:if test="%{categoryId == -1}" >
                                    style="font-weight: bold"
                                </s:if>
                                ><a href="/ECommerce/shop?searchValue=<s:property value="searchValue"/>&categoryId=-1&priceFrom=<s:property value="priceFrom"/>&priceTo=<s:property value="priceTo"/>&manufacture=<s:property value="manufacture"/>&stringTypeSort=<s:property value="stringTypeSort"/>&numOfPage=<s:property value="numOfPage"/>">All</a></li>
                                <s:iterator value="listCategoriesIdAndName" var="value">
                                <li
                                    <s:if test="%{#value.Id.equals(categoryId)}" >
                                        style="font-weight: bold"
                                    </s:if>
                                    ><a href="/ECommerce/shop?searchValue=<s:property value="searchValue"/>&categoryId=<s:property value="Id"/>&priceFrom=<s:property value="priceFrom"/>&priceTo=<s:property value="priceTo"/>&manufacture=<s:property value="manufacture"/>&stringTypeSort=<s:property value="stringTypeSort"/>&numOfPage=<s:property value="numOfPage"/>"><s:property value="Name" /></a></li>
                                </s:iterator>

                        </ul>
                    </div><!-- .widget.widget-categories -->

                    <!-- Sorting Widget -->
                    <div class="widget widget-sorting">
                        <h3 class="widget-title">Sort By</h3>
                        <ul>
                            <s:iterator value="mapSortTypes" var="value">
                                <li 
                                    <s:if test="%{key.equals(stringTypeSort)}" >
                                        style="font-weight: bold"
                                    </s:if>
                                    >
                                    <a href="/ECommerce/shop?searchValue=<s:property value="searchValue"/>&categoryId=<s:property value="Id"/>&priceFrom=<s:property value="priceFrom"/>&priceTo=<s:property value="priceTo"/>&manufacture=<s:property value="manufacture"/>&stringTypeSort=<s:property value="key"/>&numOfPage=<s:property value="numOfPage"/>">
                                        <i class="material-icons sort"></i>
                                        <s:property value="value"/>
                                    </a>
                                </li>
                            </s:iterator>


                        </ul>
                    </div><!-- .widget.widget-sorting -->


                    <!-- Price Filter Widget -->
                    <div class="widget widget-price">
                        <h3 class="widget-title">Price Filter</h3>
                        <ul>
                            <li 
                                <s:if test="%{priceFrom == 0 && priceTo == 100000}" >
                                    style="font-weight: bold"
                                </s:if>
                                >
                                <a href="/ECommerce/shop?searchValue=<s:property value="searchValue"/>&categoryId=<s:property value="Id"/>&priceFrom=0&priceTo=100000&manufacture=<s:property value="manufacture"/>&stringTypeSort=<s:property value="stringTypeSort"/>&numOfPage=<s:property value="numOfPage"/>">All</a>
                            </li>
                            <li 
                                <s:if test="%{priceFrom == 0 && priceTo == 100}" >
                                    style="font-weight: bold"
                                </s:if>
                                >
                                <a href="/ECommerce/shop?searchValue=<s:property value="searchValue"/>&categoryId=<s:property value="Id"/>&priceFrom=0&priceTo=100&manufacture=<s:property value="manufacture"/>&stringTypeSort=<s:property value="stringTypeSort"/>&numOfPage=<s:property value="numOfPage"/>">$0 - $100</a>
                            </li>
                            <li
                                <s:if test="%{priceFrom == 100 && priceTo == 200}" >
                                    style="font-weight: bold"
                                </s:if>
                                ><a href="/ECommerce/shop?searchValue=<s:property value="searchValue"/>&categoryId=<s:property value="Id"/>&priceFrom=100&priceTo=200&manufacture=<s:property value="manufacture"/>&stringTypeSort=<s:property value="stringTypeSort"/>&numOfPage=<s:property value="numOfPage"/>">$100 - $200</a></li>
                            <li
                                <s:if test="%{priceFrom == 200 && priceTo == 500}" >
                                    style="font-weight: bold"
                                </s:if>
                                ><a href="/ECommerce/shop?searchValue=<s:property value="searchValue"/>&categoryId=<s:property value="Id"/>&priceFrom=200&priceTo=500&manufacture=<s:property value="manufacture"/>&stringTypeSort=<s:property value="stringTypeSort"/>&numOfPage=<s:property value="numOfPage"/>">$200 - $500</a></li>
                            <li
                                <s:if test="%{priceFrom == 500 && priceTo == 1000}" >
                                    style="font-weight: bold"
                                </s:if>
                                ><a href="/ECommerce/shop?searchValue=<s:property value="searchValue"/>&categoryId=<s:property value="Id"/>&priceFrom=500&priceTo=1000&manufacture=<s:property value="manufacture"/>&stringTypeSort=<s:property value="stringTypeSort"/>&numOfPage=<s:property value="numOfPage"/>">$500 - $1000</a></li>
                            <li
                                <s:if test="%{priceFrom == 1000 && priceTo == 10000}" >
                                    style="font-weight: bold"
                                </s:if>
                                ><a href="/ECommerce/shop?searchValue=<s:property value="searchValue"/>&categoryId=<s:property value="Id"/>&priceFrom=1000&priceTo=10000&manufacture=<s:property value="manufacture"/>&stringTypeSort=<s:property value="stringTypeSort"/>&numOfPage=<s:property value="numOfPage"/>">$1000 - $10000</a></li>
                        </ul>
                    </div><!-- .widget.widget-price -->
                    <!-- Manufacture Widget -->
                    <div class="widget widget-sorting">
                        <h3 class="widget-title">Manufacture</h3>
                        <ul>
                            <li 
                                <s:if test="%{manufacture.equals('')}">
                                    style="font-weight: bold"
                                </s:if>
                                >
                                <a href="/ECommerce/shop?searchValue=<s:property value="searchValue"/>&categoryId=<s:property value="Id"/>&priceFrom=<s:property value="priceFrom"/>&priceTo=<s:property value="priceTo"/>&manufacture=&stringTypeSort=<s:property value="stringTypeSort"/>&numOfPage=<s:property value="numOfPage"/>">
                                    <i class="material-icons sort"></i>
                                    All
                                </a>
                            </li>
                            <s:iterator value="listManufactures" var="value">
                                <li 
                                    <s:if test="%{manufacture.equals(#value)}">
                                        style="font-weight: bold"
                                    </s:if>
                                    >
                                    <a href="/ECommerce/shop?searchValue=<s:property value="searchValue"/>&categoryId=<s:property value="Id"/>&priceFrom=<s:property value="priceFrom"/>&priceTo=<s:property value="priceTo"/>&manufacture=<s:property value="value"/>&stringTypeSort=<s:property value="stringTypeSort"/>&numOfPage=<s:property value="numOfPage"/>">
                                        <i class="material-icons sort"></i>
                                        <s:property value="value"/>
                                    </a>
                                </li>
                            </s:iterator>


                        </ul>
                    </div><!-- .widget.widget-sorting -->


                    <!-- Tags Widget -->

                </div><!-- .widgets -->
            </aside><!-- .sidebar -->
        </div><!-- .col-md-3.col-sm-4 -->

        <!-- Products Grid -->
        <div class="col-md-9 col-sm-8">

            <!-- Shop Bar -->
            <div class="shop-bar">
                <div class="column">
                    <p class="text-sm space-bottom-none">
                        <span class="text-gray">Showing</span> 1-12 items
                    </p>
                </div><!-- .column -->
                <div class="column">
                    <form method="get" class="search-box" action="/ECommerce/shop">
                        <s:textfield name="searchValue" cssClass="form-control" placeholder="Search shop"/>
                        <button type="submit">
                            <i class="material-icons search"></i>
                        </button>
                    </form><!-- form.search-box -->
                </div><!-- .column -->
            </div><!-- .shop-bar -->

            <s:if test="listProductsInPage != null">
                <div class="row">

                    <s:iterator value="listProductsInPage">
                        <!-- Item -->
                        <div class="col-md-4 col-sm-6">
                            <div class="shop-item">
                                <div class="shop-thumbnail">
                                    <!--                                <span class="item-rating text-warning">
                                                                        <i class="material-icons star"></i>
                                                                        <i class="material-icons star"></i>
                                                                        <i class="material-icons star"></i>
                                                                        <i class="material-icons star_half"></i>
                                                                        <i class="material-icons star_border"></i>
                                                                    </span>-->
                                    <s:if test="%{SaleOff != 0}">
                                        <span class="shop-label text-danger">Sale</span>
                                    </s:if>

                                    <a href="GetProductDetails?id=<s:property value="Id"/>" class="item-link"></a>
                                    <img src="<s:property value="Image1" />" alt="Shop item">
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
                                    <h3 class="shop-item-title"><a href="shop-single.html"><s:property value="Name" /></a></h3>
                                    <span class="shop-item-price">
                                        <s:if test="%{SaleOff != 0}">
                                            <span class="old-price">$<s:property value="Price" /></span>
                                            $<s:text name="{0,number,#,##0.00}"> 
                                                <s:param name="value" value="Price - Price*SaleOff"/> 
                                            </s:text>

                                        </s:if>
                                        <s:if test="%{SaleOff == 0}">
                                            $<s:property value="Price" />
                                        </s:if>
                                    </span>
                                </div>
                            </div><!-- .shop-item -->
                        </div><!-- .col-md-4.col-sm-6 -->
                    </s:iterator>



                </div><!-- .row -->
            </s:if>
            <s:else>
                <h3 style="color: green">No products found</h3>
            </s:else>
            <hr>

            <!-- Pagination -->
            <s:if test="%{totalPages > 1}">
                <div class="pagination padding-bottom">
                    <div class="page-numbers">
                        <s:iterator var="counter" begin="1" end="%{totalPages}" >
                            <!-- current iteration value (1, ... 5) -->
                            <a href="/ECommerce/shop?searchValue=<s:property value="searchValue"/>&categoryId=<s:property value="Id"/>&priceFrom=<s:property value="priceFrom"/>&priceTo=<s:property value="priceTo"/>&manufacture=<s:property value="manufacture"/>&stringTypeSort=<s:property value="stringTypeSort"/>&numOfPage=<s:property value="top" />"><s:property value="top" /></a>
                        </s:iterator>
                    </div>
                    <!--                <div class="pager">
                                        <a href="/ECommerce/shop?searchValue=<s:property value="searchValue"/>&categoryId=<s:property value="Id"/>&priceFrom=<s:property value="priceFrom"/>&priceTo=<s:property value="priceTo"/>&manufacture=<s:property value="manufacture"/>&stringTypeSort=<s:property value="stringTypeSort"/>&numOfPage=<s:property value="top" />"><s:property value="%{top-1}" /></a>
                                        <span>|</span>
                                        <a href="/ECommerce/shop?searchValue=<s:property value="searchValue"/>&categoryId=<s:property value="Id"/>&priceFrom=<s:property value="priceFrom"/>&priceTo=<s:property value="priceTo"/>&manufacture=<s:property value="manufacture"/>&stringTypeSort=<s:property value="stringTypeSort"/>&numOfPage=<s:property value="top" />"><s:property value="top" /></a>
                    
                                    </div>-->
                </div>
            </s:if>

        </div><!-- .col-md-9 col-sm-8 -->
    </div><!-- .row -->
</section><!-- .container -->

<s:include value="footer.jsp"/>