/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.dao;

import ecommerce.dbutils.DBConnection;
import ecommerce.entities.Messages;
import ecommerce.entities.Orders;
import ecommerce.entities.Products;
import ecommerce.tools.Utils;
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
 * @author thanh
 */
public class MessagesDAO implements Serializable {

    private Connection conn;
    private PreparedStatement pstm;
    private ResultSet rs;

    private void closeConnection() throws SQLException {
        if (rs != null) {
            rs.close();
        }
        if (pstm != null) {
            pstm.close();
        }
        if (conn != null) {
            conn.close();
        }
    }

    public boolean sendCustomerQuestion(String name, String email, String message, String accountId) throws SQLException {
        int result = 0;
        try {
            conn = DBConnection.makeConnection();
            String sql = "insert into Messages(Name,Email,Message,AccountId,IsAnswered,Status)"
                    + " values(?,?,?,?,?,?)";
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, name);
            pstm.setString(2, email);
            pstm.setString(3, message);
            pstm.setString(4, accountId);
            pstm.setBoolean(5, false);
            pstm.setBoolean(6, false);
            result = pstm.executeUpdate();
        } catch (SQLException | NamingException ex) {
            return false;
        } finally {
            closeConnection();
        }
        return result > 0;
    }

    public List<Messages> getListPublishedMessages() throws NamingException, SQLException {
        List<Messages> list = null;
        try {
            conn = DBConnection.makeConnection();
            if (conn != null) {
                String sql = "Select ID, Message, Answer "
                        + " From Messages"
                        + " Where IsAnswered = ?"
                        + " AND Status = ?";
                pstm = conn.prepareStatement(sql);
                pstm.setBoolean(1, true);
                pstm.setBoolean(2, true);
                rs = pstm.executeQuery();
                while (rs.next()) {
                    if (list == null) {
                        list = new ArrayList<>();
                    }
                    Messages tmpMessage = new Messages();
                    tmpMessage.setMessage(rs.getString("Message"));
                    tmpMessage.setAnswer(rs.getString("Answer"));
                    list.add(tmpMessage);
                }
            }
        } finally {
            closeConnection();
        }
        return list;
    }

}
