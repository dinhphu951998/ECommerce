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
public class Contacts implements Serializable {

    private int Id;
    private String Address;
    private String LandLine;
    private String CellPhone;
    private String Email;
    private String Skype;
    private String Facebook;
    private String Gmail;
    private String Twitter;
    private String Instagram;
    private String Working;
    private String AccountID;

    public Contacts() {
    }

    public Contacts(int Id, String Address, String LandLine, String CellPhone, String Email, String Skype, String Facebook, String Gmail, String Twitter, String Instagram, String Working, String AccountID) {
        this.Id = Id;
        this.Address = Address;
        this.LandLine = LandLine;
        this.CellPhone = CellPhone;
        this.Email = Email;
        this.Skype = Skype;
        this.Facebook = Facebook;
        this.Gmail = Gmail;
        this.Twitter = Twitter;
        this.Instagram = Instagram;
        this.Working = Working;
        this.AccountID = AccountID;
    }

    
    /**
     * @return the Id
     */
    public int getId() {
        return Id;
    }

    /**
     * @param Id the Id to set
     */
    public void setId(int Id) {
        this.Id = Id;
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
     * @return the LandLine
     */
    public String getLandLine() {
        return LandLine;
    }

    /**
     * @param LandLine the LandLine to set
     */
    public void setLandLine(String LandLine) {
        this.LandLine = LandLine;
    }

    /**
     * @return the CellPhone
     */
    public String getCellPhone() {
        return CellPhone;
    }

    /**
     * @param CellPhone the CellPhone to set
     */
    public void setCellPhone(String CellPhone) {
        this.CellPhone = CellPhone;
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
     * @return the Skype
     */
    public String getSkype() {
        return Skype;
    }

    /**
     * @param Skype the Skype to set
     */
    public void setSkype(String Skype) {
        this.Skype = Skype;
    }

    /**
     * @return the Facebook
     */
    public String getFacebook() {
        return Facebook;
    }

    /**
     * @param Facebook the Facebook to set
     */
    public void setFacebook(String Facebook) {
        this.Facebook = Facebook;
    }

    /**
     * @return the Gmail
     */
    public String getGmail() {
        return Gmail;
    }

    /**
     * @param Gmail the Gmail to set
     */
    public void setGmail(String Gmail) {
        this.Gmail = Gmail;
    }

    /**
     * @return the Twitter
     */
    public String getTwitter() {
        return Twitter;
    }

    /**
     * @param Twitter the Twitter to set
     */
    public void setTwitter(String Twitter) {
        this.Twitter = Twitter;
    }

    /**
     * @return the Instagram
     */
    public String getInstagram() {
        return Instagram;
    }

    /**
     * @param Instagram the Instagram to set
     */
    public void setInstagram(String Instagram) {
        this.Instagram = Instagram;
    }

    /**
     * @return the Working
     */
    public String getWorking() {
        return Working;
    }

    /**
     * @param Working the Working to set
     */
    public void setWorking(String Working) {
        this.Working = Working;
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
