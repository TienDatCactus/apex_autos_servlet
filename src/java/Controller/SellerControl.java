/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.UserDAO;
import Models.UserAccount;
import Util.Mail;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Tiến_Đạt
 */
@WebServlet(name = "SellerControl", urlPatterns = {"/seller"})
public class SellerControl extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.getRequestDispatcher("/front-end/seller-become.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {

            String mail = request.getParameter("seller-mail");
            String pass = request.getParameter("seller-pass");
            //
            UserDAO dao = new UserDAO();
            //check email exist
            if (dao.userExisted(mail)) {
                request.setAttribute("errorMessage", "Existed account found on the system !");
                request.getRequestDispatcher("/front-end/seller-become.jsp").forward(request, response);
            } else {
                //register
                dao.registerSeller(new UserAccount(mail, pass));
                request.setAttribute("message", "Register seller success !");
                request.getRequestDispatcher("/front-end/seller-become.jsp").forward(request, response);
            }
        } catch (Exception e) {
            request.setAttribute("errorMessage", "Error: " + e);
            request.getRequestDispatcher("/front-end/seller-become.jsp").forward(request, response);
        }
    }
}
