/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.*;
import Models.Car;
import Models.CarImage;
import Models.Paging;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @author Tiến_Đạt
 */
@WebServlet(
    name = "HomeControl",
    urlPatterns = {"/home"})
public class HomeControl extends HttpServlet {
  private static final int NRPP = 8; // Number of Records Per Page

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

    CarDao dao = new CarDao();
    List<Car> carList = dao.viewProducts();
    int index = 0;
    try {
      index = Integer.parseInt(request.getParameter("index"));
    } catch (Exception e) {
      index = 0;
    }
    int nrpp = 10;
    Paging p = new Paging(carList.size(), nrpp, index);
    p.calc();
    List<Car> carsOnCurrentPage = carList.subList(p.getBegin(), p.getEnd());
    List<CarImage> carImage = dao.viewImageForCar();
    request.setAttribute("carImage", carImage);
    request.setAttribute("page", p);
    request.setAttribute("carList", carsOnCurrentPage);
    request.getRequestDispatcher("/front-end/index.jsp").forward(request, response);
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {}

  @Override
  public String getServletInfo() {
    return "Short description";
  } // </editor-fold>
}
