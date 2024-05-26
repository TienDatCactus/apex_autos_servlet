package Util;

import javax.mail.*;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
import java.util.Random;
import javax.mail.internet.InternetAddress;

public class Mail {

    private static final String from = "apexautos1110@gmail.com";
    private static final String pass = "kakwgvyrygrsujzk";

    public static int sendForgotPasswordEmail(String to) {
        Properties props = System.getProperties();
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.user", from);
        props.put("mail.smtp.password", pass);
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");

        Session session = Session.getDefaultInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, pass);
            }
        });

        MimeMessage message = new MimeMessage(session);
        int verificationCode = 0;
        try {
            Random random = new Random();
            verificationCode = 100000 + random.nextInt(900000);
            String htmlContent = "<div style='padding: 20px; background-color: #f9f9f9; border-radius: 10px; font-family: Arial, sans-serif;'>"
                    + "<h1 style='color: #4a4a4a;'>Password Reset Request</h1>"
                    + "<p style='font-size:18px;color:#333;'>Dear user,</p>"
                    + "<p style='font-size:18px;color:#333;'>You have requested to reset your password. Here's your verification code:</p>"
                    + "<p style='font-size:24px; color: #ff6347;'><b>" + verificationCode + "</b></p>"
                    + "<p style='font-size:18px; color:#333;'>If you did not request a password reset, please ignore this email.</p>"
                    + "<hr style='border: none; border-top: 1px solid #eee;'>"
                    + "<p style='font-size:14px; color:#aaa;'>This is an automated message, please do not reply.</p>"
                    + "</div>";
            message.setFrom(new InternetAddress(from));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject("Password Reset Request");
            message.setContent(htmlContent, "text/html");
            Transport.send(message);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return verificationCode;
    }
}
