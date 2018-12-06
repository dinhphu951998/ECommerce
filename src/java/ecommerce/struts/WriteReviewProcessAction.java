/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.struts;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.StringLengthFieldValidator;
import ecommerce.dao.OrdersDAO;
import ecommerce.dao.ProductsDAO;
import ecommerce.dao.ReviewsDAO;
import ecommerce.entities.Accounts;
import java.util.Map;

/**
 *
 * @author thanh
 */
public class WriteReviewProcessAction extends ActionSupport {
    private final String SUCCESS = "success";
    private final String FAIL = "fail";
    private int rating;
    private String reviewTitle;
    private String reviewContent;
    private String productId;
    private String errorMessage;

    public WriteReviewProcessAction() {
    }

    public String execute() throws Exception {
        String url = FAIL;
        Map session = ActionContext.getContext().getSession();
        Accounts account = (Accounts)session.get("USER");
        if (account == null){
            setErrorMessage("You have to be a member to review.");
        }
        else{
            OrdersDAO ordersDAO = new OrdersDAO();
            ReviewsDAO reviewsDAO = new ReviewsDAO();
            ProductsDAO productsDAO = new ProductsDAO();
            boolean wasPurchased = ordersDAO.checkWasPurchased(account.getId(),productId);
            boolean wasReviewed = reviewsDAO.checkWasReviewed(account.getId(),productId);
            if (!wasPurchased){
                setErrorMessage("You have to buy this product to review");
            }
            else if (wasReviewed){
                setErrorMessage("You already reviewed this product");
            }
            else{
                reviewsDAO.addReview(account.getId(),productId,rating,reviewTitle,reviewContent);
                productsDAO.addMoreRating(productId,rating);
                url = SUCCESS;
            }
        }
        return url;
    }

    /**
     * @return the rating
     */
    public int getRating() {
        return rating;
    }

    /**
     * @param rating the rating to set
     */
    public void setRating(int rating) {
        this.rating = rating;
    }

    /**
     * @return the reviewTitle
     */
    public String getReviewTitle() {
        return reviewTitle;
    }

    /**
     * @param reviewTitle the reviewTitle to set
     */
    @RequiredStringValidator(trim = true, message = "Title is required")
    public void setReviewTitle(String reviewTitle) {
        this.reviewTitle = reviewTitle;
    }

    /**
     * @return the reviewContent
     */
    public String getReviewContent() {
        return reviewContent;
    }

    /**
     * @param reviewContent the reviewContent to set
     */
    @StringLengthFieldValidator(trim = true, minLength = "50", message = "Please write at least 50 characters")
    public void setReviewContent(String reviewContent) {
        this.reviewContent = reviewContent;
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
     * @return the errorMessage
     */
    public String getErrorMessage() {
        return errorMessage;
    }

    /**
     * @param errorMessage the errorMessage to set
     */
    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

}
