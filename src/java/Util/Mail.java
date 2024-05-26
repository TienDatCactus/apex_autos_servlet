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
            String htmlContent = "<p>Dear user,</p>"
                    + "<p style='font-size:20px'>You have requested to reset your password. Here's the f*kin code:</p>"
                    + "<p style='font-size:30px'>Your verification code is: <b>" + verificationCode
                    + "</b></p>"
                    + "<p style='font-size:20px; color:#ccc'>If you did not request a password reset, please ignore this email.</p>";
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
