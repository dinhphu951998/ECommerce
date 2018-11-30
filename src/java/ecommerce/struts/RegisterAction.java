/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.struts;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.EmailValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.ValidatorType;
import ecommerce.DAO.AccountDAO;
import ecommerce.entities.Accounts;

/**
 *
 * @author thanh
 */
public class RegisterAction extends ActionSupport {

    private final String SUCCESS = "success";
    private final String FAIL = "fail";
    private String Id;
    private String password;
    private String confirmPassword;
    private String email;
    private String firstName;
    private String lastName;

    private String errorRegister;

    public RegisterAction() {
    }

    public String execute() throws Exception {
        String url = FAIL;
        AccountDAO accountDAO = new AccountDAO();
        Accounts account = new Accounts(getId(), getFirstName(), getLastName(), getEmail(), null, getPassword(), null, null, "US");
        boolean result = accountDAO.registerAccount(account);
        if (!result) {
            setErrorRegister("Somethings wrong happened, please try again !!!");
        } else {
            url = SUCCESS;
        }

        return url;
    }

    @Override
    public void validate() {
        super.validate(); //To change body of generated methods, choose Tools | Templates.
        if (!password.equals(confirmPassword)) {
            addFieldError("confirmPassword", "Password doesn't match");
        }

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

    /**
     * @return the confirmPassword
     */
    public String getConfirmPassword() {
        return confirmPassword;
    }

    /**
     * @param confirmPassword the confirmPassword to set
     */
    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    /**
     * @return the firstName
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param firstName the firstName to set
     */
    @EmailValidator(type = ValidatorType.FIELD,message = "Wrong Email")
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the lastName
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * @param lastName the lastName to set
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    /**
     * @return the errorRegister
     */
    public String getErrorRegister() {
        return errorRegister;
    }

    /**
     * @param errorRegister the errorRegister to set
     */
    public void setErrorRegister(String errorRegister) {
        this.errorRegister = errorRegister;
    }

    /**
     * @return the firstName
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * @param firstName the firstName to set
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    
}
