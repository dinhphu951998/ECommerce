/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.products;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.naming.NamingException;
import ecommerce.temporary.BaseDAO;
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
    
}
