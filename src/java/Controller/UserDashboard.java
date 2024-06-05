/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import DAO.*;
import Models.*;
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author Admin
 */
@WebServlet(name = "UserDashBoard", urlPatterns = {"/user/dashboard"})
public class UserDashboard extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.getRequestDispatcher("/front-end/user-dashboard.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        UserDAO dao = new UserDAO();
        String action = request.getParameter("action");

        switch (action) {
            case "add":
                int id = Integer.parseInt(request.getParameter("idz"));
                String address = request.getParameter("address");
                int pin = Integer.parseInt(request.getParameter("pin"));

                Address add = new Address(0, address, pin, id);
                dao.addNewAddress(add);
                List<Address> listAddr = dao.viewAllAddressFor1User(id);
                session.setAttribute("listAddr", listAddr);
                break;
            case "edit":
                int idz = Integer.parseInt(request.getParameter("idz"));
                int address_id = Integer.parseInt(request.getParameter("address_id"));
                String address_edit = request.getParameter("address");
                int pin_edit = Integer.parseInt(request.getParameter("pin_code"));
                Address add1 = new Address(address_id, address_edit, pin_edit, 0);
                dao.editAddress(add1);
                List<Address> listAddrr = dao.viewAllAddressFor1User(idz);
                session.setAttribute("listAddr", listAddrr);
                break;
            case "delete":
                int idv = Integer.parseInt(request.getParameter("idz"));
                int id_delete = Integer.parseInt(request.getParameter("id_address"));
                dao.deleteAddress(id_delete);
                List<Address> listAddrrr = dao.viewAllAddressFor1User(idv);
                session.setAttribute("listAddr", listAddrrr);
                break;
            case "editPro":
                int id_pro = Integer.parseInt(request.getParameter("idz"));
                String given_name = request.getParameter("fname");
                String family_name = request.getParameter("lname");
                String dob = request.getParameter("dob");
                String phone = request.getParameter("phone");
                UserAccount acc = new UserAccount(id_pro, given_name, family_name, dob, phone);
                dao.editProfile(acc);
                List<Address> listAddrrz = dao.viewAllAddressFor1User(id_pro);
                session.setAttribute("listAddr", listAddrrz);
                session.setAttribute("userd", acc);
                break;
            default:
                throw new AssertionError();
        }

        response.sendRedirect("userdashboard");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
