/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.CarDao;
import Models.Car;
import Models.WishList;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author Admin
 */
@WebServlet(name = "WishlistControl", urlPatterns = {"/wishlist"})
public class WishlistControl extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/front-end/wishlist.jsp").forward(request, response);
    }

    @Override
 protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    String action = request.getParameter("action");
    CarDao dao = new CarDao();

    switch (action) {
        case "addtowish":
            int id_car = Integer.parseInt(request.getParameter("carId"));
            int id_user = Integer.parseInt(request.getParameter("userId"));
              
            Car car = dao.viewDetail(id_car);
            WishList wish = new WishList(0, id_user, id_car, car);
            dao.addToWishList(wish);
            break;

        case "delete":
            String idwishStr = request.getParameter("idwish");
            if (idwishStr != null && !idwishStr.isEmpty()) {
                int idwish = Integer.parseInt(idwishStr);
                dao.deleteFromWishList(idwish);
            } else {
                throw new ServletException("ID Wish is null or empty");
            }
            break;

        default:
            throw new AssertionError();
    }

    List<WishList> listWish = dao.viewAllWishList();
    request.setAttribute("listWish", listWish);
    request.getRequestDispatcher("/front-end/wishlist.jsp").forward(request, response);
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
