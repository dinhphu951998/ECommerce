/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.dao;
import ecommerce.dbutils.DBConnection;
import ecommerce.entities.Accounts;
import ecommerce.tools.Utils;
import java.security.NoSuchAlgorithmException;
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
public class AccountDAO {

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

    public Accounts checkLogin(String id, String password) throws NamingException, SQLException, NoSuchAlgorithmException {
        Accounts account = null;
        try {
            conn = DBConnection.makeConnection();
            String sql = "select Id, FirstName, LastName, Email, Phone, Address, Image, RoleID "
                    + "from Accounts "
                    + "where id = ? and password = ?";
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, id);
            pstm.setString(2, password);
            rs = pstm.executeQuery();
            if (rs.next()) {
                String Id = rs.getString("Id");
                String firstName = rs.getString("FirstName");
                String lastName = rs.getString("LastName");
                String email = rs.getString("Email");
                String phone = rs.getString("Phone");
                String address = rs.getString("Address");
                String image = rs.getString("Image");
                String roleId = rs.getString("RoleID");
                account = new Accounts(Id, firstName, lastName, email, phone, password, address, image, roleId);
            }
        } finally {
            closeConnection();
        }
        return account;
    }

    public boolean registerAccount(Accounts account) throws SQLException, NamingException, NoSuchAlgorithmException {
        int result = 0;
        try {
            conn = DBConnection.makeConnection();
            String sql = "insert into Accounts(Id,FirstName,LastName,Email,Password,RoleID)"
                    + " values(?,?,?,?,?,?)";
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, account.getId());
            pstm.setString(2, account.getFirstName());
            pstm.setString(3, account.getLastName());
            pstm.setString(4, account.getEmail());
            pstm.setString(5, Utils.encryptPassword(account.getPassword()));
            pstm.setString(6, account.getRoleID());
            result = pstm.executeUpdate();
        }
        catch (Exception ex){
            return false;
        } finally {
            closeConnection();
        }
        return result > 0;
    }

    public boolean updateAccount(Accounts dto) throws NamingException, SQLException {
        int row = 0;
        try {
            conn = DBConnection.makeConnection();
            if(conn != null) {
                String sql = "Update Accounts Set FirstName = ?, LastName = ?, Email = ?, "
                        + "Phone = ?, Address = ? Where Id = ?";
                pstm = conn.prepareStatement(sql);
                pstm.setString(1, dto.getFirstName());
                pstm.setString(2, dto.getLastName());
                pstm.setString(3, dto.getEmail());
                pstm.setString(4, dto.getPhone());
                pstm.setString(5, dto.getAddress());
                pstm.setString(6, dto.getId());
                row = pstm.executeUpdate();
            }
        } finally {
            closeConnection();
        }
        return row == 1;
    }
    
    public boolean changePassword(Accounts dto) throws NamingException, SQLException, NoSuchAlgorithmException {
        int row = 0;
        try {
            conn = DBConnection.makeConnection();
            if(conn != null) {
                String sql = "Update Accounts Set Password = ? Where Id = ?";
                pstm = conn.prepareStatement(sql);
                pstm.setString(1, Utils.encryptPassword(dto.getPassword()));
                pstm.setString(2, dto.getId());
                row = pstm.executeUpdate();
            }
        } finally {
            closeConnection();
        }
        return row == 1;
    }
    
    public List<Accounts> getTop3Admin() throws NamingException, SQLException {
        List<Accounts> list = null;
        String firstName, lastName, img, id;
        try {
            conn = DBConnection.makeConnection();
            if(conn != null) {
                String sql = "Select Top 3 Id, FirstName, LastName, Image "
                        + "From Accounts Where RoleID = 'AD'";
                pstm = conn.prepareStatement(sql);
                rs = pstm.executeQuery();
                list = new ArrayList<>();
                while(rs.next()) {
                    id = rs.getString("Id");
                    firstName = rs.getString("FirstName");
                    lastName = rs.getString("LastName");
                    img = rs.getString("Image");
                    list.add(new Accounts(id, firstName, lastName, null, null, null, null, img, "AD"));
                }
            }
        } finally {
            closeConnection();
        }
        return list;
    }
}
