/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.struts;

import com.google.gson.Gson;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import ecommerce.dao.OrdersDAO;
import ecommerce.entities.Accounts;
import ecommerce.entities.MyCart;
import ecommerce.entities.Orders;
import ecommerce.tools.SendingEmail;
import ecommerce.tools.Utils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Timestamp;
import java.util.List;
import java.util.Map;
import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author PhuNDSE63159
 */
public class ProcessCheckoutAction {

    private List<Orders> addresses;
    private double total;
    private InputStream stream;
    private String name;
    private String phone;
    private String email;
    private String address;
    private Orders order;
    private String orderId;

    public ProcessCheckoutAction() {
    }

    public String loadCheckoutForm() throws Exception {
        String url = Action.SUCCESS;
        Map session = ActionContext.getContext().getSession();
        Accounts user = (Accounts) session.get("USER");
        MyCart cart = (MyCart) session.get("CART");
        setTotal(cart.getTotal());
        if (user != null) {
            OrdersDAO dao = new OrdersDAO();
            setAddresses(dao.getAddressesInOrder(user.getId()));
        }
        return url;
    }

    public String checkout() throws Exception {
        String url = Action.SUCCESS;
        Map session = ActionContext.getContext().getSession();
        Accounts user = (Accounts) session.get("USER");
        MyCart myShoppingCart = (MyCart) session.get("CART");
        if (myShoppingCart != null) {
            String userId = null;
            if (user != null) {
                userId = user.getId();
            }
            OrdersDAO dao = new OrdersDAO();
            orderId = Utils.getDynamicId();
            order = new Orders(orderId, userId, new Timestamp(System.currentTimeMillis()),
                    "Waiting for confirm", myShoppingCart.getTotal(), name, phone, address, email);
            dao.addNewOrderAndDetails(myShoppingCart, order);

        } else {
            throw new Exception("Your shopping cart is empty");
        }

        //send email to confirm
        sendEmail(myShoppingCart);
        session.remove("CART");
        return url;
    }

    private void sendEmail(MyCart cart) throws MessagingException, ServletException, IOException {
        String subject = "[MStore] Confirm the order #" + orderId;
        HttpServletRequest request = ServletActionContext.getRequest();
        String url = request.getRequestURL().toString();
        int lastIndex = url.lastIndexOf("/");
        url = url.substring(0, lastIndex) + "/GetCartTextEmail";
        SendingEmail email = new SendingEmail("dongphan24@gmail.com", "dongphan987654321", this.email,
                                                subject, url, orderId);
        Thread t = new Thread(email);
        t.start();
    }

    public String getAddress() throws Exception {
        Map session = ActionContext.getContext().getSession();
        Accounts user = (Accounts) session.get("USER");
        user.setPassword(null);
        Gson gson = new Gson();
        String result = gson.toJson(user);
        setStream(new ByteArrayInputStream(result.getBytes("UTF-8")));
        return Action.SUCCESS;
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

    public InputStream getStream() {
        return stream;
    }

    public void setStream(InputStream stream) {
        this.stream = stream;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public List<Orders> getAddresses() {
        return addresses;
    }

    public void setAddresses(List<Orders> addresses) {
        this.addresses = addresses;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the phone
     */
    public String getPhone() {
        return phone;
    }

    /**
     * @param phone the phone to set
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

}
