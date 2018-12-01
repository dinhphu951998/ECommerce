/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.struts;

import com.opensymphony.xwork2.ActionContext;
import ecommerce.dao.AccountDAO;
import ecommerce.entities.Accounts;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

/**
 *
 * @author DAT
 */
@Action(value = "UpdateProfile")
@Results({
    @Result(name = "success", type = "redirectAction",
            params = {
                "actionName", "Profile"
            }),
    @Result(name = "failed", location = "/login.jsp")
})
public class UpdateProfileAction {
    private String firstName, lastName, email, phone, address, password;
    private static final String SUCCESS = "success";
    private static final String FAILED = "failed";
    
    public UpdateProfileAction() {
    }
    
    public String execute() throws Exception {
        String url = FAILED;
        Map session = ActionContext.getContext().getSession();
        Accounts dto = (Accounts) session.get("USER");
        if(dto != null) {
            dto.setFirstName(firstName);
            dto.setLastName(lastName);
            dto.setAddress(address);
            dto.setEmail(email);
            dto.setPhone(phone);
            AccountDAO dao = new AccountDAO();
            boolean result = dao.updateAccount(dto);
            if(result) {
                url = SUCCESS;
            }
        }
        return url;
    }
    
    @Action(value = "ChangePassword")
    public String changePassword() throws Exception{
        String url = FAILED;
        Map session = ActionContext.getContext().getSession();
        Accounts dto = (Accounts) session.get("USER");
        if(dto != null) {
            dto.setPassword(password);
            AccountDAO dao = new AccountDAO();
            boolean result = dao.changePassword(dto);
            if(result) {
                url = SUCCESS;
            }
        }
        return url;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    
}
