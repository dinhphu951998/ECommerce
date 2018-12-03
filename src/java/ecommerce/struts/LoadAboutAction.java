/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.struts;

import ecommerce.dao.AccountDAO;
import ecommerce.entities.Accounts;
import java.util.List;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

/**
 *
 * @author DAT
 */
@Action(value = "About")
@Result(name = "success", location = "/about.jsp")
public class LoadAboutAction {
    private List<Accounts> listAccount;
    private static final String SUCCESS = "success";
    public LoadAboutAction() {
    }
    
    public String execute() throws Exception {
        AccountDAO dao = new AccountDAO();
        listAccount = dao.getTop3Admin();
        return SUCCESS;
    }

    public List<Accounts> getListAccount() {
        return listAccount;
    }
    
}
