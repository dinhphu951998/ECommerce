/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.entities;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 *
 * @author thanh
 */
public class Products implements Serializable {

    private String Id;
    private String Name;
    private double Price;
    private int CategoryID;
    private String Image1;
    private String Image2;
    private String Image3;
    private String Image4;
    private String Manufacturer;
    private String Description;
    private String ShortDescription;
    private String OtherInfo;
    private int Stock;
    private Timestamp DateArrivals;
    private double SaleOff;
    private String AttVal1;
    private String AttVal2;
    private String AttVal3;
    private String AttVal4;
    private String AttVal5;
    private String AttVal6;
    private String AttVal7;
    private String AttVal8;
    private String AttVal9;
    private String AttVal10;
    private int RatingScore;
    private int NumOfRates;

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
     * @return the Price
     */
    public double getPrice() {
        return Price;
    }

    /**
     * @param Price the Price to set
     */
    public void setPrice(double Price) {
        this.Price = Price;
    }

    /**
     * @return the CategoryID
     */
    public int getCategoryID() {
        return CategoryID;
    }

    /**
     * @param CategoryID the CategoryID to set
     */
    public void setCategoryID(int CategoryID) {
        this.CategoryID = CategoryID;
    }

    /**
     * @return the Image1
     */
    public String getImage1() {
        return Image1;
    }

    /**
     * @param Image1 the Image1 to set
     */
    public void setImage1(String Image1) {
        this.Image1 = Image1;
    }

    /**
     * @return the Image2
     */
    public String getImage2() {
        return Image2;
    }

    /**
     * @param Image2 the Image2 to set
     */
    public void setImage2(String Image2) {
        this.Image2 = Image2;
    }

    /**
     * @return the Image3
     */
    public String getImage3() {
        return Image3;
    }

    /**
     * @param Image3 the Image3 to set
     */
    public void setImage3(String Image3) {
        this.Image3 = Image3;
    }

    /**
     * @return the Image4
     */
    public String getImage4() {
        return Image4;
    }

    /**
     * @param Image4 the Image4 to set
     */
    public void setImage4(String Image4) {
        this.Image4 = Image4;
    }

    /**
     * @return the Manufacturer
     */
    public String getManufacturer() {
        return Manufacturer;
    }

    /**
     * @param Manufacturer the Manufacturer to set
     */
    public void setManufacturer(String Manufacturer) {
        this.Manufacturer = Manufacturer;
    }

    /**
     * @return the Description
     */
    public String getDescription() {
        return Description;
    }

    /**
     * @param Description the Description to set
     */
    public void setDescription(String Description) {
        this.Description = Description;
    }

    /**
     * @return the ShortDescription
     */
    public String getShortDescription() {
        return ShortDescription;
    }

    /**
     * @param ShortDescription the ShortDescription to set
     */
    public void setShortDescription(String ShortDescription) {
        this.ShortDescription = ShortDescription;
    }

    /**
     * @return the OtherInfo
     */
    public String getOtherInfo() {
        return OtherInfo;
    }

    /**
     * @param OtherInfo the OtherInfo to set
     */
    public void setOtherInfo(String OtherInfo) {
        this.OtherInfo = OtherInfo;
    }

    /**
     * @return the Stock
     */
    public int getStock() {
        return Stock;
    }

    /**
     * @param Stock the Stock to set
     */
    public void setStock(int Stock) {
        this.Stock = Stock;
    }

    /**
     * @return the DateArrivals
     */
    public Timestamp getDateArrivals() {
        return DateArrivals;
    }

    /**
     * @param DateArrivals the DateArrivals to set
     */
    public void setDateArrivals(Timestamp DateArrivals) {
        this.DateArrivals = DateArrivals;
    }

    /**
     * @return the SaleOff
     */
    public double getSaleOff() {
        return SaleOff;
    }

    /**
     * @param SaleOff the SaleOff to set
     */
    public void setSaleOff(double SaleOff) {
        this.SaleOff = SaleOff;
    }

    /**
     * @return the AttVal1
     */
    public String getAttVal1() {
        return AttVal1;
    }

    /**
     * @param AttVal1 the AttVal1 to set
     */
    public void setAttVal1(String AttVal1) {
        this.AttVal1 = AttVal1;
    }

    /**
     * @return the AttVal2
     */
    public String getAttVal2() {
        return AttVal2;
    }

    /**
     * @param AttVal2 the AttVal2 to set
     */
    public void setAttVal2(String AttVal2) {
        this.AttVal2 = AttVal2;
    }

    /**
     * @return the AttVal3
     */
    public String getAttVal3() {
        return AttVal3;
    }

    /**
     * @param AttVal3 the AttVal3 to set
     */
    public void setAttVal3(String AttVal3) {
        this.AttVal3 = AttVal3;
    }

    /**
     * @return the AttVal4
     */
    public String getAttVal4() {
        return AttVal4;
    }

    /**
     * @param AttVal4 the AttVal4 to set
     */
    public void setAttVal4(String AttVal4) {
        this.AttVal4 = AttVal4;
    }

    /**
     * @return the AttVal5
     */
    public String getAttVal5() {
        return AttVal5;
    }

    /**
     * @param AttVal5 the AttVal5 to set
     */
    public void setAttVal5(String AttVal5) {
        this.AttVal5 = AttVal5;
    }

    /**
     * @return the AttVal6
     */
    public String getAttVal6() {
        return AttVal6;
    }

    /**
     * @param AttVal6 the AttVal6 to set
     */
    public void setAttVal6(String AttVal6) {
        this.AttVal6 = AttVal6;
    }

    /**
     * @return the AttVal7
     */
    public String getAttVal7() {
        return AttVal7;
    }

    /**
     * @param AttVal7 the AttVal7 to set
     */
    public void setAttVal7(String AttVal7) {
        this.AttVal7 = AttVal7;
    }

    /**
     * @return the AttVal8
     */
    public String getAttVal8() {
        return AttVal8;
    }

    /**
     * @param AttVal8 the AttVal8 to set
     */
    public void setAttVal8(String AttVal8) {
        this.AttVal8 = AttVal8;
    }

    /**
     * @return the AttVal9
     */
    public String getAttVal9() {
        return AttVal9;
    }

    /**
     * @param AttVal9 the AttVal9 to set
     */
    public void setAttVal9(String AttVal9) {
        this.AttVal9 = AttVal9;
    }

    /**
     * @return the AttVal10
     */
    public String getAttVal10() {
        return AttVal10;
    }

    /**
     * @param AttVal10 the AttVal10 to set
     */
    public void setAttVal10(String AttVal10) {
        this.AttVal10 = AttVal10;
    }

    /**
     * @return the RatingScore
     */
    public int getRatingScore() {
        return RatingScore;
    }

    /**
     * @param RatingScore the RatingScore to set
     */
    public void setRatingScore(int RatingScore) {
        this.RatingScore = RatingScore;
    }

    /**
     * @return the NumOfRates
     */
    public int getNumOfRates() {
        return NumOfRates;
    }

    /**
     * @param NumOfRates the NumOfRates to set
     */
    public void setNumOfRates(int NumOfRates) {
        this.NumOfRates = NumOfRates;
    }
}
