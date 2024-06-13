/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import DAO.CarDao;
import Models.CarBrand;
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
@WebServlet(name="BrandController", urlPatterns={"/seller/brand"})
public class BrandController extends HttpServlet {
   
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        CarDao daoc = new CarDao();
        List<CarBrand> carBrand = daoc.viewCarBrand();
        
        
        request.setAttribute("carBrand", carBrand);
        
        request.getRequestDispatcher("/seller/brand.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String action = request.getParameter("action");
        CarDao daoc = new CarDao();
        switch (action) {
            case "edit":
                int id = Integer.parseInt(request.getParameter("id"));
                String name = request.getParameter("name");

                CarBrand carb = new CarBrand(id, name);
                daoc.updateCBrand(carb);
                break;
            case "add":
                String brandName = request.getParameter("brandName");
                CarBrand carbb = new CarBrand(0, brandName);
                daoc.addNewBrand(carbb);

                break;
            default:
                throw new AssertionError();
        }
         response.sendRedirect("brand");
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
