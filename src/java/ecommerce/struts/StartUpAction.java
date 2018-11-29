/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.struts;

import ecommerce.dao.AccountDAO;
import ecommerce.entities.Accounts;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author PhuNDSE63159
 */
public class StartUpAction {

    private String Id;
    private String password;
    private final String SUCCESS = "success";
    private final String FAIL = "fail";

    public StartUpAction() {
    }

    public String execute() throws Exception {
        String url = FAIL;
        HttpServletRequest request = ServletActionContext.getRequest();
        Cookie[] cookies = request.getCookies();
        AccountDAO dao = new AccountDAO();
        Accounts dto = null;
        if (cookies != null) {
            for (Cookie cooky : cookies) {
                String id = cooky.getName();
                String passwordCookie = cooky.getValue();
                dto = dao.checkLogin(id, passwordCookie);
                if (dto != null) {
                    url = SUCCESS;
                    Id = dto.getId();
                    password = passwordCookie;
                    break;
                }
            }
        }
        return url;
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
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

}
