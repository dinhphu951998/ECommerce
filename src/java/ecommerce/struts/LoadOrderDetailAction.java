/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.struts;

import com.opensymphony.xwork2.ActionContext;
import ecommerce.dao.OrdersDAO;
import ecommerce.dao.ProductsDAO;
import ecommerce.entities.Accounts;
import ecommerce.entities.Orders;
import ecommerce.entities.Products;
import java.util.List;
import java.util.Map;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

/**
 *
 * @author DAT
 */
@Action(value = "OrderDetail")
@Results({
    @Result(name = "success",location = "/order-detail.jsp"),
    @Result(name = "failed", location = "/login.jsp")
})
public class LoadOrderDetailAction {
    private String id;
    private Orders order;
    private List<Products> listProduct;
    private static final String SUCCESS = "success";
    private static final String FAILED = "failed";
    
    public LoadOrderDetailAction() {
    }
    
    public String execute() throws Exception {
        String url = FAILED;
        Map session = ActionContext.getContext().getSession();
        Accounts account = (Accounts) session.get("USER");
        if(account != null) {
            OrdersDAO orderDAO = new OrdersDAO();
            ProductsDAO proDAO = new ProductsDAO();
            order = orderDAO.getOrdersByID(id);
            listProduct = proDAO.getProductByOrderID(id);
            url = SUCCESS;
        }
        return url;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Orders getOrder() {
        return order;
    }

    public List<Products> getListProduct() {
        return listProduct;
    }
    
}
