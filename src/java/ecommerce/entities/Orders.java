/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.entities;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;

/**
 *
 * @author thanh
 */
public class Orders implements Serializable {

    private String ID;
    private String AccountID;
    private Timestamp DatePurchased;
    private String Status;
    private double Total;
    private String Name;
    private String Phone;
    private String Address;
    private String Email;

    public Orders() {
    }

    public Orders(String ID, String AccountID, Timestamp DatePurchased, String Status, double Total, String Name, String Phone, String Address, String Email) {
        this.ID = ID;
        this.AccountID = AccountID;
        this.DatePurchased = DatePurchased;
        this.Status = Status;
        this.Total = Total;
        this.Name = Name;
        this.Phone = Phone;
        this.Address = Address;
        this.Email = Email;
    }

    
    
    /**
     * @return the ID
     */
    public String getID() {
        return ID;
    }

    /**
     * @param ID the ID to set
     */
    public void setID(String ID) {
        this.ID = ID;
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
     * @return the DatePurchased
     */
    public Timestamp getDatePurchased() {
        return DatePurchased;
    }

    /**
     * @param DatePurchased the DatePurchased to set
     */
    public void setDatePurchased(Timestamp DatePurchased) {
        this.DatePurchased = DatePurchased;
    }

    /**
     * @return the Status
     */
    public String getStatus() {
        return Status;
    }

    /**
     * @param Status the Status to set
     */
    public void setStatus(String Status) {
        this.Status = Status;
    }

    /**
     * @return the Total
     */
    public double getTotal() {
        return Total;
    }

    /**
     * @param Total the Total to set
     */
    public void setTotal(double Total) {
        this.Total = Total;
    }

    /**
     * @return the Name
     */
    public String getName() {
        return Name;
    }

    /**
     * @param Name the Name to set
     */
    public void setName(String Name) {
        this.Name = Name;
    }

    /**
     * @return the Phone
     */
    public String getPhone() {
        return Phone;
    }

    /**
     * @param Phone the Phone to set
     */
    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    /**
     * @return the Address
     */
    public String getAddress() {
        return Address;
    }

    /**
     * @param Address the Address to set
     */
    public void setAddress(String Address) {
        this.Address = Address;
    }

    /**
     * @return the Email
     */
    public String getEmail() {
        return Email;
    }

    /**
     * @param Email the Email to set
     */
    public void setEmail(String Email) {
        this.Email = Email;
    }

    @Override
    public String toString() {
        String result = String.format("%s - %s - %s - %s", this.Name, this.Phone, this.Address, this.Email);
        return result;
    }
}
