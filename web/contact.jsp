<%-- 
    Document   : contact
    Created on : Dec 3, 2018, 3:49:18 PM
    Author     : PhuNDSE63159
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<s:include value="header.jsp"/>

<!-- Small Modal -->
<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Note</h4>
            </div>
            <div class="modal-body">
                <p>Thank you for your message !</p>
                <p>We are contacting you right now</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Ok</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<div class="google-map"
     data-height="480"
     data-address="New York, USA"
     data-zoom="6"
     data-disable-controls="false"
     data-scrollwheel="false"
     data-marker="img/map-marker.png"
     data-marker-title="A-Shop Office"
     data-styles='[{"featureType":"road","elementType":"geometry","stylers":[{"lightness":100},{"visibility":"simplified"}]},{"featureType":"water","elementType":"geometry","stylers":[{"visibility":"on"},{"color":"#C6E2FF"}]},{"featureType":"poi","elementType":"geometry.fill","stylers":[{"color":"#C5E3BF"}]},{"featureType":"road","elementType":"geometry.fill","stylers":[{"color":"#D1D1B8"}]}]'
     ></div><!-- .google-map -->

<!-- Container -->
<section class="container space-top-3x">
    <h1>Contacts</h1>
    <div class="row padding-top">
        <div class="col-sm-5 padding-bottom-2x">
            <ul class="list-icon">
                <s:set var="contact" value="#session.CONTACT"/>

                <s:if test="%{#contact.address != null}">
                    <li>
                        <i class="material-icons location_on"></i>
                        <s:property value="#contact.address"/>
                    </li>
                </s:if>

                <s:if test="%{#contact.landLine  != null}">
                    <li>
                        <i class="material-icons phone"></i>
                        <s:property value="#contact.landLine"/>
                    </li>
                </s:if>


                <s:if test="%{#contact.cellPhone  != null}">
                    <li>
                        <i class="material-icons phone_iphone"></i>
                        <s:property value="#contact.cellPhone"/>
                    </li>
                </s:if>


                <s:if test="%{#contact.email  != null}">
                    <li>
                        <i class="material-icons email"></i>
                        <a href="mailto:<s:property value="#contact.email"/>">
                            <s:property value="#contact.email"/>
                        </a>
                    </li>
                </s:if>


                <s:if test="%{#contact.skype  != null}">
                    <li>
                        <i class="socicon-skype"></i>
                        <a href="#">
                            <s:property value="#contact.skype"/>
                        </a>
                    </li>
                </s:if>

            </ul><!-- .list-icon -->
            <p>
                Working hours: <span class="text-gray">
                    <s:property value="#contact.working"/>
                </span>
            </p>
            <span class="display-inline" style="margin-bottom: 6px;">Social accounts: &nbsp;&nbsp;</span>
            <div class="social-bar display-inline">

                <s:if test="%{#contact.facebook != null}">
                    <a href="https://www.facebook.com/<s:property value="#contact.facebook"/>" class="sb-facebook" data-toggle="tooltip" data-placement="top" title="Facebook">
                        <i class="socicon-facebook"></i>
                    </a>
                </s:if>

                <s:if test="%{#contact.twitter != null}">
                    <a href="https://www.twitter.com/<s:property value="#contact.twitter"/>" class="sb-twitter" data-toggle="tooltip" data-placement="top" title="Twitter">
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
        </div><!-- .col-sm-5 -->

        <div class="col-sm-7 padding-bottom-2x">
            <form method="get" class="ajax-form" id="message-form" onsubmit="return false">
                <div class="contact-form container">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-element">
                                <input type="text" class="form-control" name="name" placeholder="Name">
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-element">
                                <input type="email" class="form-control" name="email" placeholder="E-mail">
                            </div>
                        </div>
                    </div><!-- .row -->
                    <div class="form-element">
                        <textarea rows="6" class="form-control" name="message" placeholder="Message"></textarea>
                    </div>
                    <button id="button-submit-message" type="submit" class="btn btn-primary btn-block waves-effect waves-light space-top-none">Send Message</button>
                </div>
                <div class="status-message"></div>
            </form>
        </div><!-- .col-sm-7 -->

    </div><!-- .row -->
</section><!-- .container -->

<input id="popup-modal-submit-message" type="hidden" class="btn btn-primary btn-block" data-toggle="modal" data-target=".bs-example-modal-sm"/>


<s:include value="footer.jsp"/>

<script>
    $("#button-submit-message").click(function () {
        var param = $("#message-form").serialize();
        console.log("Click");
        $.ajax({
            url: "http://localhost:8084/ECommerce/SendMessage",
            data: param,
            success: function (response) {
                if (response == "success") {
                    $("#message-form")[0].reset();
                    $("#popup-modal-submit-message").click();
                }else{
                    console.log(response);
                }
            },
            error: function (error) {
                console.log(error);
            }
        });
        return false;

    });
</script>
