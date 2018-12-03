/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.dao;

import ecommerce.dbutils.DBConnection;
import ecommerce.entities.Orders;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import javax.naming.NamingException;

/**
 *
 * @author DAT
 */
public class OrdersDAO implements Serializable {
    private Connection conn;
    private PreparedStatement preStm;
    private ResultSet rs;

    public OrdersDAO() {
    }
    
    private void closeConnection() throws SQLException {
        if(rs != null) {
            rs.close();
        }
        if(preStm != null) {
            preStm.close();
        }
        if(conn != null) {
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
            if(conn != null) {
                String sql = "Select ID, DatePurchased, Status, Total "
                        + "From Orders Where AccountID = ?";
                preStm = conn.prepareStatement(sql);
                preStm.setString(1, accountID);
                rs = preStm.executeQuery();
                list = new ArrayList<>();
                while(rs.next()) {
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
    
    public Orders getOrdersByID(String orderID) throws NamingException, SQLException {
        Orders order = null;
        String id, status, name, phone, address;
        Timestamp datePurchased;
        float total;
        try {
            conn = DBConnection.makeConnection();
            if(conn != null) {
                String sql = "Select ID, DatePurchased, Status, Total, Name, Phone, Address "
                        + "From Orders Where ID = ?";
                preStm = conn.prepareStatement(sql);
                preStm.setString(1, orderID);
                rs = preStm.executeQuery();
                while(rs.next()) {
                    id = rs.getString("ID");
                    name = rs.getString("Name");
                    phone = rs.getString("Phone");
                    address = rs.getString("Address");
                    datePurchased = rs.getTimestamp("DatePurchased");
                    status = rs.getString("Status");
                    total = rs.getFloat("Total");
                    order = new Orders(id, null, datePurchased, status, total, name, phone, address, null);
                }
            }
        } finally {
            closeConnection();
        }
        return order;
    }
}
