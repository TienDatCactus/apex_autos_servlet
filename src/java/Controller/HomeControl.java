/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.*;
import Models.Car;
import Models.CarBrand;
import Models.CarCategory;
import Models.CarImage;
import Models.CartItems;
import Models.Paging;
import Models.UserAccount;
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
        name = "HomeControl",
        urlPatterns = {"/home"})
public class HomeControl extends HttpServlet {

    CarDao dao = new CarDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String error = "";
        String success = "";
        String state = request.getParameter("state");
        HttpSession session = request.getSession();
        UserAccount ua = (UserAccount) session.getAttribute("user");
        if ("detail".equals(state)) {
            List<Car> carList = dao.viewProducts();
            int id = Integer.parseInt(request.getParameter("id"));
            Car carDT = dao.viewDetail(id);
            List<CarImage> carImage = dao.viewImageForCar();
            request.setAttribute("carImage", carImage);
            request.setAttribute("carList", carList);
            request.setAttribute("carDT", carDT);
            request
                    .getRequestDispatcher("/front-end/product-bottom-thumbnail.jsp")
                    .forward(request, response);
        } else if ("cart".equals(state)) {
            List<CarImage> carImage = dao.viewImageForCar();
            List<CartItems> carts = dao.cartItems(ua.getUser_id());
            request.setAttribute("carImage", carImage);
            session.setAttribute("cartItems", carts);
            request
                    .getRequestDispatcher("/front-end/cart.jsp")
                    .forward(request, response);
        } else {
            CarDao dao = new CarDao();
            List<Car> carList = dao.viewProducts();
            int index = 0;
            try {
                index = Integer.parseInt(request.getParameter("index"));
            } catch (Exception e) {
                index = 0;
            }
            int nrpp = 6;
            Paging p = new Paging(carList.size(), nrpp, index);
            p.calc();
            List<Car> carsOnCurrentPage = carList.subList(p.getBegin(), p.getEnd());
            List<CarImage> carImage = dao.viewImageForCar();
            List<CarCategory> carCate = dao.viewCarCategory();
            List<CarBrand> carBrand = dao.viewCarBrand();
            if (ua != null) {
                List<CartItems> carts = dao.cartItems(ua.getUser_id());
                session.setAttribute("cartItems", carts);
            }
            request.setAttribute("carImage", carImage);
            request.setAttribute("page", p);
            request.setAttribute("carList", carsOnCurrentPage);
            request.setAttribute("carCate", carCate);
            request.setAttribute("carBrand", carBrand);
            request.getRequestDispatcher("/front-end/index.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String error = "";
        String success = "";
        HttpSession session = request.getSession();
        String state = request.getParameter("state");
        UserAccount ua = (UserAccount) session.getAttribute("user");
        String action = request.getParameter("action");
        if ("cart".equals(state)) {
            String index = request.getParameter("index");
            if ("add".equals(action)) {
                String item = request.getParameter("item");
                try {
                    int itemId = Integer.parseInt(item);
                    if (dao.checkExistedItems(itemId)) {
                        error = "You cannot buy multiple cars at once !";
                    } else {
                        dao.addToCart(ua.getUser_id(), itemId);
                        success = "Add item to cart successfully !";
                    }
                } catch (Exception e) {
                    error = "Unable to add item to cart ! Error code : " + e.getMessage() + " !";
                }
                response.sendRedirect("home");
            } else if ("delete".equals(action)) {
                String item = request.getParameter("item");
                try {
                    if (item != null && !item.isEmpty()) {
                        int itemId = Integer.parseInt(item);
                        dao.deleteFromCart(itemId);
                        success = "Delete item from cart successfully !";
                    } else {
                        error = "Invalid item ID !";
                    }
                } catch (Exception e) {
                    error = "Unable to delete item from cart ! Error: " + e.getMessage() + " !";
                }
                List<CartItems> updatedCarts = dao.cartItems(ua.getUser_id());
                if (updatedCarts.isEmpty()) {
                    response.sendRedirect("home");
                }
                session.setAttribute("successMsg", success);
                session.setAttribute("errorMsg", error);
                if ("header".equals(index)) {
                    response.sendRedirect("home");
                } else if ("cart".equals(index)) {
                    response.sendRedirect("cart");
                }

            }
        }
    }

}
