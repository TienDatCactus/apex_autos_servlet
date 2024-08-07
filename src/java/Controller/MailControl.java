package Controller;

import Util.Mail;
import DAO.UserDAO;
import Models.UserAccount;
import Util.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.security.SecureRandom;
import java.util.Enumeration;
import java.math.BigInteger;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "MailControl", urlPatterns = {"/mail"})
public class MailControl extends HttpServlet {

    UserDAO dao;
    private static SecureRandom random = new SecureRandom();

    public void init() {
        dao = new UserDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/front-end/forgot.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Logger logger = Logger.getLogger(getClass().getName());
        String to = request.getParameter("email");
        HttpSession session = request.getSession();
        String action = request.getParameter("action");
        if ("register".equals(action)) {
            String newPassword = request.getParameter("re-password");
            String token = nextSessionId();
            logger.log(Level.INFO, "Token: {0}", token);
            UserAccount ua = new UserAccount(to, newPassword);
            if (dao.userExisted(ua.getEmail())) {
                request.setAttribute("errorMessage", "Tài khoản đã xuất hiện trên hệ thống !");
                request.getRequestDispatcher("/front-end/login.jsp").forward(request, response);
            } else {
                session.setAttribute("token", token);
                session.setAttribute("mail", to);
                session.setAttribute("pass", newPassword);

                // Send the email and store the verification code in the session
                int verificationCode = Mail.sendPasscode(to);
                session.setAttribute("verificationCode", verificationCode);
                session.setAttribute("action", "register");
                request.getRequestDispatcher("verify").forward(request, response);
            }
        } else if ("forgot".equals(action)) {
            if (!dao.userExisted(to)) {
                session.setAttribute("alert", "Tài khoản không xuất hiện trên hệ thống !");
                response.sendRedirect("mail");
                return;
            }
            String token = nextSessionId();

            // Store the token and the email in the session
            session.setAttribute("token", token);
            session.setAttribute("mail", to);

            // Send the email and store the verification code in the session
            int verificationCode = Mail.sendPasscode(to);
            session.setAttribute("verificationCode", verificationCode);
            session.setAttribute("action", "forgot");
            request.getRequestDispatcher("verify").forward(request, response);
        }

    }

    public static String nextSessionId() {
        return new BigInteger(130, random).toString(32);
    }

}
