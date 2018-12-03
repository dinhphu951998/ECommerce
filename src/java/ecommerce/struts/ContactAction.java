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
public class ContactAction {

    private final String SUCCESS = "success";
    private String name;
    private String email;

    public ContactAction() {
    }

    public String execute() throws Exception {
        Map session = ActionContext.getContext().getSession();
        Accounts accounts = (Accounts) session.get("USER");
        if (accounts != null){
            setName(accounts.getFirstName()+" "+accounts.getLastName());
            setEmail(accounts.getEmail());
        }
        return SUCCESS;
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
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the account
     */
  
}
