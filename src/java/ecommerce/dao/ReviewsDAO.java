/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.dao;

import ecommerce.customdto.ReviewDTO;
import ecommerce.dbutils.DBConnection;
import ecommerce.entities.Orders;
import ecommerce.entities.Reviews;
import ecommerce.temporary.BaseDAO;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.naming.NamingException;

/**
 *
 * @author thanh
 */
public class ReviewsDAO extends BaseDAO<Reviews> implements Serializable {

    private Connection conn;
    private PreparedStatement preStm;
    private ResultSet rs;

    public ReviewsDAO() {
        super(Reviews.class);
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

    public boolean checkWasReviewed(String accountId, String productId) throws NamingException, SQLException {
        try {
            conn = DBConnection.makeConnection();
            //add order
            String sql = "select Id\n"
                    + "from Reviews\n"
                    + "where ProductId=? AND AccountId=?;";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, productId);
            preStm.setString(2, accountId);
            rs = preStm.executeQuery();
            if (rs.next()) {
                return true;
            }
        } finally {
            closeConnection();
        }
        return false;
    }

    public boolean addReview(String accountId, String productId, int rating, String reviewTitle, String reviewContent) throws SQLException, NamingException {
        try {
            conn = DBConnection.makeConnection();
            if (conn != null) {
                String sql = "insert into Reviews(ProductId,AccountId,Rating,Title,Content)\n"
                        + "values(?,?,?,?,?) ";
                preStm = conn.prepareStatement(sql);
                preStm.setString(1, productId);
                preStm.setString(2, accountId);
                preStm.setInt(3, rating);
                preStm.setString(4, reviewTitle);
                preStm.setString(5, reviewContent);
                int result = preStm.executeUpdate();
                return result > 0;
            }
        } finally {
            closeConnection();
        }
        return false;
    }

    public List<ReviewDTO> getAllReviewDTO(String Id) throws NamingException, SQLException {
        List<ReviewDTO> list = null;
        try {
            conn = DBConnection.makeConnection();
            if (conn != null) {
                String sql = "select r.Id,r.Title,r.Content,r.Rating,a.LastName,a.Image\n"
                        + "from Reviews r join Accounts a on r.AccountId=a.Id \n"
                        + "where r.ProductId =  ?";
                preStm = conn.prepareStatement(sql);
                preStm.setString(1, Id);
                rs = preStm.executeQuery();
                while (rs.next()) {
                    if (list == null) {
                        list = new ArrayList<>();
                    }
                    ReviewDTO tmpReviewDTO = new ReviewDTO();
                    tmpReviewDTO.setId(rs.getInt("Id"));
                    tmpReviewDTO.setTitle(rs.getString("Title"));
                    tmpReviewDTO.setContent(rs.getString("Content"));
                    tmpReviewDTO.setRating(rs.getInt("Rating"));
                    tmpReviewDTO.setAccountName(rs.getString("LastName"));
                    tmpReviewDTO.setAccountImage(rs.getString("Image"));
                    list.add(tmpReviewDTO);
                }
            }
        } finally {
            closeConnection();
        }
        return list;
    }

}
