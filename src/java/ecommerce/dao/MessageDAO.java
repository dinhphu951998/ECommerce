/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.dao;

import ecommerce.dbutils.DBConnection;
import ecommerce.entities.Contacts;
import ecommerce.entities.Messages;
import ecommerce.temporary.BaseDAO;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.naming.NamingException;

/**
 *
 * @author PhuNDSE63159
 */
public class MessageDAO extends BaseDAO<Messages> implements Serializable {

    private Connection conn;
    private PreparedStatement pstm;
    private ResultSet rs;

    public MessageDAO() {
        super(Messages.class);
    }

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

    @Override
    public void add(Messages entity) throws SQLException, NamingException, IllegalArgumentException, IllegalAccessException {
        try {
            conn = DBConnection.makeConnection();
            String sql = "insert into Messages(Name, Email, Message, Status) values(?,?,?,?)";
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, entity.getName());
            pstm.setString(2, entity.getEmail());
            pstm.setString(3, entity.getMessage());
            pstm.setInt(4, entity.getStatus());
            pstm.executeUpdate();
        } finally {
            closeConnection();
        }
    }

}
