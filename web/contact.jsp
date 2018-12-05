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
                    45 Park Avenue, Apt. 303<br>New York, NY 10016, USA
                </li>
                <li>
                    <i class="material-icons phone"></i>
                    001 (917) 555-4836
                </li>
                <li>
                    <i class="material-icons phone_iphone"></i>
                    001 (800) 333-6578
                </li>
                <li>
                    <i class="material-icons email"></i>
                    <a href="mailto:info@m-store.com">info@m-store.com</a>
                </li>
                <li>
                    <i class="socicon-skype"></i>
                    <a href="#">skype_id</a>
                </li>
            </ul><!-- .list-icon -->
            <p>Working hours: <span class="text-gray">10am - 8pm, Mn - St</span></p>
            <span class="display-inline" style="margin-bottom: 6px;">Social accounts: &nbsp;&nbsp;</span>
            <div class="social-bar display-inline">
                <a href="#" class="sb-facebook" data-toggle="tooltip" data-placement="top" title="Facebook">
                    <i class="socicon-facebook"></i>
                </a>
                <a href="#" class="sb-google-plus" data-toggle="tooltip" data-placement="top" title="" data-original-title="Google+">
                    <i class="socicon-googleplus"></i>
                </a>
                <a href="#" class="sb-twitter" data-toggle="tooltip" data-placement="top" title="Twitter">
                    <i class="socicon-twitter"></i>
                </a>
                <a href="#" class="sb-instagram" data-toggle="tooltip" data-placement="top" title="" data-original-title="Instagram">
                    <i class="socicon-instagram"></i>
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