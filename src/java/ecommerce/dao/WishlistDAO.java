/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.dao;

import ecommerce.dbutils.DBConnection;
import ecommerce.entities.Products;
import ecommerce.entities.Wishlist;
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
public class WishlistDAO extends BaseDAO<Wishlist> implements Serializable {

    private Connection conn;
    private PreparedStatement pstm;
    private ResultSet rs;

    public WishlistDAO() {
        super(Wishlist.class);
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
    public void deletePermanently(Wishlist entity) throws SQLException, NamingException, IllegalArgumentException, IllegalAccessException {
        try {
            String sql = "delete from Wishlist where accountId = ? and productId = ? ";
            conn = DBConnection.makeConnection();
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, entity.getAccountID());
            pstm.setString(2, entity.getProductID());
            pstm.executeUpdate();
        } finally {
            closeConnection();
        }
    }

    public boolean checkInWishlist(Wishlist entity) throws NamingException, SQLException {
        try {
            String sql = "select * from Wishlist where accountId = ? and productId = ? ";
            conn = DBConnection.makeConnection();
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, entity.getAccountID());
            pstm.setString(2, entity.getProductID());
            rs = pstm.executeQuery();
            if (rs.next()) {
                return true;
            }
        } finally {
            closeConnection();
        }
        return false;
    }

}
