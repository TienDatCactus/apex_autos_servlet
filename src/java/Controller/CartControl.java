/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.CarDAO;
import Models.Car;
import Models.CartItems;
import Models.UserAccount;
import java.io.IOException;
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
 * @author Admin
 */
@WebServlet(name = "CartControl", urlPatterns = {"/cart"})
public class CartControl extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        CarDAO dao = new CarDAO();
        UserAccount ua = (UserAccount) session.getAttribute("user");
        List<CartItems> carts = dao.cartItems(ua.getUser_id());
        session.setAttribute("cartItems", carts);
        request.getRequestDispatcher("/front-end/cart.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        HttpSession session = request.getSession();
        UserAccount ua = (UserAccount) session.getAttribute("user");
        CarDAO dao = new CarDAO();
        switch (action) {
            case "addtocart":
                int id_car = Integer.parseInt(request.getParameter("id_car"));
                dao.addToCart(ua.getUser_id(), id_car);
                response.sendRedirect("home");
                break;
            
            case "delete":
                int item_id = Integer.parseInt(request.getParameter("item_id"));
                dao.deleteFromCart(item_id);
                response.sendRedirect("cart");
                break;
            default:
                response.sendRedirect("cart");
            
        }
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
