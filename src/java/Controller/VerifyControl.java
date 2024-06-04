/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
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
        HttpSession session = request.getSession();
        String action = request.getParameter("action");
        int storedCode = (int) session.getAttribute("verificationCode");

        String first = request.getParameter("first");
        String second = request.getParameter("second");
        String third = request.getParameter("third");
        String fourth = request.getParameter("fourth");
        String fifth = request.getParameter("fifth");
        String sixth = request.getParameter("sixth");
        String otp = first + second + third + fourth + fifth + sixth;
        if ("signUp".equals(action)) {
            String mail = (String) session.getAttribute("mail");
            String pass = (String) session.getAttribute("pass");
            try {
                if (storedCode == Integer.parseInt(otp)) {
                    UserAccount user = new UserAccount();
                    user.setEmail(mail);
                    user.setPassword(pass);
                    if (dao.userExisted(user.getEmail())) {

                    }
                    try {
                        if (dao.checkRegister(user)) {
                            int id = dao.getUserId(user.getEmail());
                            if (id != -1 && dao.addRoles(user)) {
                                session.setAttribute("successMessage", "Registration successful. Please login.");
                                response.sendRedirect("login");
                            } else {
                                request.setAttribute("errorMessage", "Add role failed...");
                                request.getRequestDispatcher("/front-end/sign-up.jsp").forward(request,
                                        response);
                            }
                        }
                    } catch (Exception e) {
                        session.setAttribute("errorMessage", "Registration failed: " + e.getMessage());
                        response.sendRedirect("register");
                    }
                }
            } catch (NumberFormatException e) {
                session.setAttribute("errorMessage",
                        "Verification failed. The code you entered is not a valid number.");
                response.sendRedirect("verify");
            }
        } else {
            session.setAttribute("errorMessage", "Verification failed. The code you entered is incorrect.");
            response.sendRedirect("verify");
        }

//        try {
//            if (storedCode == Integer.parseInt(otp)) {
//                response.sendRedirect("reset");
//            } else {
//                session.setAttribute("errorMessage", "Verification failed. The code you entered is incorrect.");
//                response.sendRedirect("verify");
//            }
//        } catch (NumberFormatException e) {
//            session.setAttribute("errorMessage",
//                    "Verification failed. The code you entered is not a valid number.");
//            response.sendRedirect("verify");
//        }
    }

}
