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
import java.io.PrintWriter;
import java.util.List;
import org.json.JSONObject;

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
            session.setAttribute("cartItems", carts);
            request.setAttribute("carImage", carImage);
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        String state = request.getParameter("state");
        String action = request.getParameter("action");
        String item = request.getParameter("item");
        HttpSession session = request.getSession();

        UserAccount ua = (UserAccount) session.getAttribute("user");
        PrintWriter out = response.getWriter();
        JSONObject jsonResponse = new JSONObject();

        if ("cart".equals(state)) {
            if ("add".equals(action)) {
                try {
                    int itemId = Integer.parseInt(item);
                    if (dao.checkExistedItems(itemId,ua.getUser_id())) {
                        jsonResponse.put("error", false);
                        jsonResponse.put("message", "Item already exists in cart!");
                    } else {
                        dao.addToCart(ua.getUser_id(), itemId);
                        jsonResponse.put("success", true);
                        jsonResponse.put("message", "Item added to cart successfully!");
                    }
                } catch (Exception e) {
                    jsonResponse.put("error", false);
                    jsonResponse.put("message", "Failed to add item to cart. Error: " + e.getMessage());
                }
            } else if ("delete".equals(action)) {
                try {
                    if (item != null && !item.isEmpty()) {
                        int itemId = Integer.parseInt(item);
                        if (dao.deleteFromCart(itemId)) {
                            jsonResponse.put("success", true);
                            jsonResponse.put("message", "Item deleted from cart successfully!");
                        }
                    } else {
                        jsonResponse.put("error", false);
                        jsonResponse.put("message", "Invalid item ID!");
                    }
                } catch (Exception e) {
                    jsonResponse.put("error", false);
                    jsonResponse.put("message", "Failed to delete item from cart. Error: " + e.getMessage());
                }
            }
        }

        // Write JSON response to output
        out.print(jsonResponse.toString());
        out.flush();
    }
}
