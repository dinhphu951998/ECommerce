/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.dao;

import ecommerce.dbutils.DBConnection;
import ecommerce.entities.Categories;
import ecommerce.temporary.BaseDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.naming.NamingException;

/**
 *
 * @author PhuNDSE63159
 */
public class CategoriesDAO extends BaseDAO<Categories> {

    private Connection conn;
    private PreparedStatement pstm;
    private ResultSet rs;

    public CategoriesDAO() {
        super(Categories.class);
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

    public Categories getCategoryById(int Id) throws SQLException, NamingException {
        Categories category = null;
        try {
            String sql = "select Id, Name, AttName1, AttName2, AttName3, AttName4, AttName5, AttName6, "
                    + "AttName7, AttName8, AttName9, AttName10 "
                    + "from Categories "
                    + "where Id = ? ";
            conn = DBConnection.makeConnection();
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, Id);
            rs = pstm.executeQuery();
            if (rs.next()) {
                String name = rs.getString("name");
                String att1 = rs.getString("AttName1");
                String att2 = rs.getString("AttName2");
                String att3 = rs.getString("AttName3");
                String att4 = rs.getString("AttName4");
                String att5 = rs.getString("AttName5");
                String att6 = rs.getString("AttName6");
                String att7 = rs.getString("AttName7");
                String att8 = rs.getString("AttName8");
                String att9 = rs.getString("AttName9");
                String att10 = rs.getString("AttName10");
                category = new Categories(Id, name, att1, att2, att3, att4, att5, att6, att7, att8, att9, att10);
            }
        } finally {
            closeConnection();
        }
        return category;
    }

    public List<Categories> getTop4MostSold() throws NamingException, SQLException {
        List<Categories> list = null;
        int id;
        String name;
        try {
            conn = DBConnection.makeConnection();
            if (conn != null) {
                String sql = "Select Top 4 Id, Name "
                        + "From Categories "
                        + "Where Id in (   Select Top 2147483647 p.CategoryID "
                        + "From Products p JOIN OrderDetails od "
                        + "ON p.Id = od.ProductID "
                        + "Where od.OrderID in (  Select ID "
                        + "From Orders "
                        + "Where Month(DatePurchased) = Month(CURRENT_TIMESTAMP)) "
                        + "Group by p.CategoryID "
                        + "Order by sum(od.Quantity) DESC	)";
                pstm = conn.prepareStatement(sql);
                rs = pstm.executeQuery();
                list = new ArrayList<>();
                while (rs.next()) {
                    id = rs.getInt("Id");
                    name = rs.getString("Name");
                    Categories c = new Categories();
                    c.setId(id);
                    c.setName(name);
                    list.add(c);
                }
            }
        } finally {
            closeConnection();
        }
        return list;
    }

    public List<Categories> getAllCategoriesIdAndName() throws SQLException, NamingException {
        List<Categories> list = null;
        try {
            conn = DBConnection.makeConnection();
            if (conn != null) {
                String sql = "select Id,Name\n"
                        + "from Categories";
                pstm = conn.prepareStatement(sql);
                rs = pstm.executeQuery();
                while (rs.next()) {
                    if (list == null) {
                        list = new ArrayList<>();
                    }
                    Categories tmpCate = new Categories();
                    tmpCate.setId(rs.getInt("Id"));
                    tmpCate.setName(rs.getString("Name"));
                    list.add(tmpCate);
                }
            }
        } finally {
            closeConnection();
        }
        return list;
    }
}
