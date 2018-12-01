
package ecommerce.entities;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;


public class MyCart implements Serializable {
    private Map<Products, Integer> cart;
    private double total;

    public MyCart() {}
    
    public void addItem(Products product, int quantity){
        if(cart == null){
            cart = new HashMap();
        }
        
        if(!cart.containsKey(product)){
            cart.put(product, quantity);
        }else{
            int quan = cart.get(product);
            cart.put(product, quan + quantity);
        }
        total += product.getPrice();
    }
    
    public void removeItem(Products product){
        if(cart.containsKey(product)){
            double price = product.getPrice();
            int quantity = cart.remove(product);
            total -= price * quantity;
        }
    }

    public Map<Products, Integer> getCart() {
        return cart;
    }

    public void setCart(Map<Products, Integer> cart) {
        this.cart = cart;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

}
