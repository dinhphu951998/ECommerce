/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.struts;

import com.opensymphony.xwork2.ActionContext;
import ecommerce.dao.AccountDAO;
import ecommerce.entities.Accounts;
import ecommerce.enums.RolesEnum;
import ecommerce.tools.Utils;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author PhuNDSE63159
 */
public class LoginAction {

    private String Id;
    private String password;
    private boolean remember;
    private final String USER = "user";
    private final String ADMIN = "admin";
    private final String FAIL = "fail";

    public LoginAction() {
    }

    public String execute() throws Exception {
        String url = FAIL;
        AccountDAO dao = new AccountDAO();
        Accounts dto = dao.checkLogin(Id, password);
        if (dto != null) {
            switch (RolesEnum.valueOf(dto.getRoleID())) {
                case AD:
                    url = ADMIN;
                    break;
                case US:
                    url = USER;
                    break;
            }
            Map session = ActionContext.getContext().getSession();
            session.put("USER", dto);
            if (remember) {
                HttpServletResponse response = ServletActionContext.getResponse();
                Cookie cookie = new Cookie(Id, password);
                cookie.setMaxAge(1000 * 60 * 60 * 24 * 7);
                response.addCookie(cookie);
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
    public void setPassword(String password) throws NoSuchAlgorithmException {
        this.password = Utils.encryptPassword(password);
    }

    /**
     * @return the remember
     */
    public boolean isRemember() {
        return remember;
    }

    /**
     * @param remember the remember to set
     */
    public void setRemember(boolean remember) {
        this.remember = remember;
    }

}
