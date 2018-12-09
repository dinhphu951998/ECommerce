/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.struts;

import ecommerce.dao.ContactDAO;
import ecommerce.dao.ProductsDAO;
import ecommerce.entities.Contacts;
import ecommerce.entities.Products;

/**
 *
 * @author thanh
 */
public class WriteReviewFormAction {

    private final String SUCCESS = "success";
    private String productId;
    private Products product;
    private Contacts contact;

    public WriteReviewFormAction() {
    }

    public String execute() throws Exception {
        ProductsDAO productDAO = new ProductsDAO();
        product = productDAO.getProductsById(productId);
        ContactDAO contactDAO = new ContactDAO();
        contact = contactDAO.getNewestContact();
        return SUCCESS;
    }

    /**
     * @return the productId
     */
    public String getProductId() {
        return productId;
    }

    /**
     * @param productId the productId to set
     */
    public void setProductId(String productId) {
        this.productId = productId;
    }

    /**
     * @return the product
     */
    public Products getProduct() {
        return product;
    }

    /**
     * @param product the product to set
     */
    public void setProduct(Products product) {
        this.product = product;
    }

    /**
     * @return the contact
     */
    public Contacts getContact() {
        return contact;
    }

    /**
     * @param contact the contact to set
     */
    public void setContact(Contacts contact) {
        this.contact = contact;
    }

}
