/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.struts;

import com.opensymphony.xwork2.ActionContext;
import ecommerce.dao.OrdersDAO;
import ecommerce.dao.ProductsDAO;
import ecommerce.entities.MyCart;
import ecommerce.entities.Orders;
import ecommerce.entities.Products;
import java.util.List;
import java.util.Map;

/**
 *
 * @author PhuNDSE63159
 */
public class GetShoppingCartAction {

    private MyCart shoppingCart;
    private final String SUCCESS = "success";
    private String orderId;
    private Orders order;
    private List<Products> listProduct;

    public GetShoppingCartAction() {
    }

    public String execute() throws Exception {
        String url = SUCCESS;
        Map session = ActionContext.getContext().getSession();
        shoppingCart = (MyCart) session.get("CART");
        return url;
    }

    public String getCartTextEmail() throws Exception {
        String url = SUCCESS;
        
        OrdersDAO orderDAO = new OrdersDAO();
        ProductsDAO proDAO = new ProductsDAO();
        
        order = orderDAO.getOrdersByID(orderId);
        listProduct = proDAO.getProductByOrderID(orderId);
        return url;
    }

    /**
     * @return the shoppingCart
     */
    public MyCart getShoppingCart() {
        return shoppingCart;
    }

    /**
     * @param shoppingCart the shoppingCart to set
     */
    public void setShoppingCart(MyCart shoppingCart) {
        this.shoppingCart = shoppingCart;
    }

    /**
     * @return the orderId
     */
    public String getOrderId() {
        return orderId;
    }

    /**
     * @param orderId the orderId to set
     */
    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    /**
     * @return the order
     */
    public Orders getOrder() {
        return order;
    }

    /**
     * @param order the order to set
     */
    public void setOrder(Orders order) {
        this.order = order;
    }

    /**
     * @return the listProduct
     */
    public List<Products> getListProduct() {
        return listProduct;
    }

    /**
     * @param listProduct the listProduct to set
     */
    public void setListProduct(List<Products> listProduct) {
        this.listProduct = listProduct;
    }

    

}
