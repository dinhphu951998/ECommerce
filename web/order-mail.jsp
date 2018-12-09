<%-- 
    Document   : order-mail
    Created on : Dec 5, 2018, 10:52:37 AM
    Author     : PhuNDSE63159
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<div style="margin:0">
    <table class="m_-7994109624123736791body" style="height:100%!important;width:100%!important;border-spacing:0;border-collapse:collapse">
        <tbody>
            <tr>
                <td style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Roboto&quot;,&quot;Oxygen&quot;,&quot;Ubuntu&quot;,&quot;Cantarell&quot;,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif">

                    <table class="m_-7994109624123736791row m_-7994109624123736791content" style="width:100%;border-spacing:0;border-collapse:collapse">
                        <tbody>
                            <tr>
                                <td class="m_-7994109624123736791content__cell" style="font-family:-apple-system,BlinkMacSystemFont,
                                    &quot;Segoe UI&quot;,&quot;Roboto&quot;,&quot;Oxygen&quot;,&quot;Ubuntu&quot;,&quot;Cantarell&quot;,
                                    &quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;padding-bottom:40px">
                        <center>
                            <table class="m_-7994109624123736791container" style="width:560px;text-align:left;border-spacing:0;border-collapse:collapse;margin:0 auto">
                                <tbody>
                                    <tr>
                                        <td style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Roboto&quot;,&quot;Oxygen&quot;,&quot;Ubuntu&quot;,&quot;Cantarell&quot;,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif">

                                            <h2 style="font-weight:normal;font-size:24px;margin:0 0 10px"> Thank you for your order! </h2>
                                            <p style="color:#777;line-height:150%;font-size:16px;margin:0">

                                                Hello <s:property value="order.name"/>, We are preparing for your order. 
                                                We are going contact with you right after the order delivers.

                                            </p>

                                            <table class="m_-7994109624123736791row m_-7994109624123736791actions" style="width:100%;border-spacing:0;border-collapse:collapse;margin-top:20px">
                                                <tbody>
                                                    <tr>
                                                        <td class="m_-7994109624123736791actions__cell" style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Roboto&quot;,&quot;Oxygen&quot;,&quot;Ubuntu&quot;,&quot;Cantarell&quot;,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif">
                                                            <table class="m_-7994109624123736791button m_-7994109624123736791main-action-cell" style="border-spacing:0;border-collapse:collapse;float:left;margin-right:15px">
                                                                <tbody>
                                                                    <tr>
                                                                        <td class="m_-7994109624123736791button__cell" style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Roboto&quot;,&quot;Oxygen&quot;,&quot;Ubuntu&quot;,&quot;Cantarell&quot;,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;border-radius:4px" align="center" bgcolor="#053247">
                                                                            <s:url action="GetOrder" var="get" forceAddSchemeHostAndPort="true">
                                                                                <s:param name="orderId" value="orderId"/>
                                                                            </s:url>
                                                                            <s:a href="%{get}" cssClass="m_-7994109624123736791button__text" 
                                                                                 cssStyle="font-size:16px;text-decoration:none;display:block;color:#fff;padding:20px 25px" 
                                                                                 target="_blank" >View your order</s:a>
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                                <table class="m_-7994109624123736791link m_-7994109624123736791secondary-action-cell" style="border-spacing:0;border-collapse:collapse;margin-top:19px">
                                                                    <tbody>
                                                                        <tr>
                                                                            <td class="m_-7994109624123736791link__cell" style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Roboto&quot;,&quot;Oxygen&quot;,&quot;Ubuntu&quot;,&quot;Cantarell&quot;,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif">
                                                                                <a href="<s:url action="/Home" forceAddSchemeHostAndPort="true"></s:url>" 
                                                                                   class="m_-7994109624123736791link__text" 
                                                                                   style="font-size:16px;text-decoration:none;color:#053247" 
                                                                                   target="_blank" >
                                                                                    <span class="m_-7994109624123736791or" 
                                                                                          style="font-size:16px;color:#999;display:inline-block;margin-right:10px">
                                                                                        or</span> 
                                                                                    Visit our store
                                                                                </a>
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </center>
                    </td>
                </tr>
            </tbody>
        </table>

        <table class="m_-7994109624123736791row m_-7994109624123736791section" style="width:100%;border-spacing:0;border-collapse:collapse;border-top-width:1px;border-top-color:#e5e5e5;border-top-style:solid">
            <tbody>
                <tr>
                    <td class="m_-7994109624123736791section__cell" style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Roboto&quot;,&quot;Oxygen&quot;,&quot;Ubuntu&quot;,&quot;Cantarell&quot;,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;padding:40px 0">
            <center>
                <table class="m_-7994109624123736791container" style="width:560px;text-align:left;border-spacing:0;border-collapse:collapse;margin:0 auto">
                    <tbody>
                        <tr>
                            <td style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Roboto&quot;,&quot;Oxygen&quot;,&quot;Ubuntu&quot;,&quot;Cantarell&quot;,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif">
                                <h3 style="font-weight:normal;font-size:20px;margin:0 0 25px">Order summary</h3>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table class="m_-7994109624123736791container" style="width:560px;text-align:left;border-spacing:0;border-collapse:collapse;margin:0 auto">
                    <tbody>
                        <tr>
                            <td style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Roboto&quot;,&quot;Oxygen&quot;,&quot;Ubuntu&quot;,&quot;Cantarell&quot;,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif">
                                <table class="m_-7994109624123736791row" style="width:100%;border-spacing:0;border-collapse:collapse">
                                    <tbody>
                                        <tr class="m_-7994109624123736791order-list__item" style="width:100%">
                                            <td class="m_-7994109624123736791order-list__item__cell" 
                                                style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Roboto&quot;,&quot;Oxygen&quot;,&quot;Ubuntu&quot;,&quot;Cantarell&quot;,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;padding-bottom:15px">
                                                <table style="border-spacing:0;border-collapse:collapse">
                                                    <tbody>
                                                    <s:iterator value="listProduct">
                                                        <tr>
                                                            <td style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Roboto&quot;,&quot;Oxygen&quot;,&quot;Ubuntu&quot;,&quot;Cantarell&quot;,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif">
                                                                <img src="<s:property value="image1"/>" 
                                                                     align="left" width="60" height="60" 
                                                                     class="m_-7994109624123736791order-list__product-image CToWUd" 
                                                                     style="margin-right:15px;border-radius:8px;border:1px solid #e5e5e5"/>
                                                            </td>
                                                            <td class="m_-7994109624123736791order-list__product-description-cell" 
                                                                style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Roboto&quot;,&quot;Oxygen&quot;,&quot;Ubuntu&quot;,&quot;Cantarell&quot;,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;width:100%">
                                                                <span class="m_-7994109624123736791order-list__item-title" 
                                                                      style="font-size:16px;font-weight:600;line-height:1.4;color:#555">
                                                                    <s:property value="name"/>&nbsp;x&nbsp;<s:property value="stock"/>
                                                                </span>
                                                                <br>
                                                            </td>
                                                            <td class="m_-7994109624123736791order-list__price-cell" 
                                                                style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Roboto&quot;,&quot;Oxygen&quot;,&quot;Ubuntu&quot;,&quot;Cantarell&quot;,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;white-space:nowrap">
                                                                <s:if test="%{saleOff != 0}">
                                                                    <del class="m_-7994109624123736791order-list__item-original-price" 
                                                                         style="font-size:14px;display:block;text-align:right;color:#999">
                                                                        $<s:property value="price"/>
                                                                    </del>
                                                                </s:if>
                                                                <p class="m_-7994109624123736791order-list__item-price" style="color:#555;line-height:150%;font-size:16px;font-weight:600;margin:0 0 0 15px" align="right">
                                                                    $<s:text name="{0,number,#,##0.00}"> 
                                                                        <s:param name="value" value="Price * (1 - SaleOff) *  stock"/> 
                                                                    </s:text>
                                                                </p>
                                                            </td>
                                                        </tr>
                                                    </s:iterator>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody></table>

                            <table class="m_-7994109624123736791row m_-7994109624123736791subtotal-lines" style="width:100%;border-spacing:0;border-collapse:collapse;margin-top:15px;border-top-width:1px;border-top-color:#e5e5e5;border-top-style:solid">
                                <tbody>
                                    <tr>
                                        <td class="m_-7994109624123736791subtotal-spacer" 
                                            style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Roboto&quot;,&quot;Oxygen&quot;,&quot;Ubuntu&quot;,&quot;Cantarell&quot;,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;width:40%">

                                        </td>
                                        <td style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Roboto&quot;,&quot;Oxygen&quot;,&quot;Ubuntu&quot;,&quot;Cantarell&quot;,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif">
                                            <table class="m_-7994109624123736791row m_-7994109624123736791subtotal-table" style="width:100%;border-spacing:0;border-collapse:collapse;margin-top:20px">
                                                <tbody>
                                                    <tr class="m_-7994109624123736791subtotal-line">
                                                        <td class="m_-7994109624123736791subtotal-line__title" style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Roboto&quot;,&quot;Oxygen&quot;,&quot;Ubuntu&quot;,&quot;Cantarell&quot;,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;padding:5px 0">
                                                            <p style="color:#777;line-height:1.2em;font-size:16px;margin:0">
                                                                <span style="font-size:16px">Subtotal</span>
                                                            </p>
                                                        </td>
                                                        <td class="m_-7994109624123736791subtotal-line__value" style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Roboto&quot;,&quot;Oxygen&quot;,&quot;Ubuntu&quot;,&quot;Cantarell&quot;,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;padding:5px 0" align="right">
                                                            <strong style="font-size:16px;color:#555">
                                                                <s:property value="order.total"/>$
                                                            </strong>
                                                        </td>
                                                    </tr>
                                                    <tr class="m_-7994109624123736791subtotal-line">
                                                        <td class="m_-7994109624123736791subtotal-line__title" style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Roboto&quot;,&quot;Oxygen&quot;,&quot;Ubuntu&quot;,&quot;Cantarell&quot;,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;padding:5px 0">
                                                            <p style="color:#777;line-height:1.2em;font-size:16px;margin:0">
                                                                <span style="font-size:16px">Shipping</span>
                                                            </p>
                                                        </td>
                                                        <td class="m_-7994109624123736791subtotal-line__value" style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Roboto&quot;,&quot;Oxygen&quot;,&quot;Ubuntu&quot;,&quot;Cantarell&quot;,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;padding:5px 0" align="right">
                                                            <strong style="font-size:16px;color:#555">0</strong>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <table class="m_-7994109624123736791row m_-7994109624123736791subtotal-table m_-7994109624123736791subtotal-table--total" style="width:100%;border-spacing:0;border-collapse:collapse;margin-top:20px;border-top-width:2px;border-top-color:#e5e5e5;border-top-style:solid">
                                                <tbody>
                                                    <tr class="m_-7994109624123736791subtotal-line">
                                                        <td class="m_-7994109624123736791subtotal-line__title" style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Roboto&quot;,&quot;Oxygen&quot;,&quot;Ubuntu&quot;,&quot;Cantarell&quot;,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;padding:20px 0 0">
                                                            <p style="color:#777;line-height:1.2em;font-size:16px;margin:0">
                                                                <span style="font-size:16px">Total</span>
                                                            </p>
                                                        </td>
                                                        <td class="m_-7994109624123736791subtotal-line__value" style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Roboto&quot;,&quot;Oxygen&quot;,&quot;Ubuntu&quot;,&quot;Cantarell&quot;,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;padding:20px 0 0" align="right">
                                                            <strong style="font-size:24px;color:#555">
                                                                <s:property value="order.total"/>$
                                                            </strong>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
        </center>
        </td>
        </tr>
        </tbody>
    </table>
    <table class="m_-7994109624123736791row m_-7994109624123736791section" style="width:100%;border-spacing:0;border-collapse:collapse;border-top-width:1px;border-top-color:#e5e5e5;border-top-style:solid">
        <tbody>
            <tr>
                <td class="m_-7994109624123736791section__cell" style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Roboto&quot;,&quot;Oxygen&quot;,&quot;Ubuntu&quot;,&quot;Cantarell&quot;,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;padding:40px 0">
        <center>
            <table class="m_-7994109624123736791container" style="width:560px;text-align:left;border-spacing:0;border-collapse:collapse;margin:0 auto">
                <tbody>
                    <tr>
                        <td style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Roboto&quot;,&quot;Oxygen&quot;,&quot;Ubuntu&quot;,&quot;Cantarell&quot;,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif">
                            <h3 style="font-weight:normal;font-size:20px;margin:0 0 25px">Customer information</h3>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="m_-7994109624123736791container" style="width:560px;text-align:left;border-spacing:0;border-collapse:collapse;margin:0 auto">
                <tbody>
                    <tr>
                        <td style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Roboto&quot;,&quot;Oxygen&quot;,&quot;Ubuntu&quot;,&quot;Cantarell&quot;,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif">
                            <table class="m_-7994109624123736791row" style="width:100%;border-spacing:0;border-collapse:collapse">
                                <tbody>
                                    <tr>
                                        <td class="m_-7994109624123736791customer-info__item" style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Roboto&quot;,&quot;Oxygen&quot;,&quot;Ubuntu&quot;,&quot;Cantarell&quot;,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;padding-bottom:40px;width:50%">
                                            <h4 style="font-weight:500;font-size:16px;color:#555;margin:0 0 5px">Shipping address</h4>
                                            <p style="color:#777;line-height:150%;font-size:16px;margin:0">
                                                <s:property value="order.name"/>
                                                <br>
                                                <s:property value="order.address"/>
                                                <br/>
                                                <s:property value="order.phone"/>
                                                <br/>
                                                <s:property value="order.email"/>
                                            </p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table class="m_-7994109624123736791row" style="width:100%;border-spacing:0;border-collapse:collapse">
                                <tbody>
                                    <tr>
                                        <td class="m_-7994109624123736791customer-info__item" style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Roboto&quot;,&quot;Oxygen&quot;,&quot;Ubuntu&quot;,&quot;Cantarell&quot;,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;padding-bottom:40px;width:50%">
                                            <h4 style="font-weight:500;font-size:16px;color:#555;margin:0 0 5px">Shipping method</h4>
                                            <p style="color:#777;line-height:150%;font-size:16px;margin:0">Standard delivery (5-7 days)</p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
        </center>
        </td>
        </tr>
        </tbody>
    </table>
</td>
</tr>
</tbody>
</table>

</div>
