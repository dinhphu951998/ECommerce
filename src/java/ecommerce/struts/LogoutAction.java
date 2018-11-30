/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.struts;

import com.opensymphony.xwork2.ActionContext;
import java.util.Map;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author thanh
 */
public class LogoutAction {
    
    
    public LogoutAction() {
    }
    
    public String execute() throws Exception {
        Map session = ActionContext.getContext().getSession();
        session.clear();
        HttpServletRequest request = ServletActionContext.getRequest();
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie: cookies){
            if (cookie.getName().startsWith("account")){
                //remove cookie
                Cookie usernameCookieRemove = new Cookie(cookie.getName(), "");
                usernameCookieRemove.setMaxAge(0);
                HttpServletResponse response = ServletActionContext.getResponse();
                response.addCookie(usernameCookieRemove);
            }
        }
        return "success";
    }
    
}
