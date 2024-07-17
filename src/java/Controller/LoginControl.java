/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.io.IOException;
import java.util.Enumeration;

import Models.*;
import DAO.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Tiến_Đạt
 *
 */
@WebServlet(name = "LoginControl", urlPatterns = {"/login"})
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
            throws ServletException, IOException {
        Logger logger = Logger.getLogger(getClass().getName());
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserAccount userAccount = new UserAccount(email, password);
        CarDao daoc = new CarDao();
        UserDAO daou = new UserDAO();
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
            logger.log(Level.INFO, "All session attributes have been removed.");
        } else {
            logger.log(Level.INFO, "Not all session attributes have been removed.");
        }

        boolean loginResult = daou.checkLogin(userAccount);

        if (loginResult) {
            userAccount = daou.getUserByEmail(userAccount.getEmail());
            if (userAccount.getPermission_id() == 1) {
                session.setAttribute("user", userAccount);
                response.sendRedirect("admin/dashboard");
            } else if (userAccount.getPermission_id() == 2) {
                session.setAttribute("user", userAccount);
                response.sendRedirect("home");
            } else if (userAccount.getPermission_id() == 3) {
                CarDao dao = new CarDao();
                List<Address> listAddr = daou.viewAllAddressFor1User(userAccount.getUser_id());
                List<CartItems> carts = dao.cartItems(userAccount.getUser_id());
                session.setAttribute("cartItems", carts);
                session.setAttribute("user", userAccount);
                session.setAttribute("listAddr", listAddr);

                // Login successful, redirect to another page
                response.sendRedirect("home");
            }

        } else {
            // Login failed, redirect back to login page
            request.setAttribute("errorMessage", "Tài khoản hoặc mật khẩu không hợp lệ !");
            request.getRequestDispatcher("/front-end/login.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
