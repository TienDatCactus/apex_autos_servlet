/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import Models.*;
import DAO.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Tiến_Đạt
 *
 */
@WebServlet(name = "LoginControl", urlPatterns = { "/login" })
public class LoginControl extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the
    // + sign on the left to edit the code.">
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.getRequestDispatcher("/front-end/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserAccount userAccount = new UserAccount(email, password);
        UserDAO userDAO = new UserDAO();
        HttpSession session = request.getSession();
        // delete un used session attributes
        Enumeration<String> attributeNames = session.getAttributeNames();
        while (attributeNames.hasMoreElements()) {
            String attributeName = attributeNames.nextElement();
            session.removeAttribute(attributeName);
        }
        // check session attributes
        attributeNames = session.getAttributeNames();
        if (!attributeNames.hasMoreElements()) {
            System.out.println("All session attributes have been removed.");
        } else {
            System.out.println("Not all session attributes have been removed.");
        }
        boolean loginResult = userDAO.checkLogin(userAccount);

        if (loginResult) {
            // Login successful, redirect to another page
            request.getRequestDispatcher("/front-end/index.jsp").forward(request, response);
            response.sendRedirect("home");
        } else {
            // Login failed, redirect back to login page
            request.setAttribute("errorMessage", "Invalid email or password.");
            request.getRequestDispatcher("/front-end/login.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
