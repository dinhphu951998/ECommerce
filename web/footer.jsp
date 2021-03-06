<%-- 
    Document   : footer
    Created on : Nov 26, 2018, 1:21:54 PM
    Author     : PhuNDSE63159
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<s:set id="contact" value="#session.CONTACT"/>
<!-- Footer -->
<footer class="footer space-top-3x">
    <div class="column">
        <p class="text-sm">Need support? Call 
            <span class="text-primary">
                <s:property value="#contact.LandLine"/>
            </span>
        </p>
        <div class="social-bar text-center space-bottom">
            <s:if test="%{#contact.skype != null}">
                <a href="<s:property value="#contact.Skype"/>" class="sb-skype" 
                   data-toggle="tooltip" data-placement="top" title="Skype">
                    <i class="socicon-skype"></i>
                </a>
            </s:if>

            <s:if test="%{#contact.facebook != null}">
                <a href="https://www.facebook.com/<s:property value="#contact.facebook"/>" class="sb-facebook" data-toggle="tooltip" 
                   data-placement="top" title="Facebook">
                    <i class="socicon-facebook"></i>
                </a>
            </s:if>

            <s:if test="%{#contact.twitter != null}">
                <a href="https://www.twitter.com/<s:property value="#contact.twitter"/>" class="sb-twitter" data-toggle="tooltip" 
                   data-placement="top" title="Twitter">
                    <i class="socicon-twitter"></i>
                </a>
            </s:if>

            <s:if test="%{#contact.instagram != null}">
                <a href="https://www.instagram.com/<s:property value="#contact.instagram"/>" class="sb-instagram" data-toggle="tooltip" 
                   data-placement="top" title="" data-original-title="Instagram">
                    <i class="socicon-instagram"></i>
                </a>
            </s:if>

        </div><!-- .social-bar -->
        <p class="copyright">&copy; 2016. Made with <i class="text-danger material-icons favorite"></i> by devil triangle.</p>
    </div><!-- .column -->
    
    <div class="column">
        <h3 class="widget-title">
            Subscription
            <small>To receive latest offers and discounts from the shop.</small>
        </h3>
        
        <form action="http://rokaux.us12.list-manage.com/subscribe/post?u=c7103e2c981361a6639545bd5&amp;id=1194bb7544" method="post" target="_blank" class="subscribe-form" novalidate>
            <input type="email" class="form-control" name="EMAIL" placeholder="Your e-mail">
            <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
            <div style="position: absolute; left: -5000px;" aria-hidden="true">
                <input type="text" name="b_c7103e2c981361a6639545bd5_1194bb7544" tabindex="-1" value=""/>
            </div>
            <button type="submit"><i class="material-icons send"></i></button>
        </form>
        
    </div><!-- .column -->
    
    <div class="column">
        <h3 class="widget-title">
            Payment Methods
            <small>We support one of the following payment methods.</small>
        </h3>
        <div class="cards"><img src="img/cards.png" alt="Cards"></div>
        <!-- Scroll To Top Button -->
        <div class="scroll-to-top-btn"><i class="material-icons trending_flat"></i></div>
    </div><!-- .column -->
    
</footer><!-- .footer -->

</div><!-- .page-wrapper -->

<script src="js/vendor/jquery-2.1.4.min.js"></script>
<script src="js/vendor/bootstrap.min.js"></script>
<script src="js/vendor/smoothscroll.js"></script>
<script src="js/vendor/velocity.min.js"></script>
<script src="js/vendor/waves.min.js"></script>
<script src="js/vendor/icheck.min.js"></script>
<script src="js/vendor/owl.carousel.min.js"></script>
<script src="js/vendor/jquery.downCount.js"></script>
<script src="js/vendor/magnific-popup.min.js"></script>
<script src="js/vendor/nouislider.min.js"></script>
<script src="js/scripts.js"></script>
<script src="js/wishlist.js"></script>
<script src="js/checkout.js"></script>


</body><!-- <body> -->


</html>
