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
        request.getRequestDispatcher("/front-end/cart.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Logger logger = Logger.getLogger(getClass().getName());
        String action = request.getParameter("action");
        HttpSession session = request.getSession();
      UserAccount ua = (UserAccount) session.getAttribute("user");
        CarDAO dao = new CarDAO();
        switch (action) {
            case "addtocart":
                int id_car = Integer.parseInt(request.getParameter("id_car"));
                logger.log(Level.INFO, "car: {0}", id_car);
                dao.addToCart(ua.getUser_id(), id_car);
                break;
            
            case "delete":
                String item_id = request.getParameter("idwish");
                if (item_id != null && !item_id.isEmpty()) {
                    int item = Integer.parseInt(item_id);
                    dao.deleteFromCart(item);
                } else {
                    throw new ServletException("Cart id is null or empty");
                }
                break;
            
            default:
                List<CartItems> carts = dao.cartItems(ua.getUser_id());
                session.setAttribute("cartItems", carts);
                request.getRequestDispatcher("/front-end/cart.jsp").forward(request, response);
                break;
        }
        response.sendRedirect("home");
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
