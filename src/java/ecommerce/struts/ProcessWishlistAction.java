/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.struts;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import ecommerce.dao.WishlistDAO;
import ecommerce.entities.Accounts;
import ecommerce.entities.Wishlist;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Map;

/**
 *
 * @author PhuNDSE63159
 */
public class ProcessWishlistAction {

    private String productId;
    private InputStream stream;
    private boolean isRemove;
    private final String REMOVE = "remove";

    public ProcessWishlistAction() {
    }

    public String execute() throws Exception {
        String url = Action.SUCCESS;
        Map session = ActionContext.getContext().getSession();
        Accounts user = (Accounts) session.get("USER");
        if (user != null) {
            WishlistDAO dao = new WishlistDAO();
            try {
                dao.add(new Wishlist(user.getId(), productId));
            } catch (Exception ex) {
                dao.deletePermanently(new Wishlist(user.getId(), productId));
            }
        } else {
            url = Action.LOGIN;
        }
        stream = new ByteArrayInputStream(url.getBytes());
        if(isRemove){
            return REMOVE;
        }
        return "success";
    }

    public String check() throws Exception {
        String url = Action.INPUT;
        boolean result = false;
        Map session = ActionContext.getContext().getSession();
        Accounts user = (Accounts) session.get("USER");
        if (user != null) {
            WishlistDAO dao = new WishlistDAO();
            result = dao.checkInWishlist(new Wishlist(user.getId(), productId));
            if(result){
                url = Action.SUCCESS;
            }
        } 
        stream = new ByteArrayInputStream(url.getBytes());
        return "success";
    }

    public boolean isIsRemove() {
        return isRemove;
    }

    public void setIsRemove(boolean isRemove) {
        this.isRemove = isRemove;
    }

    
    
    public InputStream getStream() {
        return stream;
    }

    public void setStream(InputStream stream) {
        this.stream = stream;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

}
