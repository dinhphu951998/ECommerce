/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.dao;

import ecommerce.dbutils.DBConnection;
import ecommerce.entities.Products;
import ecommerce.temporary.BaseDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import javax.naming.NamingException;

/**
 *
 * @author PhuNDSE63159
 */
public class ProductsDAO extends BaseDAO<Products> {

    private Connection conn;
    private PreparedStatement pstm;
    private ResultSet rs;

    public ProductsDAO() {
        super(Products.class);
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

    public Products getProductsById(String Id) throws SQLException, NamingException {
        Products product = null;
        try {
            String sql = "select Id, Name, Price, CategoryID, Image1, Image2, "
                    + "Image3, Image4, Manufacturer, Description, ShortDescription, "
                    + "OtherInfo, Stock, DateArrivals, SaleOff, AttVal1, AttVal2, "
                    + "AttVal3, AttVal4, AttVal5, AttVal6, AttVal7, AttVal8, AttVal9, "
                    + "AttVal10, RatingScore, NumOfRates from Products where Id = ?";
            conn = DBConnection.makeConnection();
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, Id);
            rs = pstm.executeQuery();
            if (rs.next()) {
                String name = rs.getString("Name");
                double price = rs.getDouble("price");
                int categoryID = rs.getInt("CategoryID");
                String image1 = rs.getString("Image1");
                String image2 = rs.getString("Image2");
                String image3 = rs.getString("Image3");
                String image4 = rs.getString("Image4");
                String manufacturer = rs.getString("Manufacturer");
                String description = rs.getString("Description");
                String shortDescription = rs.getString("ShortDescription");
                String otherInfo = rs.getString("OtherInfo");
                int stock = rs.getInt("Stock");
                Timestamp dateArrivals = rs.getTimestamp("DateArrivals");
                double saleOff = rs.getDouble("SaleOff");
                String attVal1 = rs.getString("AttVal1");
                String attVal2 = rs.getString("AttVal2");
                String attVal3 = rs.getString("AttVal3");
                String attVal4 = rs.getString("AttVal4");
                String attVal5 = rs.getString("AttVal5");
                String attVal6 = rs.getString("AttVal6");
                String attVal7 = rs.getString("AttVal7");
                String attVal8 = rs.getString("AttVal8");
                String attVal9 = rs.getString("AttVal9");
                String attVal10 = rs.getString("AttVal10");
                int ratingScore = rs.getInt("RatingScore");
                int numOfRates = rs.getInt("NumOfRates");
                product = new Products(Id, name, price, categoryID, image1, image2, image3, image4,
                        manufacturer, description, shortDescription, otherInfo, stock, dateArrivals, saleOff,
                        attVal1, attVal2, attVal3, attVal4, attVal5, attVal6, attVal7, attVal8, attVal9, attVal10,
                        ratingScore, numOfRates);
            }
        } finally {
            closeConnection();
        }
        return product;
    }
    
    
    public List<Products> getRelatedProductByCategoryId(int categoryId) throws SQLException, NamingException{
        List<Products> products = null;
        try{
            String sql = "select top 4 Id, Name, Price, CategoryID, Image1, Image2, "
                    + "Image3, Image4, Manufacturer, Description, ShortDescription, "
                    + "OtherInfo, Stock, DateArrivals, SaleOff, AttVal1, AttVal2, "
                    + "AttVal3, AttVal4, AttVal5, AttVal6, AttVal7, AttVal8, AttVal9, "
                    + "AttVal10, RatingScore, NumOfRates from Products where CategoryID = ?";
            conn = DBConnection.makeConnection();
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, categoryId);
            rs = pstm.executeQuery();
            while (rs.next()) {
                String id = rs.getString("Id");
                String name = rs.getString("Name");
                double price = rs.getDouble("price");
                String image1 = rs.getString("Image1");
                String image2 = rs.getString("Image2");
                String image3 = rs.getString("Image3");
                String image4 = rs.getString("Image4");
                String manufacturer = rs.getString("Manufacturer");
                String description = rs.getString("Description");
                String shortDescription = rs.getString("ShortDescription");
                String otherInfo = rs.getString("OtherInfo");
                int stock = rs.getInt("Stock");
                Timestamp dateArrivals = rs.getTimestamp("DateArrivals");
                double saleOff = rs.getDouble("SaleOff");
                String attVal1 = rs.getString("AttVal1");
                String attVal2 = rs.getString("AttVal2");
                String attVal3 = rs.getString("AttVal3");
                String attVal4 = rs.getString("AttVal4");
                String attVal5 = rs.getString("AttVal5");
                String attVal6 = rs.getString("AttVal6");
                String attVal7 = rs.getString("AttVal7");
                String attVal8 = rs.getString("AttVal8");
                String attVal9 = rs.getString("AttVal9");
                String attVal10 = rs.getString("AttVal10");
                int ratingScore = rs.getInt("RatingScore");
                int numOfRates = rs.getInt("NumOfRates");
                Products product = new Products(id, name, price, categoryId, image1, image2, image3, image4,
                        manufacturer, description, shortDescription, otherInfo, stock, dateArrivals, saleOff,
                        attVal1, attVal2, attVal3, attVal4, attVal5, attVal6, attVal7, attVal8, attVal9, attVal10,
                        ratingScore, numOfRates);
                if(products == null){
                    products = new LinkedList<>();
                }
                products.add(product);
            }
        }finally{
            closeConnection();
        }
        return products;
    }
            
    public List<Products> getBanners() throws NamingException, SQLException {
        List<Products> list = null;
        String id, name, img;
        float price, saleOff;
        try {
            conn = phund.dbutils.DBConnection.makeConnection();
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
            conn = phund.dbutils.DBConnection.makeConnection();
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
            conn = phund.dbutils.DBConnection.makeConnection();
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
            conn = phund.dbutils.DBConnection.makeConnection();
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
            conn = phund.dbutils.DBConnection.makeConnection();
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
}
