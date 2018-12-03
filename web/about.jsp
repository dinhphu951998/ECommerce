<%-- 
    Document   : about
    Created on : Dec 3, 2018, 11:54:32 AM
    Author     : DAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<s:include value="header.jsp"/>

<!-- Featured Image -->
<div class="featured-image" style="background-image: url(img/featured-image/about.jpg);"></div>
<!-- Content -->
<section class="container padding-top-3x padding-bottom-3x">
    <h1>About</h1>
    <div class="row padding-top">
        <div class="col-md-5 col-sm-6 padding-bottom">
            <h3>The Brand</h3>
            <p class=" space-top">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
        </div><!-- .col-md-5.col-sm-6 -->
        <div class="col-sm-6 col-md-offset-1 padding-bottom">
            <h3>Mission</h3>
            <div class="quotation padding-top">
                <s:if test="%{listAccount != null}">
                    <s:iterator value="%{listAccount}">
                        <s:if test="Id == 'phund'">
                            <div class="quotation-author">
                                <div class="quotation-author-ava">
                                    <img src="<s:property value="Image"/>" alt="<s:property value="LastName"/>">
                                </div>
                            </div>
                            <blockquote>
                                <p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem.</p>
                                <cite>Team Leader, <s:property value="FirstName"/> <s:property value="LastName"/></cite>
                            </blockquote>
                        </s:if>
                    </s:iterator>
                </s:if>
            </div><!-- .quotation -->
        </div><!-- .col-md-6.col-sm-6.col-md-offset-1 -->
    </div><!-- .row -->
    <hr class="padding-bottom">
    <h3>Our Team</h3>
    <div class="row padding-top">
        <s:if test="%{listAccount != null}">
            <s:iterator value="%{listAccount}">
                <!-- Teammate -->
                <div class="col-xs-6 col-md-4">
                    <div class="teammate">
                        <div class="teammate-thumb">
                            <div class="social-bar text-center space-bottom">
                                <a href="#" class="sb-skype" data-toggle="tooltip" data-placement="top" title="Skype">
                                    <i class="socicon-skype"></i>
                                </a>
                                <a href="#" class="sb-facebook" data-toggle="tooltip" data-placement="top" title="Facebook">
                                    <i class="socicon-facebook"></i>
                                </a>
                                <a href="#" class="sb-google-plus" data-toggle="tooltip" data-placement="top" title="" data-original-title="Google+">
                                    <i class="socicon-googleplus"></i>
                                </a>
                            </div><!-- .social-bar -->
                            <img src="<s:property value="Image"/>" alt="Teammate">
                        </div>
                        <h4 class="teammate-name"><s:property value="FirstName"/> <s:property value="LastName"/></h4>
                        <span class="teammate-position">
                            <s:if test="%{Id == 'phund'}">
                                Team Leader, Developer
                            </s:if>
                            <s:else>
                                Developer
                            </s:else>
                        </span>
                    </div><!-- .teammate -->
                </div><!-- .col-xs-6.col-md-4 -->
            </s:iterator>
        </s:if>
    </div><!-- .row -->
</section><!-- .container -->

<!-- Video Popup -->
<div class="fw-section padding-top-3x padding-bottom-3x" style="background-image: url(img/video_bg.jpg);">
    <div class="container padding-top-3x padding-bottom-3x text-center">
        <div class="space-top-3x space-bottom">
            <!-- Add ".light-skin" class to alter appearance. -->
            <a href="https://player.vimeo.com/video/135832597?color=77cde3&amp;title=0&amp;byline=0&amp;portrait=0" class="video-popup-btn">
                <i class="material-icons play_arrow"></i>
            </a>
        </div>
        <p class="space-bottom-2x">M-Store - your reliable partner.</p>
    </div>
</div><!-- .fw-section -->

<s:include value="footer.jsp"/>