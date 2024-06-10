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
@WebServlet(name = "AdminDashboard", urlPatterns = {"/admin/dashboard"})
public class AdminDashboard extends HttpServlet {

    private static AdminDAO daoa;
    private static UserDAO daou;

    public void init() {
        daoa = new AdminDAO();
        daou = new UserDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String state = request.getParameter("state");
        if ("user".equals(state)) {
            Object type = request.getParameter("type");
            Object id = request.getParameter("id");
            if (type != null) {
                type = type + "";
                if (type.equals("update")) {
                    if (id != null) {
                        request.setAttribute("update_id", id + "");
                    } else {
                        request.removeAttribute("update_id");
                    }
                } else if (type.equals("delete")) {
                    if (id != null) {
                        
                    }
                }
            }
            List<UserAccount> users = daoa.viewUsers();
            request.setAttribute("userList", users);
            request.getRequestDispatcher("/admin/user.jsp").forward(request, response);
        } else if ("role".equals(state)) {
            request.getRequestDispatcher("/admin/role.jsp").forward(request, response);
        } else if ("seller".equals(state)) {
            request.getRequestDispatcher("/admin/seller.jsp").forward(request, response);
        } else if ("setting".equals(state)) {
            request.getRequestDispatcher("/admin/settings.jsp").forward(request, response);
        } else if ("chart".equals(state)) {
            request.getRequestDispatcher("/admin/charts.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String state = request.getParameter("state");
        String action = request.getParameter("action");
        
        if ("user".equals(state)) {
            String userId= request.getParameter("userId");
            String given_name = request.getParameter("given_name");
            String family_name = request.getParameter("family_name");
            String email = request.getParameter("email");
            String dob = request.getParameter("dob");
            String phone = request.getParameter("phone");
            Object updateBtn = request.getParameter("update");
            Object addBtn = request.getParameter("add");
            UserAccount ua = new UserAccount(userId,email, given_name, family_name, phone, dob);

            if (updateBtn != null && "modify".equals(action)) {
                daoa.userUpdate(ua);
            } else if (addBtn != null &&"modify".equals(action)) {
                String password = request.getParameter("password");
                UserAccount ua2 = new UserAccount(email, password, given_name, family_name, phone, dob);
                daoa.userAdd(ua2);
            }
            doGet(request, response);
        }
    }

}
