/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.struts;

import ecommerce.entities.Categories;
import ecommerce.entities.Products;
import ecommerce.products.ProductsDAO;
import java.util.List;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

/**
 *
 * @author DAT
 */
@Action(value = "Home")
@Result(name = "success", location = "/home-page.jsp")
public class LoadHomePageAction {
    private List<Products> listBanners;
    private List<Products> list8Saling;
    private List<Products> list8Newest;
    private List<Products> list8Rating;
    private List<Categories> listCategories;
    private Products highestOffer;
    private static final String SUCCESS = "success";
    
    public LoadHomePageAction() {
    }
    
    public String execute() throws Exception {
        ProductsDAO dao = new ProductsDAO();
        listBanners = dao.getBanners();
        list8Saling = dao.getTop8NewestSaling();
        list8Newest = dao.getTop8Newest();
        list8Rating = dao.getTop8Rating();
        highestOffer = dao.getHighestOffer();
        listCategories = dao.getTop4MostSold();
        return SUCCESS;
    }

    public List<Products> getListBanners() {
        return listBanners;
    }

    public List<Products> getList8Saling() {
        return list8Saling;
    }

    public List<Products> getList8Newest() {
        return list8Newest;
    }

    public List<Products> getList8Rating() {
        return list8Rating;
    }

    public Products getHighestOffer() {
        return highestOffer;
    }

    public List<Categories> getListCategories() {
        return listCategories;
    }
}
