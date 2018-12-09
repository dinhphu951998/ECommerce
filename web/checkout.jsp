<%-- 
    Document   : checkout
    Created on : Dec 3, 2018, 9:49:39 AM
    Author     : PhuNDSE63159
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<s:include value="header.jsp"/>

<!-- Container -->
<form method="post" class="container padding-top-3x padding-bottom-2x" action="<s:url value="SubmitCheckout"/>">
    <h1 class="space-top-half">Checkout</h1>
    <div class="row padding-top">
        <s:if test="%(exception != null)">
            <font color="red">
            <h5>
                Error
                <s:property value="exception.message"/>
            </h5>
            </font>
        </s:if>
        <s:if test="%{addresses != null}">
            <div class="col-sm-12 padding-bottom" >
                <div class="form-element form-select">
                    <s:select cssClass="form-control" list="%{addresses}" id="select-address"></s:select>
                    </div>
                </div><!-- .col-md-3.col-sm-6 -->
        </s:if>

        <!-- Checkout Form -->
        <div class="col-sm-8 padding-bottom">
            <input type="text" class="form-control" id="your-full-name" name="name" placeholder="Name" required>
            <div class="row">
                <div class="col-sm-6">
                    <input type="email" class="form-control" id="your-email" name="email" placeholder="Email" required>
                </div>
                <div class="col-sm-6">
                    <input type="tel" class="form-control" id="your-phone" name="phone" placeholder="Phone" required>
                </div>
            </div><!-- .row -->                    
            <input type="text" class="form-control" name="address" id="your-address" placeholder="Address" required>
            <s:if test="%{#session.USER != null}">
                <div class="form-group">
                    <label class="radio radio-inline">
                        <input type="radio" name="co_shipping" checked> Ship to different address
                    </label>
                    <label class="radio radio-inline" id="your-address-radio">
                        <input type="radio" name="co_shipping" id="your-address-radio"> Ship to your address
                    </label>
                </div><!-- .form-group -->
            </s:if>
        </div><!-- .col-sm-8 -->

        <!-- Sidebar -->
        <div class="col-md-3 col-md-offset-1 col-sm-4 padding-bottom">
            <aside>
                <h3>Cart total:</h3>
                <h4>$<s:property value="total"/></h4>
                <p class="text-sm text-gray">* Note: This amount includes costs for shipping to address you provided.</p>
                <a href="<s:url action="GetCart"/>" class="btn btn-default btn-ghost icon-left btn-block">
                    <i class="material-icons arrow_back"></i>
                    Back To Cart
                </a>
                <button type="submit" class="btn btn-primary btn-block waves-effect waves-light space-top-none">Checkout</button>
            </aside>
        </div><!-- .col-md-3.col-sm-4 -->
    </div><!-- .row -->
</form><!-- .container -->


<s:include value="footer.jsp"/>
<script>
    $("#select-address").on("change", function(){
        var value = $(this).val();
        var arr = value.split("-");
        $("#your-full-name").val(arr[0].trim());
        $("#your-phone").val(arr[1].trim());
        $("#your-address").val(arr[2].trim());
        $("#your-email").val(arr[3].trim());
    });
</script>
    
    