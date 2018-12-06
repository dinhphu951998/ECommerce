<%-- 
    Document   : contact
    Created on : Dec 3, 2018, 4:17:13 PM
    Author     : thanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<s:include value="header.jsp"/>
<!-- Container -->
<section class="container space-top-3x" style="margin: auto;
         width: 60%;
         /*border: 3px solid #f7be00;*/
         padding: 10px;">
    
    <s:if test="%{errorMessage != null}">
        <h1 style="color: #f7be00"><s:property value="errorMessage" /></h1>
    </s:if>
    <s:if test="%{errorMessage == null}">
        <h1 style="color: #f7be00">Fail to review product</h1>
    </s:if>
    <a href="shop">Click here to continue shopping</a>
</section><!-- .container -->
<s:include value="footer.jsp"/>