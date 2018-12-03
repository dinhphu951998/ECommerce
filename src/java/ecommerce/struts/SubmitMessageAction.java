/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.struts;

import com.opensymphony.xwork2.Action;
import ecommerce.dao.MessageDAO;
import ecommerce.entities.Messages;
import ecommerce.enums.StatusMessageEnum;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

/**
 *
 * @author PhuNDSE63159
 */
public class SubmitMessageAction {

    private String name;
    private String email;
    private String message;
    private InputStream stream;

    public SubmitMessageAction() {
    }

    public String execute() throws Exception {
        String url = Action.SUCCESS;
        MessageDAO dao = new MessageDAO();
        if (message != null && message.trim().length() > 0) {
            try {
                dao.add(new Messages(name, email, message, null, StatusMessageEnum.Asked.getValue()));
            } catch (Exception ex) {
                url = ex.getMessage();
            }
        }
        stream = new ByteArrayInputStream(url.getBytes());
        return Action.SUCCESS;
    }

    public InputStream getStream() {
        return stream;
    }

    public void setStream(InputStream stream) {
        this.stream = stream;
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

}
