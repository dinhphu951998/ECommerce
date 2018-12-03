/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.struts;

import com.opensymphony.xwork2.ActionContext;
import ecommerce.entities.MyCart;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author PhuNDSE63159
 */
public class GetShoppingCartAction {
    private MyCart shoppingCart;
    private final String SUCCESS = "success";
    
    public GetShoppingCartAction() {
    }
    
    public String execute() throws Exception {
        String url = SUCCESS;
        Map session = ActionContext.getContext().getSession();
        shoppingCart =  (MyCart) session.get("CART");
        return url;
    }

    public MyCart getShoppingCart() {
        return shoppingCart;
    }

    public void setShoppingCart(MyCart shoppingCart) {
        this.shoppingCart = shoppingCart;
    }

    
}
