/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.struts;

import com.opensymphony.xwork2.ActionContext;
import ecommerce.dao.OrdersDAO;
import ecommerce.dao.ProductsDAO;
import ecommerce.dao.WishlistDAO;
import ecommerce.entities.Accounts;
import ecommerce.entities.Orders;
import ecommerce.entities.Products;
import ecommerce.entities.Wishlist;
import java.util.List;
import java.util.Map;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

/**
 *
 * @author DAT
 */
@Action(value = "Profile")
@Results({
    @Result(name = "success", location = "/profile.jsp")
    ,
        @Result(name = "failed", location = "/login.jsp")
})
public class LoadProfileAction {

    private Accounts dto;
    private List<Orders> listOrders;
    private List<Products> listWishes;
    private String wishlistString;
    private static final String SUCCESS = "success";
    private static final String FAILED = "failed";

    public LoadProfileAction() {
    }

    public String execute() throws Exception {
        String url = FAILED;
        Map session = ActionContext.getContext().getSession();
        dto = (Accounts) session.get("USER");
        if (dto != null) {
            OrdersDAO orderDAO = new OrdersDAO();
            ProductsDAO productDAO = new ProductsDAO();
            listOrders = orderDAO.getOrdersByAcountID(dto.getId());

            //sync wishlist from local storage to database
            WishlistDAO wishlistDAO = new WishlistDAO();
            if (wishlistString != null && !wishlistString.trim().isEmpty()) {
                String[] productIds = wishlistString.split(",");
                for (String productId : productIds) {
                    if (productId != null && !productId.trim().isEmpty()) {
                        try {
                            wishlistDAO.add(new Wishlist(dto.getId(), productId));
                        } catch (Exception ex) {
                        }
                    }
                }
            }

            //get wishlist with product
            listWishes = productDAO.getWishListByAccountID(dto.getId());
            url = SUCCESS;
        }
        return url;
    }

    public String getWishlistString() {
        return wishlistString;
    }

    public void setWishlistString(String wishlistString) {
        this.wishlistString = wishlistString;
    }

    public Accounts getDto() {
        return dto;
    }

    public List<Orders> getListOrders() {
        return listOrders;
    }

    public List<Products> getListWishes() {
        return listWishes;
    }
}
