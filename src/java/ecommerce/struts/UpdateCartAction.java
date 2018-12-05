/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.struts;

import com.opensymphony.xwork2.ActionContext;
import ecommerce.entities.MyCart;
import java.util.Map;

/**
 *
 * @author PhuNDSE63159
 */
public class UpdateCartAction {

    private int[] hashCode;
    private int[] quantity;
    private final String SUCCESS = "success";

    public UpdateCartAction() {
    }

    public String execute() throws Exception {
        String url = SUCCESS;
        Map session = ActionContext.getContext().getSession();
        MyCart myCart = (MyCart) session.get("CART");
        for (int i = 0; i < hashCode.length; i++) {
            myCart.update(hashCode[i], quantity[i]);
        }
        return url;
    }

    public int[] getHashCode() {
        return hashCode;
    }

    public void setHashCode(int[] hashCode) {
        this.hashCode = hashCode;
    }

    /**
     * @return the quantity
     */
    public int[] getQuantity() {
        return quantity;
    }

    /**
     * @param quantity the quantity to set
     */
    public void setQuantity(int[] quantity) {
        this.quantity = quantity;
    }

}
