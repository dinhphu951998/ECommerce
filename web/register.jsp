<%-- 
    Document   : login
    Created on : Nov 26, 2018, 2:00:13 PM
    Author     : PhuNDSE63159
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<s:include value="header.jsp"/>
<s:head/>   


<section class="container padding-top-3x padding-bottom-2x">
    <h1>User Account</h1>
    <div class="row padding-top">

        <div class="col-md-6 padding-bottom">
            <h3>Register</h3>
            <div class="inner">
                <s:if test="%{errorRegister != null}">
                    <h4 style="color: red"><s:property value="errorRegister" /></h4>
                </s:if>
                <s:form method="post" class="login-form" action="/register" theme="simple">
                    <s:textfield cssClass="form-control" placeholder="First Name" required="required"  name="firstName"/>
                    <s:textfield cssClass="form-control" placeholder="Last Name" required="required"  name="lastName"/>
                    <s:fielderror fieldName="email"/>
                    <s:textfield cssClass="form-control" placeholder="email" required="required"  name="email"/>
                    <s:textfield cssClass="form-control" placeholder="Username" required="required"  name="Id"/>
                    <s:password cssClass="form-control" placeholder="Password" required="required"  name="password"/>

                    <s:fielderror fieldName="confirmPassword"/>

                    <s:password cssClass="form-control" placeholder="Confirm Password" required="required"  name="confirmPassword"/>
                    <div class="form-footer">
                        <div class="rememberme"></div>
                        <div class="form-submit">
                            <button type="submit" class="btn btn-primary btn-block waves-effect waves-light">Sign up</button>
                        </div>
                    </div>
                </s:form><!-- .login-form -->
            </div><!-- .inner -->
            <s:a href="/ECommerce/LoginForm">Login</s:a>
            </div><!-- .col-md-4.col-md-offset-1 -->

            <div class="col-md-6 padding-top-2x">
                <a href="#" class="social-signup-btn ssb-facebook">
                    <i class="socicon-facebook"></i>
                    <span>Signup with Facebook</span>
                </a>
                <a href="#" class="social-signup-btn ssb-google">
                    <i class="socicon-googleplus"></i>
                    <span>Signup with Google+</span>
                </a>
                <a href="#" class="social-signup-btn ssb-twitter">
                    <i class="socicon-twitter"></i>
                    <span>Signup with Twitter</span>
                </a>
            </div><!-- .col-md-3 -->
        </div><!-- .row -->
    </section><!-- .container -->

<s:include value="footer.jsp"/>