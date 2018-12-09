/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.struts;

import ecommerce.customdto.ReviewDTO;
import ecommerce.dao.CategoriesDAO;
import ecommerce.dao.ProductsDAO;
import ecommerce.dao.ReviewsDAO;
import ecommerce.entities.Categories;
import ecommerce.entities.Products;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author PhuNDSE63159
 */
public class GetProductDetailsAction {

    private String Id;
    private Products product;
    private Categories category;
    private String[] colors;
    private Map attribute;
    private List<Products> products;
    private final String SUCCESS = "success";
    private List<ReviewDTO> reviewDTOs;

    public GetProductDetailsAction() {
    }

    public String execute() throws Exception {
        String url = SUCCESS;
        ProductsDAO dao = new ProductsDAO();
        CategoriesDAO categoriesDAO = new CategoriesDAO();
        product = dao.getProductsById(Id);
        if (product != null) {
            category = categoriesDAO.getCategoryById(product.getCategoryID());
        }
        if (category != null) {
            createAttributeMap();
            products = dao.getRelatedProductByCategoryId(product.getCategoryID());
        }
        
        // get review DTO
        ReviewsDAO reviewsDAO = new ReviewsDAO();
        reviewDTOs = reviewsDAO.getAllReviewDTO(Id);
        return url;
    }

    private void createAttributeMap() {
        attribute = new HashMap(10);

        if (category.getAttName1() != null && !category.getAttName1().trim().isEmpty()) {
            attribute.put(category.getAttName1(), product.getAttVal1());
            if (category.getAttName1().toLowerCase().contains("color")) {
                colors = product.getAttVal1().split(",");
            }
        }
        if (category.getAttName2() != null && !category.getAttName2().trim().isEmpty()) {
            attribute.put(category.getAttName2(), product.getAttVal2());
            if (category.getAttName2().toLowerCase().contains("color")) {
                colors = product.getAttVal2().split(",");
            }
        }
        if (category.getAttName3() != null && !category.getAttName3().trim().isEmpty()) {
            attribute.put(category.getAttName3(), product.getAttVal3());
            if (category.getAttName3().toLowerCase().contains("color")) {
                colors = product.getAttVal3().split(",");
            }
        }
        if (category.getAttName4() != null && !category.getAttName4().trim().isEmpty()) {
            attribute.put(category.getAttName4(), product.getAttVal4());
            if (category.getAttName4().toLowerCase().contains("color")) {
                colors = product.getAttVal4().split(",");
            }
        }
        if (category.getAttName5() != null && !category.getAttName5().trim().isEmpty()) {
            attribute.put(category.getAttName5(), product.getAttVal5());
            if (category.getAttName5().toLowerCase().contains("color")) {
                colors = product.getAttVal5().split(",");
            }
        }
        if (category.getAttName6() != null && !category.getAttName6().trim().isEmpty()) {
            attribute.put(category.getAttName6(), product.getAttVal6());
            if (category.getAttName6().toLowerCase().contains("color")) {
                colors = product.getAttVal6().split(",");
            }
        }
        if (category.getAttName7() != null && !category.getAttName7().trim().isEmpty()) {
            attribute.put(category.getAttName7(), product.getAttVal7());
            if (category.getAttName7().toLowerCase().contains("color")) {
                colors = product.getAttVal7().split(",");
            }
        }
        if (category.getAttName8() != null && !category.getAttName8().trim().isEmpty()) {
            attribute.put(category.getAttName8(), product.getAttVal8());
            if (category.getAttName8().toLowerCase().contains("color")) {
                colors = product.getAttVal8().split(",");
            }
        }
        if (category.getAttName9() != null && !category.getAttName9().trim().isEmpty()) {
            attribute.put(category.getAttName9(), product.getAttVal9());
            if (category.getAttName9().toLowerCase().contains("color")) {
                colors = product.getAttVal9().split(",");
            }
        }

        if (category.getAttName10() != null && !category.getAttName10().trim().isEmpty()) {
            attribute.put(category.getAttName10(), product.getAttVal10());
            if (category.getAttName10().toLowerCase().contains("color")) {
                colors = product.getAttVal10().split(",");
            }
        }

    }

    public String getId() {
        return Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }

    public void setProduct(Products product) {
        this.product = product;
    }

    public Products getProduct() {
        return product;
    }

    public Categories getCategory() {
        return category;
    }

    public void setCategory(Categories category) {
        this.category = category;
    }

    public String[] getColors() {
        return colors;
    }

    public void setColors(String[] colors) {
        this.colors = colors;
    }

    public Map getAttribute() {
        return attribute;
    }

    public void setAttribute(Map attribute) {
        this.attribute = attribute;
    }

    public List<Products> getProducts() {
        return products;
    }

    public void setProducts(List<Products> products) {
        this.products = products;
    }

    /**
     * @return the reviewDTOs
     */
    public List<ReviewDTO> getReviewDTOs() {
        return reviewDTOs;
    }

    /**
     * @param reviewDTOs the reviewDTOs to set
     */
    public void setReviewDTOs(List<ReviewDTO> reviewDTOs) {
        this.reviewDTOs = reviewDTOs;
    }

   

}
