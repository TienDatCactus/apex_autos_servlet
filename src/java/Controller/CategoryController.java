/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.CarDao;
import Models.CarCategory;
import Models.CarImage;
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
@WebServlet(name = "CategoryController", urlPatterns = {"/seller/category"})
public class CategoryController extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CarDao daoc = new CarDao();
        List<CarCategory> carCategory = daoc.viewCarCategory();

        request.setAttribute("carCategory", carCategory);
        request.getRequestDispatcher("/seller/category.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        CarDao daoc = new CarDao();
        switch (action) {
            case "edit":
                int id = Integer.parseInt(request.getParameter("id"));
                String name = request.getParameter("name");

                CarCategory catee = new CarCategory(id, name);
                daoc.updateCategory(catee);
                break;
            case "add":
                String categoryName = request.getParameter("categoryName");
                CarCategory cate = new CarCategory(0, categoryName);
                daoc.addNewCategory(cate);

                break;
            default:
                throw new AssertionError();
        }
        response.sendRedirect("category");
    }

   
}
