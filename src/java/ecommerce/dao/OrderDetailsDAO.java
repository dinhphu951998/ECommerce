/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.dao;

import ecommerce.entities.OrderDetails;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author PhuNDSE63159
 */
public class OrderDetailsDAO implements Serializable {

    private Connection conn;
    private PreparedStatement preStm;
    private ResultSet rs;

    public OrderDetailsDAO() {
    }

    public OrderDetailsDAO(Connection conn) {
        this.conn = conn;
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

    public void add(OrderDetails detail) throws SQLException {
        try {
            //using transaction to add to database, connection will be passed into
            //connection close outside
            if (conn != null) {
                String sql = "insert into OrderDetails(OrderID, ProductID, Quantity, Price, SaleOff) values(?,?,?,?,?)";
                preStm = conn.prepareStatement(sql);
                preStm.setString(1, detail.getOrderID());
                preStm.setString(2, detail.getProductID());
                preStm.setInt(3, detail.getQuantity());
                preStm.setDouble(4, detail.getPrice());
                preStm.setDouble(5, detail.getSaleOff());
                preStm.executeUpdate();
            }
        } finally {
            if (preStm != null) {
                preStm.close();
            }
        }
    }
}
