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
import Models.Paging;
import Models.UserAccount;
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
  CarDao dao = new CarDao();

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String state = request.getParameter("state");
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
      throws ServletException, IOException {}

  @Override
  public String getServletInfo() {
    return "Short description";
  } // </editor-fold>
}
