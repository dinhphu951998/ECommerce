/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.dao;

import ecommerce.dbutils.DBConnection;
import ecommerce.entities.Contacts;
import ecommerce.entities.Products;
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
public class ContactDAO implements Serializable{
    private Connection conn;
    private PreparedStatement pstm;
    private ResultSet rs;

    public ContactDAO() {
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
    
    public Contacts getNewestContact() throws NamingException, SQLException{
        Contacts contact = null;
        try{
            conn = DBConnection.makeConnection();
            String sql = "select top 1 Id, Address, LandLine, CellPhone, Email, "
                    + "Skype, Facebook, Gmail, Twitter, Instagram, Working "
                    + "from Contacts "
                    + "order by Id desc";
            pstm = conn.prepareStatement(sql);
            rs = pstm.executeQuery();
            if(rs.next()){
                int id = rs.getInt("Id");
                String address = rs.getString("Address");
                String landLine = rs.getString("LandLine");
                String cellPhone = rs.getString("CellPhone");
                String email = rs.getString("Email");
                String skype = rs.getString("Skype");
                String facebook = rs.getString("Facebook");
                String gmail = rs.getString("Gmail");
                String twitter = rs.getString("Twitter");
                String instagram = rs.getString("Instagram");
                String working = rs.getString("Working");
                contact = new Contacts(id, address, landLine, cellPhone, email, skype, 
                                        facebook, gmail, twitter, instagram, working, null);
            }
        }finally{
            closeConnection();
        }
        return contact;
    }
    
    
}
