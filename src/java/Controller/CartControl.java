/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.CarDAO;
import Models.Car;
import Models.CartItems;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

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
        String action = request.getParameter("action");
        int id_car = Integer.parseInt(request.getParameter("carId"));
        int id_user = Integer.parseInt(request.getParameter("userId"));
        HttpSession session = request.getSession();
        CarDAO dao = new CarDAO();
        switch (action) {
            case "addtocart":

                Car car = dao.viewDetail(id_car);
                dao.addToCart(id_user, id_car);
                response.sendRedirect("home");
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
                List<CartItems> carts = dao.cartItems(id_user);
                session.setAttribute("cartItems", carts);
                request.getRequestDispatcher("/front-end/cart.jsp").forward(request, response);
                break;
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
