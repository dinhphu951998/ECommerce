/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.struts;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.EmailValidator;
import ecommerce.dao.MessagesDAO;
import ecommerce.entities.Accounts;
import java.util.Map;

/**
 *
 * @author thanh
 */
public class ContactProcessAction extends ActionSupport{
    private final String SUCCESS = "success";
    private final String FAIL = "fail";
    private String name;
    private String email;
    private String message;
    private String error;
    
    public ContactProcessAction() {
    }
    
    public String execute() throws Exception {
        String url = FAIL;
        String accountId = null;
        MessagesDAO messagesDAO = new MessagesDAO();
        Map session = ActionContext.getContext().getSession();
        Accounts account = (Accounts)session.get("USER");
        if (account != null){
            accountId = account.getId();
        }
        boolean result = messagesDAO.sendCustomerQuestion(name,email,message,accountId);
        if (result){
            url = SUCCESS;
        }
        else{
            setError("Some things wrong happens, please try again!!!");
        }
        return url;
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
    @EmailValidator(message = "Please input valid email")
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the message
     */
    public String getMessage() {
        return message;
    }

    /**
     * @param message the message to set
     */
    public void setMessage(String message) {
        this.message = message;
    }

    /**
     * @return the error
     */
    public String getError() {
        return error;
    }

    /**
     * @param error the error to set
     */
    public void setError(String error) {
        this.error = error;
    }
    
}
