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
    private boolean IsAnswered;
    private String AnsweredAccountId;
    private String Answer;
    private boolean Status;

    public Messages() {
    }

    public Messages(int ID, String Name, String Email, String Message, String AccountID, boolean IsAnswered, String AnsweredAccountId, String Answer, boolean Status) {
        this.ID = ID;
        this.Name = Name;
        this.Email = Email;
        this.Message = Message;
        this.AccountID = AccountID;
        this.IsAnswered = IsAnswered;
        this.AnsweredAccountId = AnsweredAccountId;
        this.Answer = Answer;
        this.Status = Status;
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

    /**
     * @return the IsAnswered
     */
    public boolean isIsAnswered() {
        return IsAnswered;
    }

    /**
     * @param IsAnswered the IsAnswered to set
     */
    public void setIsAnswered(boolean IsAnswered) {
        this.IsAnswered = IsAnswered;
    }

    /**
     * @return the AnsweredAccountId
     */
    public String getAnsweredAccountId() {
        return AnsweredAccountId;
    }

    /**
     * @param AnsweredAccountId the AnsweredAccountId to set
     */
    public void setAnsweredAccountId(String AnsweredAccountId) {
        this.AnsweredAccountId = AnsweredAccountId;
    }

    /**
     * @return the Answer
     */
    public String getAnswer() {
        return Answer;
    }

    /**
     * @param Answer the Answer to set
     */
    public void setAnswer(String Answer) {
        this.Answer = Answer;
    }

    /**
     * @return the Status
     */
    public boolean isStatus() {
        return Status;
    }

    /**
     * @param Status the Status to set
     */
    public void setStatus(boolean Status) {
        this.Status = Status;
    }

    
    
}
