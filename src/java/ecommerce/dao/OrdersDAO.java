/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.dao;

import ecommerce.dbutils.DBConnection;
import ecommerce.entities.MyCart;
import ecommerce.entities.OrderDetails;
import ecommerce.entities.Orders;
import ecommerce.entities.Products;
import ecommerce.temporary.BaseDAO;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.naming.NamingException;

/**
 *
 * @author DAT
 */
public class OrdersDAO extends BaseDAO<Orders> implements Serializable {

    private Connection conn;
    private PreparedStatement preStm;
    private ResultSet rs;

    public OrdersDAO() {
        super(Orders.class);
    }

    private void closeConnection() throws SQLException {
        if (rs != null) {
            rs.close();
        }
        if (preStm != null) {
            preStm.close();
        }
        if (conn != null) {
            conn.close();
        }
    }

    public List<Orders> getOrdersByAcountID(String accountID) throws NamingException, SQLException {
        List<Orders> list = null;
        String id, status;
        Timestamp datePurchased;
        float total;
        try {
            conn = DBConnection.makeConnection();
            if (conn != null) {
                String sql = "Select ID, DatePurchased, Status, Total "
                        + "From Orders Where AccountID = ?";
                preStm = conn.prepareStatement(sql);
                preStm.setString(1, accountID);
                rs = preStm.executeQuery();
                list = new ArrayList<>();
                while (rs.next()) {
                    id = rs.getString("ID");
                    datePurchased = rs.getTimestamp("DatePurchased");
                    status = rs.getString("Status");
                    total = rs.getFloat("Total");
                    list.add(new Orders(id, accountID, datePurchased, status, total, null, null, null, null));
                }
            }
        } finally {
            closeConnection();
        }
        return list;
    }

    public List<Orders> getAddressesInOrder(String accountId) throws NamingException, SQLException {
        List<Orders> addresses = null;
        try {
            conn = DBConnection.makeConnection();
            if (conn != null) {
                String sql = "select distinct Name, Phone, Address, Email "
                + "from Orders "
                + "where AccountID = ?";
                preStm = conn.prepareStatement(sql);
                preStm.setString(1, accountId);
                rs = preStm.executeQuery();
                while (rs.next()) {
                    if(addresses == null){
                        addresses = new ArrayList<>();
                    }
                    String name = rs.getString("Name");
                    String phone = rs.getString("Phone");
                    String address = rs.getString("Address");
                    String email = rs.getString("Email");
                    addresses.add(new Orders(null, accountId, null, null, 0, name, phone, address, email));
                }
            }
        } finally {
            closeConnection();
        }
        return addresses;
    }

    public boolean addNewOrderAndDetails(MyCart myShoppingCart, Orders order) throws SQLException, NamingException{
        boolean result = false;
        try{
            conn = DBConnection.makeConnection();
            conn.setAutoCommit(false);
            //add order
            String sql = "insert into Orders(ID, AccountID, Status, Total, Name, "
                    + "Phone, Address, Email) values(?, ?, ?, ?, ?, ?, ? ,?)";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, order.getID());
            preStm.setString(2, order.getAccountID());
            preStm.setString(3, order.getStatus());
            preStm.setDouble(4, order.getTotal());
            preStm.setString(5, order.getName());
            preStm.setString(6, order.getPhone());
            preStm.setString(7, order.getAddress());
            preStm.setString(8, order.getEmail());
            preStm.executeUpdate();
            //add order details
            Map<Products, Integer> cart = myShoppingCart.getCart();
            OrderDetailsDAO orderDetailsDAO = new OrderDetailsDAO(conn);
            for (Map.Entry<Products, Integer> entry : cart.entrySet()) {
                Products key = entry.getKey();
                Integer quantity = entry.getValue();
                orderDetailsDAO.add(new OrderDetails(order.getID(), key.getId(), quantity, key.getPrice(), key.getSaleOff()));
            }
            conn.commit();
        }finally{
            closeConnection();
        }
        return result;
    }
    
}
