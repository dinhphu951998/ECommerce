/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.products;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;


/**
 *
 * @author PhuNDSE63159
 */
public class Products implements Serializable{
    private String Id;
    private String name;
    private double price;
    private int categoryId;
    private String image1;
    private String image2;
    private String image3;
    private String image4;
    private String manufacturer;
    private String dimensions;
    private String materials;
    private String weight;
    private String description;
    private String shortDescription;
    private String otherInfo;
    private int stock;
    private Timestamp dateArrivals;
    private double saleOff;

    public Products() {
    }

    public Products(String Id, String name, double price, int categoryId, 
            String image1, String image2, String image3, String image4, 
            String manufacturer, String dimension, String material, 
            String weight, String description, String shortDescription, 
            String otherInfo, int stock, Timestamp dateArrivals, double saleOff) {
        this.Id = Id;
        this.name = name;
        this.price = price;
        this.categoryId = categoryId;
        this.image1 = image1;
        this.image2 = image2;
        this.image3 = image3;
        this.image4 = image4;
        this.manufacturer = manufacturer;
        this.dimensions = dimension;
        this.materials = material;
        this.weight = weight;
        this.description = description;
        this.shortDescription = shortDescription;
        this.otherInfo = otherInfo;
        this.stock = stock;
        this.dateArrivals = dateArrivals;
        this.saleOff = saleOff;
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
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the price
     */
    public double getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(double price) {
        this.price = price;
    }

    /**
     * @return the categoryId
     */
    public int getCategoryId() {
        return categoryId;
    }

    /**
     * @param categoryId the categoryId to set
     */
    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    /**
     * @return the image1
     */
    public String getImage1() {
        return image1;
    }

    /**
     * @param image1 the image1 to set
     */
    public void setImage1(String image1) {
        this.image1 = image1;
    }

    /**
     * @return the image2
     */
    public String getImage2() {
        return image2;
    }

    /**
     * @param image2 the image2 to set
     */
    public void setImage2(String image2) {
        this.image2 = image2;
    }

    /**
     * @return the image3
     */
    public String getImage3() {
        return image3;
    }

    /**
     * @param image3 the image3 to set
     */
    public void setImage3(String image3) {
        this.image3 = image3;
    }

    /**
     * @return the image4
     */
    public String getImage4() {
        return image4;
    }

    /**
     * @param image4 the image4 to set
     */
    public void setImage4(String image4) {
        this.image4 = image4;
    }

    /**
     * @return the manufacturer
     */
    public String getManufacturer() {
        return manufacturer;
    }

    /**
     * @param manufacturer the manufacturer to set
     */
    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    /**
     * @return the dimension
     */
    public String getDimension() {
        return dimensions;
    }

    /**
     * @param dimension the dimension to set
     */
    public void setDimension(String dimension) {
        this.dimensions = dimension;
    }

    /**
     * @return the material
     */
    public String getMaterial() {
        return materials;
    }

    /**
     * @param material the material to set
     */
    public void setMaterial(String material) {
        this.materials = material;
    }

    /**
     * @return the weight
     */
    public String getWeight() {
        return weight;
    }

    /**
     * @param weight the weight to set
     */
    public void setWeight(String weight) {
        this.weight = weight;
    }

    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return the shortDescription
     */
    public String getShortDescription() {
        return shortDescription;
    }

    /**
     * @param shortDescription the shortDescription to set
     */
    public void setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }

    /**
     * @return the otherInfo
     */
    public String getOtherInfo() {
        return otherInfo;
    }

    /**
     * @param otherInfo the otherInfo to set
     */
    public void setOtherInfo(String otherInfo) {
        this.otherInfo = otherInfo;
    }

    /**
     * @return the stock
     */
    public int getStock() {
        return stock;
    }

    /**
     * @param stock the stock to set
     */
    public void setStock(int stock) {
        this.stock = stock;
    }

    /**
     * @return the dateArrivals
     */
    public Timestamp getDateArrivals() {
        return dateArrivals;
    }

    /**
     * @param dateArrivals the dateArrivals to set
     */
    public void setDateArrivals(Timestamp dateArrivals) {
        this.dateArrivals = dateArrivals;
    }

    /**
     * @return the saleOff
     */
    public double getSaleOff() {
        return saleOff;
    }

    /**
     * @param saleOff the saleOff to set
     */
    public void setSaleOff(double saleOff) {
        this.saleOff = saleOff;
    }
    
    
    
    
    
    
    
}
