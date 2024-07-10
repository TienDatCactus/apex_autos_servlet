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
import Models.Comment;
import Models.CommentCar;
import Models.Paging;
import Models.Status;

import Models.TradeMark;
import Models.UserAccount;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

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
        String state = request.getParameter("state");
        if ("detail".equals(state)) {
            List<Car> carList = dao.viewProducts();
            List<Car> carTrending = dao.viewTrending();
            int id = Integer.parseInt(request.getParameter("id"));
            int idSe = dao.getSellerIDByCarID(id);
            TradeMark tradeMark = dao.viewTradeMark(idSe);
            Car carDT = dao.viewDetail(id);
            List<CommentCar> allComment1Car = daou.viewAllCommentFor1Car();
            List<CarImage> carImage = dao.viewImageForCar();
            List<UserAccount> allAccounts = daoa.viewUsers();

            request.setAttribute("tradeMark", tradeMark);
            request.setAttribute("carTrending", carTrending);
            request.setAttribute("carImage", carImage);
            request.setAttribute("carList", carList);
            request.setAttribute("carDT", carDT);
            request.setAttribute("allComment1Car", allComment1Car);
            request.setAttribute("allAccounts", allAccounts);
            request
                    .getRequestDispatcher("/front-end/product-bottom-thumbnail.jsp")
                    .forward(request, response);
        } else if ("blog".equals(state)) {

            List<Car> carTrending = dao.viewTrending();
            List<CarCategory> carCate = dao.viewCarCategory();
            List<CarBrand> carBrand = dao.viewCarBrand();
            List<CarImage> carImage = dao.viewImageForCar();
            List<Status> allStatus = daou.viewAllStatus();
            List<UserAccount> allAccounts = daoa.viewUsers();
            List<Comment> allComment = daou.viewAllComment();

            request.setAttribute("carTrending", carTrending);
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
            List<Car> carTrending = dao.viewTrending();
            List<CarImage> carImage = dao.viewImageForCar();

            request.setAttribute("carTrending", carTrending);
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
            int nrpp = 9;
            Paging p = new Paging(carList.size(), nrpp, index);
            p.calc();
            List<Car> carsOnCurrentPage = carList.subList(p.getBegin(), p.getEnd());
            List<CarImage> carImage = dao.viewImageForCar();
            List<CarCategory> carCate = dao.viewCarCategory();
            List<CarBrand> carBrand = dao.viewCarBrand();
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
        String state = request.getParameter("state");
        String action = request.getParameter("action");
        if ("blog".equals(state)) {
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

            request.setAttribute("allStatus", allStatus);
            request.setAttribute("allComment", allComment);
            request.setAttribute("allAccounts", allAccounts);
            request.setAttribute("allComment1Car", allComment1Car);
        }
        doGet(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    } // </editor-fold>
}
