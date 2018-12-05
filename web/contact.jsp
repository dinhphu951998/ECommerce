<%-- 
    Document   : contact
    Created on : Dec 3, 2018, 4:17:13 PM
    Author     : thanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<s:head/>
<s:include value="header.jsp"/>
<!-- Container -->
<section class="container space-top-3x">
    <s:if test="%{error != null}">
        <h3 style="color: red"><s:property value="error" /></h3>
    </s:if>
    <h1>Contacts</h1>
    <div class="row padding-top">
        <div class="col-sm-5 padding-bottom-2x">
            <ul class="list-icon">
                <li>
                    <i class="material-icons location_on"></i>
                    <s:property value="contact.Address" />
                </li>
                <li>
                    <i class="material-icons phone"></i>
                    <s:property value="contact.CellPhone" />
                </li>

                <li>
                    <i class="material-icons email"></i>
                    <a href="mailto:<s:property value="contact.Email" />"><s:property value="contact.Email" /></a>
                </li>
                <li>
                    <i class="socicon-skype"></i>
                    <s:property value="contact.Skype" />
                </li>
            </ul><!-- .list-icon -->
            <p>Working hours: <span class="text-gray">10am - 8pm, Mn - St</span></p>
            <span class="display-inline" style="margin-bottom: 6px;">Social accounts: &nbsp;&nbsp;</span>
            <div class="social-bar display-inline">
                <a href="<s:property value="contact.Facebook" />" class="sb-facebook" data-toggle="tooltip" data-placement="top" title="Facebook">
                    <i class="socicon-facebook"></i>
                </a>

                
                </a>
            </div><!-- .social-bar -->
        </div><!-- .col-sm-5 -->
        <div class="col-sm-7 padding-bottom-2x">
            <s:form method="post" cssClass="ajax-form" theme="simple" action="contactProcess">
                <div class="contact-form container">
                    <div class="row">
                        <div class="col-sm-offset-6 col-sm-6"><s:fielderror name="email" /></div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-element">
                                <s:textfield name="name" placeholder="Name" value="%{name}" cssClass="form-control" required="required"/>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-element">
                                <s:textfield name="email" placeholder="Email" value="%{email}" required="required" cssClass="form-control"/>
                            </div>
                        </div>
                    </div><!-- .row -->

                    <div class="form-element">
                        <textarea rows="6" class="form-control" name="message" required="required" placeholder="Message"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block waves-effect waves-light space-top-none">Send Message</button>
                </div>
                <div class="status-message"></div>
            </s:form>
        </div><!-- .col-sm-7 -->
    </div><!-- .row -->
</section><!-- .container -->
<s:include value="footer.jsp"/>