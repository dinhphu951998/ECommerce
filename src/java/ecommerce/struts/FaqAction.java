/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.struts;

import ecommerce.dao.MessagesDAO;
import ecommerce.entities.Messages;
import java.util.List;

/**
 *
 * @author thanh
 */
public class FaqAction {

    /**
     * @return the totalMessages
     */
    public int getTotalMessages() {
        return totalMessages;
    }

    /**
     * @param totalMessages the totalMessages to set
     */
    public void setTotalMessages(int totalMessages) {
        this.totalMessages = totalMessages;
    }

    /**
     * @return the listMessageses
     */
    public List<Messages> getListMessageses() {
        return listMessageses;
    }

    /**
     * @param listMessageses the listMessageses to set
     */
    public void setListMessageses(List<Messages> listMessageses) {
        this.listMessageses = listMessageses;
    }
    private final String SUCCESS = "success";
    private int totalMessages;
    private List<Messages> listMessageses;
    
    public FaqAction() {
    }
    
    public String execute() throws Exception {
        MessagesDAO messagesDAO = new MessagesDAO();
        setListMessageses(messagesDAO.getListPublishedMessages());
        if (getListMessageses() != null){
            setTotalMessages(getListMessageses().size());
        }
        return SUCCESS;
    }
    
}
