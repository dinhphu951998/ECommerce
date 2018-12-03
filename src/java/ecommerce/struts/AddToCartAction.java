/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.struts;

import com.opensymphony.xwork2.ActionContext;
import ecommerce.dao.ProductsDAO;
import ecommerce.entities.MyCart;
import ecommerce.entities.Products;
import java.util.Map;

/**
 *
 * @author PhuNDSE63159
 */
public class AddToCartAction {
    private String Id;
    private int quantity;
    private String color;
    private String image;
    private final String SUCCESS = "success";
    
    public AddToCartAction() {
    }
    
    public String execute() throws Exception {
        String url = SUCCESS;
        if(quantity <= 0){
            quantity = 1;
        }
        ProductsDAO dao = new ProductsDAO();
        Products product = dao.getProductsById(Id);
        if(image == null){
            image = product.getImage1();
        }
        product.setImage1(image);
        product.setAttVal1(color);
        
        Map session = ActionContext.getContext().getSession();
        MyCart cart = (MyCart) session.get("CART");
        if(cart == null){
            cart = new MyCart();
        }
        cart.addItem(product, quantity);
        session.put("CART", cart);
        
        return url;
    }

    
    public String remove() throws Exception{
        String url = SUCCESS;
        Map session = ActionContext.getContext().getSession();
        MyCart cart = (MyCart) session.get("CART");
        ProductsDAO dao = new ProductsDAO();
        Products chosen = dao.getProductsById(Id);
        chosen.setImage1(image);
        cart.removeItem(chosen);
        return url;
    }
    
    
    public String getId() {
        return Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        
        this.quantity = quantity;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    
    
}
