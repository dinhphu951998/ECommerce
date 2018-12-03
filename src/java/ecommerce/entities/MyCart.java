package ecommerce.entities;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class MyCart implements Serializable {

    private Map<Products, Integer> cart;
    private double total;

    public MyCart() {
    }

    public void addItem(Products product, int quantity) {
        if (cart == null) {
            cart = new HashMap();
        }
        if (!cart.containsKey(product)) {
            cart.put(product, quantity);
        } else {
            int quan = cart.get(product);
            cart.put(product, quan + quantity);
        }
        computeTotal();
    }

    public void removeItem(Products product) {
        if (cart.containsKey(product)) {
            cart.remove(product);
            computeTotal();
        }
    }

    public void update(int hashCode, int quantity) {
        Products p = getProductByHashCodeInCart(hashCode);
        this.cart.put(p, quantity);
        computeTotal();
    }

    private Products getProductByHashCodeInCart(int hashCode) {
        Set<Products> s = this.cart.keySet();
        Iterator<Products> it = s.iterator();
        while (it.hasNext()) {
            Products p = it.next();
            if (p.hashCode() == hashCode) {
                return p;
            }
        }
        return null;
    }

    private void computeTotal() {
        total = 0;
        for (Map.Entry<Products, Integer> entry : cart.entrySet()) {
            Products key = entry.getKey();
            Integer quantity = entry.getValue();
            total += key.getPrice() * (1 - key.getSaleOff()) * quantity;
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
