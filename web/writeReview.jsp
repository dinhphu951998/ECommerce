<%-- 
    Document   : product-details
    Created on : Nov 29, 2018, 11:08:42 PM
    Author     : PhuNDSE63159
--%>

<%@page import="org.apache.struts2.ServletActionContext"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<s:head/>
<s:include value="header.jsp"/>
<!-- Shop Catalog -->
<section class="container-fluid padding-top-3x padding-bottom-3x">
    <div class="row-write-comment row">
        <form class="form-inline" action="writeReviewProcess" method="post">
            <div class="col-md-6" style="border-right: 1px solid green; height: 100%">
                <h3>Send your review</h2>
                    <h6>1. Your rating in this product</h6>
                    <s:hidden name="productId" value="%{productId}"/>
                    <select name="rating" id="" class="form-control">
                        <option value="1">1 star</option>
                        <option value="2">2 star</option>
                        <option value="3">3 star</option>
                        <option value="4">4 star</option>
                        <option value="5">5 star</option>
                    </select>
                    <h6>2. Review title: </h6>
                    <s:textfield name="reviewTitle" cssClass="form-control" required="required"/>
                    <h6>3. Write your review bellow</h6>
                    <s:textarea rows="7" cssClass="form-control" required="required" name="reviewContent"></s:textarea>
                    <button type="submit" class="btn btn-warning" style="color: black">Send review</button>
            </div>
        </form>

        <div class="col-md-6" style="padding: 50px">
            <div class="row" style="margin-bottom: 50px">
                <div class="col-md-6">
                    <a href="GetProductDetails?id=<s:property value="product.Id" />"><img alt="image" src="<s:property value="product.Image1" />"></a>
                </div>
                <div class="col-md-6">
                    <h3><s:property value="product.Name" /></h3>
                    <s:if test="%{product.Manufacture != null}">
                        <p><span style="font-style: italic; color:yellowgreen;">Manufacture: </span><s:property value="product.Manufacture" /></p>                        
                    </s:if>
                    <p><span style="font-style: italic;color:yellowgreen;">Reviews: </span> <s:property value="product.NumOfRates" /></p>
                </div>
            </div>
            <div class="row mt-5">
                <p>You have questions about our products or our services? Your want to complain or report about purchased products?</p>
                <ul >
                    <li>Ask questions <a href="contact">here</a></li>
                    <li>Contact hotline <a href="tel:<s:property value="contact.CellPhone" />"><s:property value="contact.CellPhone" /></a>, or send email to <a href="mailto:<s:property value="contact.Email" />"><s:property value="contact.Email" /></a> 
                        so that you can be supported right away </li>
                </ul>
            </div>
        </div>
    </div>

</section><!-- .container -->
<s:include value="footer.jsp"/>