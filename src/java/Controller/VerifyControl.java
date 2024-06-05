/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.util.logging.Level;
import java.util.logging.Logger;
import java.io.IOException;
import DAO.*;
import Models.UserAccount;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Tiến_Đạt
 */
@WebServlet(name = "VerifyControl", urlPatterns = {"/verify"})
public class VerifyControl extends HttpServlet {

    UserDAO dao;

    public void init() {
        dao = new UserDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/front-end/otp.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Logger logger = Logger.getLogger(getClass().getName());
        HttpSession session = request.getSession();
        String action = (String) session.getAttribute("action");
        int storedCode = (int) session.getAttribute("verificationCode");
        String first = request.getParameter("first");
        String second = request.getParameter("second");
        String third = request.getParameter("third");
        String fourth = request.getParameter("fourth");
        String fifth = request.getParameter("fifth");
        String sixth = request.getParameter("sixth");
        String otp = first + second + third + fourth + fifth + sixth;
        if ("register".equals(action)) {
            String mail = (String) session.getAttribute("mail");
            String pass = (String) session.getAttribute("pass");
            logger.log(Level.INFO, "mail:{0}", mail);
            logger.log(Level.INFO, "pass:{0}", pass);
            try {
                if (storedCode == Integer.parseInt(otp)) {
                    UserAccount user = new UserAccount(mail, pass);
                    if (dao.checkRegister(user)) {
                        request.setAttribute("successMessageVerify", "Registration successful. Please login.");
                        request.getRequestDispatcher("/front-end/login.jsp").forward(request, response);
                    } else {
                        request.setAttribute("errorMessageVerify", "Register failed...");
                        request.getRequestDispatcher("/front-end/sign-up.jsp").forward(request,
                                response);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                request.getRequestDispatcher("/front-end/otp.jsp").forward(request,
                        response);
            }
        } else if ("forgot".equals(action)) {
            try {
                if (storedCode == Integer.parseInt(otp)) {
                    request.getRequestDispatcher("/front-end/reset-pw.jsp").forward(request, response);
                } else {
                    request.setAttribute("errorMessageVerify", "Verification failed. The code you entered is incorrect.");
                    request.getRequestDispatcher("/front-end/otp.jsp").forward(request,
                            response);
                }
            } catch (Exception e) {
                e.printStackTrace();
                response.sendRedirect("verify");
            }
        } else {
            request.setAttribute("errorMessageVerify", "Verification failed. The code you entered is incorrect.");
            request.getRequestDispatcher("/front-end/otp.jsp").forward(request,
                    response);
        }

    }
}
