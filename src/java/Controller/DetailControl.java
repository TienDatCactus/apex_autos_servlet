/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import DAO.CarDao;
import Models.Car;
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
 * @author Tiến_Đạt
 */
@WebServlet(name="DetailController", urlPatterns={"/detail"})
public class DetailControl extends HttpServlet {
    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        CarDao dao = new CarDao();
        List<Car> carList = dao.viewProducts();
        int id = Integer.parseInt(request.getParameter("id"));
        Car carDT = dao.viewDetail(id);
         request.setAttribute("carList", carList);
        request.setAttribute("carDT", carDT);
        request.getRequestDispatcher("/front-end/product-bottom-thumbnail.jsp").forward(request, response);
    } 

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
