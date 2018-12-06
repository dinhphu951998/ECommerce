/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.customdto;

import java.io.Serializable;

/**
 *
 * @author thanh
 */
public class ReviewDTO implements Serializable {

    private int Id;
    private String Title;
    private String Content;
    private int Rating;
    private String AccountName;
    private String AccountImage;

    public ReviewDTO() {
    }

    public ReviewDTO(int Id, String Title, String Content, int Rating, String AccountName, String AccountImage) {
        this.Id = Id;
        this.Title = Title;
        this.Content = Content;
        this.Rating = Rating;
        this.AccountName = AccountName;
        this.AccountImage = AccountImage;
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
     * @return the Title
     */
    public String getTitle() {
        return Title;
    }

    /**
     * @param Title the Title to set
     */
    public void setTitle(String Title) {
        this.Title = Title;
    }

    /**
     * @return the Content
     */
    public String getContent() {
        return Content;
    }

    /**
     * @param Content the Content to set
     */
    public void setContent(String Content) {
        this.Content = Content;
    }

    /**
     * @return the Rating
     */
    public int getRating() {
        return Rating;
    }

    /**
     * @param Rating the Rating to set
     */
    public void setRating(int Rating) {
        this.Rating = Rating;
    }

    /**
     * @return the AccountName
     */
    public String getAccountName() {
        return AccountName;
    }

    /**
     * @param AccountName the AccountName to set
     */
    public void setAccountName(String AccountName) {
        this.AccountName = AccountName;
    }

    /**
     * @return the AccountImage
     */
    public String getAccountImage() {
        return AccountImage;
    }

    /**
     * @param AccountImage the AccountImage to set
     */
    public void setAccountImage(String AccountImage) {
        this.AccountImage = AccountImage;
    }
}
