/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package phund.products;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author PhuNDSE63159
 */
public class ProductDAO implements Serializable{
    private Connection conn;
    private PreparedStatement pstm;
    private ResultSet rs;
    
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
    
    
    public List<ProductDTO> getProducts(){
        List<ProductDTO> products = null;
        
        
        
        return products;
    }
    
    
    
    
}
