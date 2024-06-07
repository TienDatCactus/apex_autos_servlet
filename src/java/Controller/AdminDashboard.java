/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Models.*;
import DAO.*;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Tiến_Đạt
 */
@WebServlet(name = "AdminDashboard", urlPatterns = {"/admin"})
public class AdminDashboard extends HttpServlet {

    private static AdminDAO daoa;

    public void init() {
        daoa = new AdminDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("show-user".equals(action)) {
            List<UserAccount> users = daoa.viewUsers();
            request.setAttribute("userList", users);
            request.getRequestDispatcher("/back-end/all-users.jsp").forward(request, response);
        } else if ("add-user".equals(action)) {
            request.getRequestDispatcher("/back-end/add-new-user.jsp").forward(request, response);
        } else if ("show-role".equals(action)) {
            request.getRequestDispatcher("/back-end/role.jsp").forward(request, response);
        } else if ("create-role".equals(action)) {
            request.getRequestDispatcher("/back-end/create-role.jsp").forward(request, response);
        } else if ("request".equals(action)) {
            request.getRequestDispatcher("/back-end/support-ticket.jsp").forward(request, response);
        }
        request.getRequestDispatcher("/back-end/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
