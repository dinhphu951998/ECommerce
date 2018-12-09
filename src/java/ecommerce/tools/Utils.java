/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.tools;

import com.google.gson.Gson;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicNameValuePair;

/**
 *
 * @author PhuNDSE63159
 */
public class Utils {

    public static String encryptPassword(String passwordText) throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("SHA-256");
        md.update(passwordText.getBytes());
        byte[] bytes = md.digest();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < bytes.length; i++) {
            sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
        }
        return sb.toString();
    }

    public static String getDynamicId() {
        return System.currentTimeMillis() + "";
    }

    public static void sendMail(String from, String passwordFrom, String to,
            String subject, String body) throws MessagingException {

        Properties properties = getProperty();

        Session session = Session.getDefaultInstance(properties, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, passwordFrom);
            }
        });
        
        Message message = new MimeMessage(session);

        message.setFrom(new InternetAddress(from));

        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));

        message.setSubject(subject);

        String htmlText = body.replaceAll("  ", " ");
        message.setContent(htmlText, "text/html;charset=\"UTF-8\"");
        message.setHeader("Content-Type", "text/html;charset=\"utf-8\"");
        
        Transport.send(message);
    }

    private static Properties getProperty() {
        Properties props = new Properties();

        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        return props;
    }

//    GetCartTextEmail
    public static String getJsp(String url, String orderId) {
        String result = "";
        try {
            // create HTTP Client
            HttpClient httpClient = HttpClientBuilder.create().build();

            // Create new getRequest with below mentioned URL
            HttpPost postRequest = new HttpPost(url);

            // Add additional header to getRequest which accepts application/xml data
            postRequest.addHeader("accept", "text/html");

            //Add Parameters
            ArrayList<NameValuePair> postParameters = new ArrayList<>();
            postParameters.add(new BasicNameValuePair("orderId", orderId));

            //Add param to post request;
            postRequest.setEntity(new UrlEncodedFormEntity(postParameters));

            // Execute your request and catch response
            HttpResponse response = httpClient.execute(postRequest);

            // Check for HTTP response code: 200 = success
            if (response.getStatusLine().getStatusCode() != 200) {
                throw new RuntimeException("Failed : HTTP error code : " + response.getStatusLine().getStatusCode());
            }

            // Get-Capture Complete application/xml body response
            BufferedReader br = new BufferedReader(new InputStreamReader( response.getEntity().getContent(), Charset.forName("UTF-8") ));
            String output;

            // Simply iterate through XML response and show on console.
            while ((output = br.readLine()) != null) {
                if (output.trim().length() != 0) {
                    result += output;
                }
            }

        } catch (ClientProtocolException e) {
            e.printStackTrace();

        } catch (IOException e) {
            e.printStackTrace();
        }
        return result;
    }
}
