/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.struts;

import com.opensymphony.xwork2.ActionContext;
import ecommerce.entities.Accounts;
import java.util.Map;

/**
 *
 * @author thanh
 */
public class LoginFormAction {
    private final String ADMIN = "admin";
    private final String USER = "user";
    private final String FAIL = "fail";
    public LoginFormAction() {
    }
    
    public String execute() throws Exception {
        String url = FAIL;
        Map session = ActionContext.getContext().getSession();
        Accounts account =(Accounts) session.get("USER");
        if (account != null){
            if (account.getRoleID().equals("AD")){
                url = ADMIN;
            }
            if (account.getRoleID().equals("US")){
                url = USER;
            }
        }
        return url;
    }
    
}
