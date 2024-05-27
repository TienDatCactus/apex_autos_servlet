package Controller;

import Util.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.security.SecureRandom;
import java.math.BigInteger;

@WebServlet(name = "MailControl", urlPatterns = { "/mail" })
public class MailControl extends HttpServlet {

    private static SecureRandom random = new SecureRandom();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/front-end/forgot.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if ("verifyEmail".equals(action)) {
            String to = request.getParameter("email");
            String newPassword = request.getParameter("re-password");
            String token = nextSessionId();

            // Store the token and the email in the session
            HttpSession session = request.getSession();
            session.setAttribute("token", token);
            session.setAttribute("mail", to);
            session.setAttribute("pass", newPassword);

            // Send the email and store the verification code in the session
            int verificationCode = Mail.sendForgotPasswordEmail(to);
            session.setAttribute("verificationCode", verificationCode);
            session.setAttribute("action", "signUp");
            response.sendRedirect("verify");

        } else if ("forgotPassword".equals(action)) {
            String to = request.getParameter("email");
            String token = nextSessionId();

            // Store the token and the email in the session
            HttpSession session = request.getSession();
            session.setAttribute("token", token);
            session.setAttribute("mail", to);

            // Send the email and store the verification code in the session
            int verificationCode = Mail.sendForgotPasswordEmail(to);
            session.setAttribute("verificationCode", verificationCode);
            session.setAttribute("action", "forgotPassword");
            response.sendRedirect("verify");
        }

    }

    public static String nextSessionId() {
        return new BigInteger(130, random).toString(32);
    }

}
