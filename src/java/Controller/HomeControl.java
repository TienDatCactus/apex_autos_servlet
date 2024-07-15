/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.*;
import Constant.Constants;
import Models.*;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.PrintWriter;
import java.util.List;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONObject;

/**
 * @author Tiến_Đạt
 */
@WebServlet(
        name = "HomeControl",
        urlPatterns = {"/home"})
@MultipartConfig
public class HomeControl extends HttpServlet {

    CarDao dao = new CarDao();
    UserDAO daou = new UserDAO();
    AdminDAO daoa = new AdminDAO();

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
            String carId = request.getParameter("id");
            int id = 0;

            try {
                id = Integer.parseInt(carId);
            } catch (NumberFormatException e) {
                // Handle parsing error
                error = "Invalid car ID format";
                Logger.getLogger(HomeControl.class.getName()).log(Level.SEVERE, "Invalid car ID format", e);
            }
            Car carDT = dao.viewDetail(id);
            List<CarImage> carImage = dao.viewImageForCar();
            int idSeller = Integer.parseInt(request.getParameter("idSeller"));
            TradeMark listTradeMark = dao.getTradeMark(idSeller);
            // Set attributes for JSP
            request.setAttribute("tradeMark", listTradeMark);
            request.setAttribute("carImage", carImage);
            request.setAttribute("carList", carList);
            request.setAttribute("carDT", carDT);
            request.setAttribute("error", error);
            request.setAttribute("success", success);
            // Forward to JSP for rendering
            request.getRequestDispatcher("/front-end/product-bottom-thumbnail.jsp")
                    .forward(request, response);
        } else if ("tradeDetail".equals(state)) {
            int idTr = Integer.parseInt(request.getParameter("idTr"));
            TradeMark listTradeMark = dao.getTradeMarkByIDTrade(idTr);
            int idSell = Integer.parseInt(request.getParameter("idSell"));
            List<Car> carList = dao.getCarForOneTradeMark(idSell);
            List<CarImage> carImage = dao.viewImageForCar();
            request.setAttribute("carImage", carImage);
            request.setAttribute("carList", carList);
            request.setAttribute("tradeMark", listTradeMark);
            request
                    .getRequestDispatcher("/front-end/seller-detail.jsp")
                    .forward(request, response);
        } else if ("cart".equals(state)) {
            List<CarImage> carImage = dao.viewImageForCar();
            List<CartItems> carts = dao.cartItems(ua.getUser_id());
            session.setAttribute("cartItems", carts);
            request.setAttribute("carImage", carImage);
            request
                    .getRequestDispatcher("/front-end/cart.jsp")
                    .forward(request, response);
        } else if ("blog".equals(state)) {

            List<CarCategory> carCate = dao.viewCarCategory();
            List<CarBrand> carBrand = dao.viewCarBrand();
            List<CarImage> carImage = dao.viewImageForCar();
            List<Status> allStatus = daou.viewAllStatus();
            List<UserAccount> allAccounts = daoa.viewUsers();
            List<Comment> allComment = daou.viewAllComment();

            request.setAttribute("allComment", allComment);
            request.setAttribute("allAccounts", allAccounts);
            request.setAttribute("allStatus", allStatus);
            request.setAttribute("carCate", carCate);
            request.setAttribute("carBrand", carBrand);
            request.setAttribute("carImage", carImage);
            request.getRequestDispatcher("/front-end/blog-list.jsp").forward(request, response);
        } else if ("manage".equals(state)) {
            int id = Integer.parseInt(request.getParameter("id"));

            List<Status> listStatusFor1User = daou.viewAllStatusFor1User(id);
            List<CarImage> carImage = dao.viewImageForCar();

            request.setAttribute("listStatusFor1User", listStatusFor1User);
            request.setAttribute("carImage", carImage);
            request
                    .getRequestDispatcher("/front-end/blog-manager.jsp")
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
                    if (dao.checkExistedItems(itemId, ua.getUser_id())) {
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
        } else if ("blog".equals(state)) {
            switch (action) {
                case "add":
                    int user_id = Integer.parseInt(request.getParameter("idu"));
                    String title = request.getParameter("title");
                    String content = request.getParameter("content");

                    Collection<Part> parts = request.getParts();
                    String path = request.getServletContext().getRealPath("/images");
                    File dir = new File(path);
                    if (!dir.exists()) {
                        dir.mkdirs();
                    }

                    List<String> imagePaths = new ArrayList<>(); // List of image paths

                    for (Part part : parts) {
                        String fileName = part.getSubmittedFileName();
                        if (fileName != null && !fileName.isEmpty()) {
                            File image = new File(dir, fileName);
                            part.write(image.getAbsolutePath());
                            imagePaths.add(
                                    request.getContextPath() + "/images/" + fileName); // Add image path to list
                        }
                    }
                    Status s = new Status(0, content, imagePaths, title, user_id);
                    daou.addNewStatus(s);
                    break;
                case "update":
                    int status_id = Integer.parseInt(request.getParameter("statusIdEditInput"));
                    String titleEditInput = request.getParameter("titleEditInput");
                    String contentEditInput = request.getParameter("contentEditInput");

                    Collection<Part> partss = request.getParts();
                    String pathh = request.getServletContext().getRealPath("/images");
                    File dirr = new File(pathh);
                    if (!dirr.exists()) {
                        dirr.mkdirs();
                    }

                    List<String> imagePathss = new ArrayList<>(); // List of image paths

                    for (Part part : partss) {
                        String fileName = part.getSubmittedFileName();
                        if (fileName != null && !fileName.isEmpty()) {
                            File image = new File(dirr, fileName);
                            part.write(image.getAbsolutePath());
                            imagePathss.add(
                                    request.getContextPath() + "/images/" + fileName); // Add image path to list
                        }
                    }
                    Status ss = new Status(status_id, contentEditInput, imagePathss, titleEditInput, 0);
                    daou.updateStatus(ss);
                    break;
                case "delete":
                    int status_del = Integer.parseInt(request.getParameter("idDel"));
                    daou.deleteStatus(status_del);
                    break;
                case "addcmt":
                    int status_id_check = Integer.parseInt(request.getParameter("status_id"));
                    int user_id_check = Integer.parseInt(request.getParameter("user_id"));
                    String comment = request.getParameter("comment");
                    Comment c = new Comment(0, comment, status_id_check, user_id_check);
                    daou.addNewComment(c);
                    break;
                case "adCmt":
                    int carIdCheck = Integer.parseInt(request.getParameter("car_id"));
                    int userIdCheck = Integer.parseInt(request.getParameter("user_id"));
                    String commentCheck = request.getParameter("comment");
                    CommentCar cc = new CommentCar(0, commentCheck, carIdCheck, userIdCheck);
                    daou.addNewCommentFor1Car(cc);
                    break;
                default:
                    throw new AssertionError();
            }
            List<Status> allStatus = daou.viewAllStatus();
            List<Comment> allComment = daou.viewAllComment();
            List<UserAccount> allAccounts = daoa.viewUsers();
            List<Comment> allComment1Car = daou.viewAllComment();

            request.setAttribute("allStatus", allStatus);
            request.setAttribute("allComment", allComment);
            request.setAttribute("allAccounts", allAccounts);
            request.setAttribute("allComment1Car", allComment1Car);

            request.getRequestDispatcher("/front-end/blog-list.jsp").forward(request, response);
        } else if ("detail".equals(state)) {
            switch (action) {
                case "adCmt":
                    int carIdCheck = Integer.parseInt(request.getParameter("id"));
                    int userIdCheck = Integer.parseInt(request.getParameter("user_id"));
                    String commentCheck = request.getParameter("comment");
                    CommentCar cc = new CommentCar(0, commentCheck, carIdCheck, userIdCheck);
                    daou.addNewCommentFor1Car(cc);
                    break;
                default:
                    throw new AssertionError();
            }
            List<Status> allStatus = daou.viewAllStatus();
            List<Comment> allComment = daou.viewAllComment();
            List<UserAccount> allAccounts = daoa.viewUsers();
            List<Comment> allComment1Car = daou.viewAllComment();
            // Write JSON response to output
            out.print(jsonResponse.toString());
            out.flush();
            request.setAttribute("allStatus", allStatus);
            request.setAttribute("allComment", allComment);
            request.setAttribute("allAccounts", allAccounts);
            request.setAttribute("allComment1Car", allComment1Car);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    } // </editor-fold>
}
