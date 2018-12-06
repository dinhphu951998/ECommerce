<%-- 
    Document   : order-detail
    Created on : Dec 3, 2018, 9:57:09 AM
    Author     : DAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<s:include value="header.jsp"/>
<s:url value="/writeReviewForm" var="writeReviewFormUrl"/>
<!-- Content -->
<section class="container padding-top-3x">
    <h4 class="mobile-center">Order ID: #<s:property value="%{order.ID}"/></h4>
    <h4 class="mobile-center">Date Purchased: <s:property value="%{order.DatePurchased}"/></h4>
    <h4 class="mobile-center">Status: <s:property value="%{order.Status}"/></h4>
    <h4 class="mobile-center">Receiver: <s:property value="%{order.Name}"/></h4>
    <h4 class="mobile-center">Address: <s:property value="%{order.Address}"/></h4>
    <h4 class="mobile-center">Phone: <s:property value="%{order.Phone}"/></h4>
    <div class="row padding-top">
        <div class="col-sm-12 padding-bottom-2x">
            <div class="table-responsive">
                <table>
                    <thead>
                    <th>Products</th>
                    <th>Quantity</th>
                    <th>Sale Off</th>
                    <th>Total</th>
                        <s:if test="%{order.Status.equals('Delivered')}">
                        <th></th>
                        </s:if>
                    </thead>
                    <tbody>
                        <s:iterator value="%{listProduct}">
                            <tr>
                                <td>
                                    <div class="shopping-cart">
                                        <div class="item" style="border-bottom: 0px !important">
                                            <a href="#" class="item-thumb">
                                                <img src="<s:property value="Image1"/>" alt="Item">
                                            </a>
                                            <div class="item-details">
                                                <h3 class="item-title">
                                                    <s:property value="Name"/>
                                                </h3>
                                                <h4 class="item-price">$<s:property value="Price"/></h4>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td><s:property value="Stock"/></td>
                                <td><s:property value="SaleOff * 100"/>%</td>
                                <td>$<s:property value="Price * (1 - SaleOff)"/></td>
                                <s:if test="%{order.Status.equals('Delivered')}">
                                    <td><a href="writeReviewForm?productId=<s:property value="Id" />">Write review</a></td>
                                </s:if>
                            </tr>
                        </s:iterator>
                        <tr>
                            <td></td>
                            <td></td>
                            <td><b>Sub total:</b></td>
                            <td>$<s:property value="%{order.Total}"/></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div><!-- .col-sm-8 -->
    </div><!-- .row -->
</section><!-- .container -->
<s:include value="footer.jsp"/>

