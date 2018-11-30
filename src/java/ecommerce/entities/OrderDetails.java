/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.entities;

import java.io.Serializable;

/**
 *
 * @author thanh
 */
public class OrderDetails implements Serializable {

    private String OrderID;
    private String ProductID;
    private int Quantity;
    private double Price;
    private double SaleOff;

    public OrderDetails() {
    }

    public OrderDetails(String OrderID, String ProductID, int Quantity, double Price, double SaleOff) {
        this.OrderID = OrderID;
        this.ProductID = ProductID;
        this.Quantity = Quantity;
        this.Price = Price;
        this.SaleOff = SaleOff;
    }

    
    /**
     * @return the OrderID
     */
    public String getOrderID() {
        return OrderID;
    }

    /**
     * @param OrderID the OrderID to set
     */
    public void setOrderID(String OrderID) {
        this.OrderID = OrderID;
    }

    /**
     * @return the ProductID
     */
    public String getProductID() {
        return ProductID;
    }

    /**
     * @param ProductID the ProductID to set
     */
    public void setProductID(String ProductID) {
        this.ProductID = ProductID;
    }

    /**
     * @return the Quantity
     */
    public int getQuantity() {
        return Quantity;
    }

    /**
     * @param Quantity the Quantity to set
     */
    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }

    /**
     * @return the Price
     */
    public double getPrice() {
        return Price;
    }

    /**
     * @param Price the Price to set
     */
    public void setPrice(double Price) {
        this.Price = Price;
    }

    /**
     * @return the SaleOff
     */
    public double getSaleOff() {
        return SaleOff;
    }

    /**
     * @param SaleOff the SaleOff to set
     */
    public void setSaleOff(double SaleOff) {
        this.SaleOff = SaleOff;
    }

  
}
