/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.struts;

import ecommerce.dao.CategoriesDAO;
import ecommerce.dao.ProductsDAO;
import ecommerce.entities.Categories;
import ecommerce.entities.Products;
import ecommerce.enums.TypeSortEnum;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author thanh
 */
public class ShopAction {

    private final String SUCCESS = "success";

    private String searchValue;
    private int categoryId;
    private double priceFrom;
    private double priceTo;
    private String manufacture;
    private String stringTypeSort;
    private int numOfPage;

    private List<Categories> listCategoriesIdAndName;
    private Map<String, String> mapSortTypes;
    private List<String> listManufactures;
    private List<Products> listProductsInPage;
    private int numOfAllProducts;
    private int totalPages;

    public ShopAction() {
        searchValue = "";
        categoryId = -1;
        priceFrom = 0;
        priceTo = 100000;
        manufacture = "";
        stringTypeSort = "Newest";
        numOfPage = 1;

    }

    public String execute() throws Exception {
        int productPerPage = 12;
        ProductsDAO productsDAO = new ProductsDAO();
        CategoriesDAO categoriesDAO = new CategoriesDAO();

        setListProductsInPage(productsDAO.searchProductsBySomeConditions(getSearchValue(), getCategoryId(), getPriceFrom(), getPriceTo(), getManufacture(), getNumOfPage(), getStringTypeSort(), productPerPage));
        setNumOfAllProducts(productsDAO.getnumOfAllProducts(getSearchValue(), getCategoryId(), getPriceFrom(), getPriceTo(), getManufacture(), getNumOfPage(), getStringTypeSort()));
        setTotalPages((int) Math.ceil(getNumOfAllProducts() / (productPerPage * 1.0)));
        setListCategoriesIdAndName(categoriesDAO.getAllCategoriesIdAndName());

        setListManufactures(productsDAO.getAllManufactureNames());
        setMapSortTypes(new HashMap<>());
        for (TypeSortEnum sortName : TypeSortEnum.values()) {
            switch (sortName.toString()) {
                case "Newest":
                    getMapSortTypes().put(sortName.toString(), "Newest");
                    break;
                case "PriceDown":
                    getMapSortTypes().put(sortName.toString(), "Price Decrease");
                    break;
                case "PriceUp":
                    getMapSortTypes().put(sortName.toString(), "Price Increase");
                    break;
                case "Rating":
                    getMapSortTypes().put(sortName.toString(), "Rating");
                    break;
                case "SaleALot":
                    getMapSortTypes().put(sortName.toString(), "Sale");
                    break;
            }
        }
        return SUCCESS;
    }

    /**
     * @return the searchValue
     */
    public String getSearchValue() {
        return searchValue;
    }

    /**
     * @param searchValue the searchValue to set
     */
    public void setSearchValue(String searchValue) {
        this.searchValue = searchValue;
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
     * @return the priceFrom
     */
    public double getPriceFrom() {
        return priceFrom;
    }

    /**
     * @param priceFrom the priceFrom to set
     */
    public void setPriceFrom(double priceFrom) {
        this.priceFrom = priceFrom;
    }

    /**
     * @return the priceTo
     */
    public double getPriceTo() {
        return priceTo;
    }

    /**
     * @param priceTo the priceTo to set
     */
    public void setPriceTo(double priceTo) {
        this.priceTo = priceTo;
    }

    /**
     * @return the manufacture
     */
    public String getManufacture() {
        return manufacture;
    }

    /**
     * @param manufacture the manufacture to set
     */
    public void setManufacture(String manufacture) {
        this.manufacture = manufacture;
    }

    /**
     * @return the stringTypeSort
     */
    public String getStringTypeSort() {
        return stringTypeSort;
    }

    /**
     * @param stringTypeSort the stringTypeSort to set
     */
    public void setStringTypeSort(String stringTypeSort) {
        this.stringTypeSort = stringTypeSort;
    }

    /**
     * @return the numOfPage
     */
    public int getNumOfPage() {
        return numOfPage;
    }

    /**
     * @param numOfPage the numOfPage to set
     */
    public void setNumOfPage(int numOfPage) {
        this.numOfPage = numOfPage;
    }

    /**
     * @return the listCategoriesIdAndName
     */
    public List<Categories> getListCategoriesIdAndName() {
        return listCategoriesIdAndName;
    }

    /**
     * @param listCategoriesIdAndName the listCategoriesIdAndName to set
     */
    public void setListCategoriesIdAndName(List<Categories> listCategoriesIdAndName) {
        this.listCategoriesIdAndName = listCategoriesIdAndName;
    }

    /**
     * @return the listSortTypes
     */
  
    /**
     * @return the listManufactures
     */
    public List<String> getListManufactures() {
        return listManufactures;
    }

    /**
     * @param listManufactures the listManufactures to set
     */
    public void setListManufactures(List<String> listManufactures) {
        this.listManufactures = listManufactures;
    }

    /**
     * @return the listProductsInPage
     */
    public List<Products> getListProductsInPage() {
        return listProductsInPage;
    }

    /**
     * @param listProductsInPage the listProductsInPage to set
     */
    public void setListProductsInPage(List<Products> listProductsInPage) {
        this.listProductsInPage = listProductsInPage;
    }

    /**
     * @return the numOfAllProducts
     */
    public int getNumOfAllProducts() {
        return numOfAllProducts;
    }

    /**
     * @param numOfAllProducts the numOfAllProducts to set
     */
    public void setNumOfAllProducts(int numOfAllProducts) {
        this.numOfAllProducts = numOfAllProducts;
    }

    /**
     * @return the totalPages
     */
    public int getTotalPages() {
        return totalPages;
    }

    /**
     * @param totalPages the totalPages to set
     */
    public void setTotalPages(int totalPages) {
        this.totalPages = totalPages;
    }

    /**
     * @return the mapSortTypes
     */
    public Map<String, String> getMapSortTypes() {
        return mapSortTypes;
    }

    /**
     * @param mapSortTypes the mapSortTypes to set
     */
    public void setMapSortTypes(Map<String, String> mapSortTypes) {
        this.mapSortTypes = mapSortTypes;
    }

}
