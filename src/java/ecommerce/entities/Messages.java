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
public class Messages implements Serializable {

    private int ID;
    private String Name;
    private String Email;
    private String Message;
    private String AccountID;

    public Messages() {
    }

    public Messages(int ID, String Name, String Email, String Message, String AccountID) {
        this.ID = ID;
        this.Name = Name;
        this.Email = Email;
        this.Message = Message;
        this.AccountID = AccountID;
    }

    
    /**
     * @return the ID
     */
    public int getID() {
        return ID;
    }

    /**
     * @param ID the ID to set
     */
    public void setID(int ID) {
        this.ID = ID;
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

    /**
     * @return the Message
     */
    public String getMessage() {
        return Message;
    }

    /**
     * @param Message the Message to set
     */
    public void setMessage(String Message) {
        this.Message = Message;
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
}
