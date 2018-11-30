package ecommerce.products;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import ecommerce.entities.Categories;
import ecommerce.entities.Products;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.naming.NamingException;
import ecommerce.temporary.BaseDAO;
import java.util.ArrayList;
import phund.dbutils.DBConnection;
import sun.reflect.generics.reflectiveObjects.NotImplementedException;

/**
 *
 * @author PhuNDSE63159
 */
public class ProductsDAO extends BaseDAO<Products>{
    private Connection conn;
    private PreparedStatement pstm;
    private ResultSet rs;

    public ProductsDAO() {
        super(Products.class);
    }
    
    
    private void closeConnection() throws SQLException{
        if(rs != null){
            rs.close();
        }
        if(pstm != null){
            pstm.close();
        }
        if(conn != null){
            conn.close();
        }
    }
    
    public List<Products> getProducts() throws SQLException, NamingException{
        throw new NotImplementedException();
    }
    
    public List<Products> getBanners() throws NamingException, SQLException {
        List<Products> list = null;
        String id, name, img;
        float price, saleOff;
        try {
            conn = DBConnection.makeConnection();
            if(conn != null) {
                String sql = "Select p.Id, p.Name, p.Price, p.SaleOff, b.Image " +
                             "From Products p JOIN Banners b " +
                             "ON p.Id = b.ProductID";
                pstm = conn.prepareStatement(sql);
                rs = pstm.executeQuery();
                list = new ArrayList<>();
                while(rs.next()) {
                     id = rs.getString("Id");
                     name = rs.getString("Name");
                     price = rs.getFloat("Price");
                     saleOff = rs.getFloat("SaleOff");
                     img = rs.getString("Image");
                     Products p = new Products();
                     p.setId(id);
                     p.setName(name);
                     p.setPrice(price);
                     p.setSaleOff(saleOff);
                     p.setImage1(img);
                     list.add(p);
                }
            }
        } finally {
            closeConnection();
        }
        return list;
    }
    
    public List<Products> getTop8NewestSaling() throws NamingException, SQLException {
        List<Products> list = null;
        String id, name, img;
        double price, saleOff;
        try {
            conn = DBConnection.makeConnection();
            if(conn != null) {
                String sql = "Select Top 8 Id, Name, Price, SaleOff, Image1 From Products "
                        + "Where SaleOff > 0 "
                        + "Order by DateArrivals DESC";
                pstm = conn.prepareStatement(sql);
                rs = pstm.executeQuery();
                list = new ArrayList<>();
                while(rs.next()) {
                     id = rs.getString("Id");
                     name = rs.getString("Name");
                     price = rs.getDouble("Price");
                     saleOff = rs.getDouble("SaleOff");
                     img = rs.getString("Image1");
                     Products p = new Products();
                     p.setId(id);
                     p.setName(name);
                     p.setPrice((float) price);
                     p.setSaleOff((float) saleOff);
                     p.setImage1(img);
                     list.add(p);
                }
            }
        } finally {
            closeConnection();
        }
        return list;
    }
    
    public List<Products> getTop8Newest() throws NamingException, SQLException {
        List<Products> list = null;
        String id, name, img;
        double price, saleOff;
        try {
            conn = DBConnection.makeConnection();
            if(conn != null) {
                String sql = "Select Top 8 Id, Name, Price, SaleOff, Image1 From Products "
                        + "Order by DateArrivals DESC";
                pstm = conn.prepareStatement(sql);
                rs = pstm.executeQuery();
                list = new ArrayList<>();
                while(rs.next()) {
                     id = rs.getString("Id");
                     name = rs.getString("Name");
                     price = rs.getDouble("Price");
                     saleOff = rs.getDouble("SaleOff");
                     img = rs.getString("Image1");
                     Products p = new Products();
                     p.setId(id);
                     p.setName(name);
                     p.setPrice((float) price);
                     p.setSaleOff((float) saleOff);
                     p.setImage1(img);
                     list.add(p);
                }
            }
        } finally {
            closeConnection();
        }
        return list;
    }
    
    public List<Products> getTop8Rating() throws NamingException, SQLException {
        List<Products> list = null;
        String id, name, img;
        double price, saleOff;
        int rate;
        try {
            conn = DBConnection.makeConnection();
            if(conn != null) {
                String sql = "Select Top 8 Id, Name, Image1, Price, SaleOff, RatingScore/NumOfRates As Rate " +
                             "From Products " +
                             "Order by RatingScore/NumOfRates DESC";
                pstm = conn.prepareStatement(sql);
                rs = pstm.executeQuery();
                list = new ArrayList<>();
                while(rs.next()) {
                     id = rs.getString("Id");
                     name = rs.getString("Name");
                     price = rs.getDouble("Price");
                     saleOff = rs.getDouble("SaleOff");
                     img = rs.getString("Image1");
                     rate = rs.getInt("Rate");
                     Products p = new Products();
                     p.setId(id);
                     p.setName(name);
                     p.setPrice((float) price);
                     p.setSaleOff((float) saleOff);
                     p.setImage1(img);
                     p.setRatingScore(rate);
                     list.add(p);
                }
            }
        } finally {
            closeConnection();
        }
        return list;
    }
    
    public Products getHighestOffer() throws NamingException, SQLException {
        Products product = null;
        String id, name, img;
        float price, saleOff;
        try {
            conn = DBConnection.makeConnection();
            if(conn != null) {
                String sql = "Select Top 1 Id, Name, Price, SaleOff, Image1 "
                        + "From Products "
                        + "Order by SaleOff DESC";
                pstm = conn.prepareStatement(sql);
                rs = pstm.executeQuery();
                if(rs.next()) {
                    id = rs.getString("Id");
                    name = rs.getString("Name");
                    price = rs.getFloat("Price");
                    saleOff = rs.getFloat("SaleOff");
                    img = rs.getString("Image1");
                    product = new Products();
                    product.setId(id);
                    product.setName(name);
                    product.setPrice(price);
                    product.setSaleOff(saleOff);
                    product.setImage1(img);
                }
            }
        } finally {
            closeConnection();
        }
        return product;
    }
    
    public List<Categories> getTop4MostSold() throws NamingException, SQLException {
        List<Categories> list = null;
        int id;
        String name;
        try {
            conn = DBConnection.makeConnection();
            if(conn != null){
              String sql = "Select Top 4 Id, Name " +
                           "From Categories " +
                           "Where Id in (   Select Top 2147483647 p.CategoryID " +
                                            "From Products p JOIN OrderDetails od " +
                                                "ON p.Id = od.ProductID " +
                                            "Where od.OrderID in (  Select ID " +
                                                                    "From Orders " +
                                                                    "Where Month(DatePurchased) = Month(CURRENT_TIMESTAMP)) " +
                                            "Group by p.CategoryID " +
                                            "Order by sum(od.Quantity) DESC	)";
              pstm = conn.prepareStatement(sql);
              rs = pstm.executeQuery();
              list = new ArrayList<>();
              while(rs.next()) {
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
}
