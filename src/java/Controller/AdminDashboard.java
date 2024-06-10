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
                        daoa.userDelete(id + "");
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
// user management
        if ("user".equals(state)) {
            Object updateBtn = request.getParameter("update");
            Object addBtn = request.getParameter("add");
            String action = request.getParameter("do");
            if ("update".equals(action)) {
                int userId = Integer.parseInt(request.getParameter("userId"));
                String given_name = request.getParameter("given_name");
                String family_name = request.getParameter("family_name");
                String email = request.getParameter("email");
                String dob = request.getParameter("dob");
                String phone = request.getParameter("phone");
                UserAccount ua = new UserAccount(userId, email, given_name, family_name, phone, dob);
                daoa.userUpdate(ua);
            } else if ("add".equals(action)) {
                String given_name2 = request.getParameter("given_name2");
                String family_name2 = request.getParameter("family_name2");
                String email2 = request.getParameter("email2");
                String dob2 = request.getParameter("dob2");
                String phone2 = request.getParameter("phone2");
                String password = request.getParameter("password");
                UserAccount ua2 = new UserAccount(email2, password, given_name2, family_name2, phone2, dob2);
                daoa.userAdd(ua2);
            }
            doGet(request, response);

        }
    }
}
