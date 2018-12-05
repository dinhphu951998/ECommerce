/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.struts;

import com.opensymphony.xwork2.Action;
import ecommerce.dao.OrdersDAO;
import ecommerce.entities.Orders;

/**
 *
 * @author PhuNDSE63159
 */
public class TrackingOrderAction {
    private String orderId;
    private Orders order;
    
    public TrackingOrderAction() {
    }
    
    public String execute() throws Exception {
        String url  = Action.SUCCESS;
        OrdersDAO dao = new OrdersDAO();
        order = dao.getOrdersByID(orderId);
        return url;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }
    
    public Orders getOrder() {
        return order;
    }

    public void setOrder(Orders order) {
        this.order = order;
    }
    
}
