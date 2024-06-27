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
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 * @author Tiến_Đạt
 */
@WebServlet(
    name = "AdminDashboard",
    urlPatterns = {"/admin/dashboard"})
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
      List<Roles> rl = daoa.viewRoles();

      request.setAttribute("roleList", rl);
      request.getRequestDispatcher("/admin/role.jsp").forward(request, response);
    } else if ("seller".equals(state)) {
      //get data
      UserDAO udao = new UserDAO();
      List<UserAccount> lstSeller = udao.getAllSeller();
      request.setAttribute("lstSeller", lstSeller);
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
    String action = request.getParameter("do");
    HttpSession session = request.getSession();
    // user management
    if ("user".equals(state)) {
      if ("update".equals(action)) {
        int userId = Integer.parseInt(request.getParameter("userId"));
        String given_name = request.getParameter("given_name");
        String family_name = request.getParameter("family_name");
        String dob = request.getParameter("dob");
        String phone = request.getParameter("phone");
        UserAccount ua = new UserAccount(userId, given_name, family_name, phone, dob);
        daoa.userUpdate(ua);
      } else if ("add".equals(action)) {
        String given_name2 = request.getParameter("given_name2");
        String family_name2 = request.getParameter("family_name2");
        String email2 = request.getParameter("email2");
        String dob2 = request.getParameter("dob2");
        String phone2 = request.getParameter("phone2");
        String password = request.getParameter("password");
        UserAccount ua2 =
            new UserAccount(email2, password, given_name2, family_name2, phone2, dob2);
        daoa.userAdd(ua2);
      }
      doGet(request, response);
    } else if ("role".equals(state)) {
      if ("check".equals(action)) {
        String userMail = request.getParameter("userMail");
        if (userMail == null || userMail.isEmpty()) {
          request.setAttribute("errorMsg", "Email is missing or invalid!");
        } else {
          if (daou.userExisted(userMail)) {
            UserAccount ua = daou.getUserByEmail(userMail);
            session.setAttribute("ua", ua);
            request.setAttribute("successMsg", "There's a little user here!");
          } else {
            request.setAttribute("errorMsg", "No one found!");
          }
        }
      } else if ("update".equals(action)) {
        String userIdParam = request.getParameter("user");
        if (userIdParam == null || userIdParam.isEmpty()) {
          request.setAttribute("failed", "User ID is missing or invalid!");
        } else {
          try {
            int userId = Integer.parseInt(userIdParam);
            int roleId = Integer.parseInt(request.getParameter("selectRole"));
            if (daoa.updateRoles(roleId, userId)) {
              request.setAttribute("updated", "User's Permission successfully updated!");
              session.removeAttribute("ua");
            } else {
              request.setAttribute("failed", "User's Permission update failed!");
              session.removeAttribute("ua");
            }
          } catch (NumberFormatException e) {
            request.setAttribute("failed", "User ID is not a valid number!");
          }
        }
      } else if ("modify".equals(action)) {
        try {
          String roleName = request.getParameter("roleName");
          String roleDesc = request.getParameter("roleDesc");
          String roleId = request.getParameter("role");

          if (roleName == null || roleName.isEmpty()) {
            throw new IllegalArgumentException("Role name is missing or empty");
          }
          if (roleDesc == null || roleDesc.isEmpty()) {
            throw new IllegalArgumentException("Role description is missing or empty");
          }
          if (roleId == null || roleId.isEmpty()) {
            throw new IllegalArgumentException("Role ID is missing or empty");
          }

          int parsedRoleId;
          try {
            parsedRoleId = Integer.parseInt(roleId);
          } catch (NumberFormatException e) {
            throw new IllegalArgumentException("Invalid role ID: " + roleId, e);
          }

          Roles rl = new Roles(parsedRoleId, roleName, roleDesc);
          daoa.modifyRoles(rl);
          request.setAttribute("updated", "Role updated successfully");
        } catch (IllegalArgumentException e) {
          request.setAttribute("failed", "Invalid input: " + e.getMessage());
          e.printStackTrace();
        } catch (Exception e) {
          request.setAttribute("failed", "An unexpected error occurred: " + e.getMessage());
          e.printStackTrace();
        } finally {
          // You can add any cleanup code here if necessary
        }
      }
      doGet(request, response);
    }
  }
}
