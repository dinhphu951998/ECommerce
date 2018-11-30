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
        ProductsDAO proDAO = new ProductsDAO();
        CategoriesDAO cateDAO = new CategoriesDAO();
        listBanners = proDAO.getBanners();
        list8Saling = proDAO.getTop8NewestSaling();
        list8Newest = proDAO.getTop8Newest();
        list8Rating = proDAO.getTop8Rating();
        highestOffer = proDAO.getHighestOffer();
        listCategories = cateDAO.getTop4MostSold();
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
