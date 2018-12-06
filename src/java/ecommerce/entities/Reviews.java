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
public class Reviews implements Serializable {
    private int Id;
    private String ProductId;
    private String Title;
    private String AccountId;
    private String Content;
    private int Rating;

    public Reviews() {
    }

    public Reviews(int Id, String ProductId, String Title, String AccountId, String Content, int Rating) {
        this.Id = Id;
        this.ProductId = ProductId;
        this.Title = Title;
        this.AccountId = AccountId;
        this.Content = Content;
        this.Rating = Rating;
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
     * @return the ProductId
     */
    public String getProductId() {
        return ProductId;
    }

    /**
     * @param ProductId the ProductId to set
     */
    public void setProductId(String ProductId) {
        this.ProductId = ProductId;
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
     * @return the AccountId
     */
    public String getAccountId() {
        return AccountId;
    }

    /**
     * @param AccountId the AccountId to set
     */
    public void setAccountId(String AccountId) {
        this.AccountId = AccountId;
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

    
}
