<%-- 
    Document   : faq
    Created on : Dec 3, 2018, 4:17:29 PM
    Author     : thanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<s:include value="header.jsp"/>
<!-- Content -->
<section class="container padding-top-3x">
    <h1>FAQ</h1>
    <div class="row padding-top">
        <div class="col-sm-12">
            <s:if test="%{listMessageses != null}">
                <s:iterator value="listMessageses">
                    <div class="panel-group">
                        <div class="panel">
                            <div class="panel-heading">
                                <a class="panel-title" data-toggle="collapse" href="#panel1">
                                    <s:property value="Message"/>
                                </a>
                            </div>
                            <div id="panel1" class="panel-collapse collapse in">
                                <div class="panel-body text-gray">
                                    <s:property value="Answer"/>
                                </div>
                            </div>
                        </div><!-- .panel -->
                    </div><!-- .panel-group -->
                </s:iterator>
            </s:if>
                    <s:if test="%{listMessageses == null}">
                        <h3 style="color: green">No FAQ found</h3>
                    </s:if>


        </div><!-- .col-sm-6 -->

    </div><!-- .row -->
</section><!-- .container -->
<s:include value="footer.jsp"/>