/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import DAO.CarDao;
import Models.Car;
import Models.CarBrand;
import Models.CarCategory;
import Models.CarImage;
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
 * @author Admin
 */
@WebServlet(
    name = "SellerController",
    urlPatterns = {"/seller/dashboard"})
public class SellerDashboard extends HttpServlet {
  private static CarDao daoc;

  public void init() {
    daoc = new CarDao();
  }

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    HttpSession sess = request.getSession();
    UserAccount seller = (UserAccount) sess.getAttribute("seller");
    int sellerId = seller.getUser_id();
    String state = request.getParameter("state");
    if ("attributes".equals(state)) {
      String role = request.getParameter("role");
      if ("cate".equals(role)) {
        Object type = request.getParameter("type");
        Object id = request.getParameter("id");
        if (type != null) {
          type = type + "";
          if (type.equals("update")) {
            if (id != null) {
              request.setAttribute("update_cate_id", id + "");
            } else {
              request.removeAttribute("update_cate_id");
            }
          }
        }
      } else if ("brand".equals(role)) {
        Object type = request.getParameter("type");
        Object id = request.getParameter("id");
        if (type != null) {
          type = type + "";
          if (type.equals("update")) {
            if (id != null) {
              request.setAttribute("update_brand_id", id + "");
            } else {
              request.removeAttribute("update_brand_id");
            }
          }
        }
      }
      List<CarBrand> carBrand = daoc.viewCarBrand();
      request.setAttribute("carBrand", carBrand);
      List<CarCategory> carCategory = daoc.viewCarCategory();
      request.setAttribute("carCategory", carCategory);
      request.getRequestDispatcher("/seller/attributes.jsp").forward(request, response);
    } else if ("detail".equals(state)) {
      Object type = request.getParameter("type");
      Object id = request.getParameter("id");
      if (type != null) {
        type = type + "";
        if (type.equals("update")) {
          if (id != null) {
            request.setAttribute("update_id", id + "");
          } else {
            request.removeAttribute("update_id");
          }
        } else if (type.equals("delete")) {
          if (id != null) {
            daoc.deleteCarByCarID(Integer.parseInt(id + ""));
          }
        }
      }
      List<Car> carL = daoc.viewProductForSeller(sellerId);
      request.setAttribute("carList", carL);
      List<CarBrand> carBrand = daoc.viewCarBrand();
      List<CarCategory> carCategory = daoc.viewCarCategory();
      List<CarImage> carImage = daoc.viewImageForCar();
      request.setAttribute("carBrand", carBrand);
      request.setAttribute("carCategory", carCategory);
      request.setAttribute("carImage", carImage);
      request.getRequestDispatcher("/seller/cardetail.jsp").forward(request, response);
    } else if ("specs".equals(state)) {
      Object type = request.getParameter("type");
      Object id = request.getParameter("id");
      if (type != null) {
        type = type + "";
        if (type.equals("update")) {
          if (id != null) {
            request.setAttribute("update_specs_id", id + "");
          } else {
            request.removeAttribute("update_specs_id");
          }
        }
      }
      List<Car> carL = daoc.viewProductForSeller(sellerId);
      request.setAttribute("carList", carL);
      request.getRequestDispatcher("/seller/carspecs.jsp").forward(request, response);
    } else if ("images".equals(state)) {
      request.getRequestDispatcher("/seller/carimages.jsp").forward(request, response);
    } else {
      request.getRequestDispatcher("/seller/index.jsp").forward(request, response);
    }
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String state = request.getParameter("state");
    String action = request.getParameter("do");
    HttpSession sess = request.getSession();
    UserAccount seller = (UserAccount) sess.getAttribute("seller");
    int sellerId = seller.getUser_id();
    if ("attributes".equals(state)) {
      String role = request.getParameter("role");
      String success = "";
      String error = "";
      if ("cate".equals(role)) {
        String cate = request.getParameter("cate");
        String cateValue = request.getParameter("cateId");
        if ("add".equals(cateValue)) {
          daoc.addNewCategory(cate);
          success = "new Category added successfully !";
        } else if (cateValue != null || !cateValue.isEmpty()) {
          int cateId = Integer.parseInt(cateValue);
          CarCategory cc = new CarCategory(cateId, cate);
          if (daoc.updateCCate(cc)) {
            success = "Category updated successfully !";
          } else {
            error = "Category updated failed !!!";
          }
        } else {
          error = "new Brand added unsuccessfully !";
        }
        request.setAttribute("errorMsg1", error);
        request.setAttribute("successMsg1", success);

      } else if ("brand".equals(role)) {
        String brand = request.getParameter("brand");
        String brandValue = request.getParameter("brandId");
        if ("add".equals(brandValue)) {
          daoc.addNewBrand(brand);
          success = "new Brand added successfully !";
        } else if (brandValue != null || !brandValue.isEmpty()) {
          int brandId = Integer.parseInt(brandValue);
          CarBrand cb = new CarBrand(brandId, brand);
          if (daoc.updateCBrand(cb)) {
            success = "Brand updated successfully !";
          } else {
            error = "Brand updated failed !!!";
          }
        } else {
          error = "new Brand added unsuccessfully !";
        }
        request.setAttribute("errorMsg2", error);
        request.setAttribute("successMsg2", success);
      }

    } else if ("detail".equals(state)) {
      if ("update".equals(action)) {
        int carId = Integer.parseInt(request.getParameter("carId"));
        String car_name = request.getParameter("car_name");
        float price = Float.parseFloat(request.getParameter("price"));
        String model_year = request.getParameter("model_year");
        String desc = request.getParameter("desc");
        int brand = Integer.parseInt(request.getParameter("brand"));
        int category = Integer.parseInt(request.getParameter("category"));
        Car car = new Car(carId, car_name, model_year, price, desc, brand, category, sellerId);
        daoc.updateSellerItems(car);

      } else if ("add".equals(action)) {
        String car_name = request.getParameter("car_name1");
        float price = Float.parseFloat(request.getParameter("price1"));
        String desc = request.getParameter("desc1");
        String model_year = request.getParameter("model_year1");
        int brand = Integer.parseInt(request.getParameter("brand1"));
        int category = Integer.parseInt(request.getParameter("category1"));
        Car car = new Car(car_name, model_year, price, desc, brand, category, sellerId);
        daoc.addSellerItem(car);
      }

    } else if ("specs".equals(state)) {
      if ("update".equals(action)) {
        int cylinders = Integer.parseInt(request.getParameter("cylinders"));
        float horsepower = Float.parseFloat(request.getParameter("horsepower"));
        float weight = Float.parseFloat(request.getParameter("horsepower"));
        float acceleration = Float.parseFloat(request.getParameter("acceleration"));
        String origin = request.getParameter("origin");
        int carId = Integer.parseInt(request.getParameter("carId"));
        Car spec = new Car(carId, cylinders, horsepower, weight, acceleration, origin);
        daoc.updateSpecs(spec);

      } else if ("images".equals(state)) {
        // loc doan
      }
    }

    doGet(request, response);
  }
}