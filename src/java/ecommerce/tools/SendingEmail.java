/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.tools;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;

/**
 *
 * @author PhuNDSE63159
 */
public class SendingEmail implements Runnable {

    private String from;
    private String password;
    private String to;
    private String subject;
    private String body;
    private String url;
    private String orderId;

    public SendingEmail(String from, String password, String to, String subject, String url, String orderId) {
        this.from = from;
        this.password = password;
        this.to = to;
        this.subject = subject;
        this.body = body;
        this.url = url;
        this.orderId = orderId;
    }


    public SendingEmail() {
    }

    @Override
    public void run() {
        try {
            body = Utils.getJsp(url, orderId);
            Utils.sendMail(from, password, to, subject, body);
        } catch (MessagingException ex) {
            Logger.getLogger(SendingEmail.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
