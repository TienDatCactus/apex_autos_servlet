 /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Models.*;
import DAO.*;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "RegisterControl", urlPatterns = {"/register"})
public class RegisterControl extends HttpServlet {

    private UserDAO userDao; 

    public void init() {
        userDao = new UserDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.getRequestDispatcher("/front-end/sign-up.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        HttpSession sess=  request.getSession();
        sess.setAttribute("action", sess);
//        String email = request.getParameter("email");
//        String password = request.getParameter("re-password");
//
//        UserAccount user = new UserAccount();
//        user.setEmail(email);
//        user.setPassword(password);
//        try {
//
//            userDao.checkRegister(user);
//            request.getRequestDispatcher("/front-end/login.jsp").forward(request, response);
//        } catch (Exception e) {
//            request.setAttribute("errorMessage", "Registration failed: " + e.getMessage());
//            request.getRequestDispatcher("/front-end/sign-up.jsp").forward(request, response);
//        }
    }
}
