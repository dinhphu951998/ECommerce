/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.entities;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 *
 * @author thanh
 */
public class Promotions implements Serializable {

    private String Id;
    private double Discount;
    private String Description;
    private int Type;
    private String ProductID;
    private String AccountID;
    private Timestamp StartTime;
    private Timestamp EndTime;

    public Promotions() {
    }

    public Promotions(String Id, double Discount, String Description, int Type, String ProductID, String AccountID, Timestamp StartTime, Timestamp EndTime) {
        this.Id = Id;
        this.Discount = Discount;
        this.Description = Description;
        this.Type = Type;
        this.ProductID = ProductID;
        this.AccountID = AccountID;
        this.StartTime = StartTime;
        this.EndTime = EndTime;
    }
    

    /**
     * @return the Id
     */
    public String getId() {
        return Id;
    }

    /**
     * @param Id the Id to set
     */
    public void setId(String Id) {
        this.Id = Id;
    }

    /**
     * @return the Discount
     */
    public double getDiscount() {
        return Discount;
    }

    /**
     * @param Discount the Discount to set
     */
    public void setDiscount(double Discount) {
        this.Discount = Discount;
    }

    /**
     * @return the Description
     */
    public String getDescription() {
        return Description;
    }

    /**
     * @param Description the Description to set
     */
    public void setDescription(String Description) {
        this.Description = Description;
    }

    /**
     * @return the Type
     */
    public int getType() {
        return Type;
    }

    /**
     * @param Type the Type to set
     */
    public void setType(int Type) {
        this.Type = Type;
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
     * @return the AccountID
     */
    public String getAccountID() {
        return AccountID;
    }

    /**
     * @param AccountID the AccountID to set
     */
    public void setAccountID(String AccountID) {
        this.AccountID = AccountID;
    }

    /**
     * @return the StartTime
     */
    public Timestamp getStartTime() {
        return StartTime;
    }

    /**
     * @param StartTime the StartTime to set
     */
    public void setStartTime(Timestamp StartTime) {
        this.StartTime = StartTime;
    }

    /**
     * @return the EndTime
     */
    public Timestamp getEndTime() {
        return EndTime;
    }

    /**
     * @param EndTime the EndTime to set
     */
    public void setEndTime(Timestamp EndTime) {
        this.EndTime = EndTime;
    }

}
