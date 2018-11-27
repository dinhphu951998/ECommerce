<%-- 
    Document   : login
    Created on : Nov 26, 2018, 2:00:13 PM
    Author     : PhuNDSE63159
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<s:include value="header.jsp"/>

<div class="featured-image" style="background-image: url(img/featured-image/faq.jpg);"></div>


<section class="container padding-top-3x padding-bottom-2x">
    <h1>User Account</h1>
    <div class="row padding-top">
        <div class="col-md-4 padding-bottom">
            <h3>Login</h3>

            <s:form action="" method="POST" cssClass="login-form" >
                <input type="text" class="form-control" placeholder="Username" required name="Id">
                <input type="password" class="form-control" placeholder="Password" required name="password">
                <div class="form-footer">
                    <div class="rememberme">
                        <label class="checkbox">
                            <input type="checkbox" checked name="remember"> Remember me
                        </label>
                    </div>
                    <div class="form-submit">
                        <button type="submit" class="btn btn-primary btn-block waves-effect waves-light">Login</button>
                    </div>
                </div>
            </s:form>
        </div><!-- .col-md-4 -->
        <div class="col-md-4 col-md-offset-1">
            <h3>Register</h3>
            <div class="inner">
                
                <form method="post" class="login-form">
                    <input type="email" class="form-control" placeholder="E-mail" required>
                    <input type="password" class="form-control" placeholder="Password" required>
                    <input type="password" class="form-control" placeholder="Repeat password" required>
                    <div class="form-footer">
                        <div class="rememberme"></div>
                        <div class="form-submit">
                            <button type="submit" class="btn btn-primary btn-block waves-effect waves-light">Sign up</button>
                        </div>
                    </div>
                </form><!-- .login-form -->
            </div><!-- .inner -->
        </div><!-- .col-md-4.col-md-offset-1 -->
        <div class="col-md-3 padding-top-2x">
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