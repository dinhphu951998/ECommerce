/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.struts;

import com.opensymphony.xwork2.ActionContext;
import ecommerce.dao.AccountDAO;
import ecommerce.entities.Accounts;
import ecommerce.tools.Utils;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
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
    private final String ADMIN = "admin";
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
                if (id.startsWith("account")) {
                    id = id.substring("account".length());
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
        }
        if (!url.equals(SUCCESS)){
            Map session = ActionContext.getContext().getSession();
            if (session.get("USER") != null){
                if (((Accounts)session.get("USER")).getRoleID().equals("AD")){
                    url = ADMIN;
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
