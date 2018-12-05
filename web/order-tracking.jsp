<%-- 
    Document   : order-tracking
    Created on : Dec 3, 2018, 5:49:14 PM
    Author     : PhuNDSE63159
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<s:include value="header.jsp"/>

<!-- Content -->
<section class="container padding-top-3x">
    <div class="col-md-6 padding-top">
        <h3>Order tracking form</h3>
        <s:form method="get" theme="simple" action="GetOrder">
            <input type="text" class="form-control" placeholder="OrderId" required name="orderId" value="<s:property value="orderId"/>">
            <div class="form-footer">
                <div class="form-submit">
                    <button type="submit" class="btn btn-primary btn-block waves-effect waves-light">Search</button>
                </div>
            </div>
        </s:form>
    </div><!-- .col-md-4 -->
    <s:if test="%{order == null && orderId != null}">
        <div class="col-md-6 padding-top">
            <font color="red">
                <h3>Order <s:property value="orderId"/> not found</h3>
            </font>
        </div>
    </s:if>
    <s:elseif test="%{order != null}">
        <div class="col-md-6 padding-top">
            <ul class="nav-tabs mobile-center" role="tablist">
                <li class="active">
                    <a href="#orders" role="tab" data-toggle="tab">
                        Orders
                        <i class="material-icons shopping_cart"></i>
                    </a>
                </li>
            </ul><!-- .nav-tabs -->
            <!-- Tab Panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane transition fade scale in active" id="orders">
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
                                <tr>
                                    <td>
                                        <s:url action="OrderDetail" var="details">
                                            <s:param name="Id" value="orderId"/>
                                            <s:param name="isAllow" value="true"/>
                                        </s:url>
                                        <s:a href="%{details}">
                                            <s:property value="orderId"/>
                                        </s:a>
                                    </td>
                                    <td>
                                        <s:text name="{0,date,dd/MM/yyyy HH:mm a}">
                                            <s:param value="order.DatePurchased"/>
                                        </s:text>
                                    </td>
                                    <td>
                                        <s:if test="%{order.Status == 'Delivered'}">
                                            <span class="text-success">Delivered</span>
                                        </s:if>
                                        <s:if test="%{order.Status == 'In Progress' || order.Status == 'Waiting for confirm'}">
                                            <span class="text-warning">
                                                <s:property value="status"/>
                                            </span>
                                        </s:if>
                                        <s:if test="%{order.Status == 'Canceled'}">
                                            <span class="text-danger">Canceled</span>
                                        </s:if>
                                    </td>
                                    <td>$<s:property value="order.Total"/></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div><!-- .tab-pane#orders -->
            </div><!-- .tab-content -->
        </s:elseif>

</section><!-- .container -->

<s:include value="footer.jsp"/>