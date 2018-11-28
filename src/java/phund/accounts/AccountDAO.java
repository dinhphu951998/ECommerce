/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package phund.accounts;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.naming.NamingException;
import phund.dbutils.DBConnection;

/**
 *
 * @author PhuNDSE63159
 */
public class AccountDAO implements Serializable {

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

    public Accounts checkLogin(String id, String password) throws NamingException, SQLException {
        Accounts account = null;
        try {
            conn = DBConnection.makeConnection();
            String sql = "select Id, FirstName, LastName, Email, Phone, Address, Image, RoleID "
                    + "from Accounts "
                    + "where Id = ? and password = ?";
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, id);
            pstm.setString(2, password);
            rs = pstm.executeQuery();
            if (rs.next()) {
                String Id = rs.getString("ID");
                String firstName = rs.getString("FirstName");
                String lastName = rs.getString("LastName");
                String email = rs.getString("Email");
                String phone = rs.getString("Phone");
                String address = rs.getString("Address");
                String image = rs.getString("Image");
                String roleId = rs.getString("RoleID");
                account = new Accounts(Id, firstName, lastName, email, phone, address, image, roleId);
            }
        } finally {
            closeConnection();
        }
        return account;
    }

}
