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
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.List;

/**
 * @author Admin
 */
@WebServlet(
    name = "SellerController",
    urlPatterns = {"/seller/dashboard"})
public class SellerDashboard extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String state = request.getParameter("state");
    String action = request.getParameter("action");
    if ("brand".equals(state)) {
      CarDao daoc = new CarDao();
      List<CarBrand> carBrand = daoc.viewCarBrand();
      request.setAttribute("carBrand", carBrand);
      request.getRequestDispatcher("/seller/brand.jsp").forward(request, response);
    } else if ("category".equals(state)) {
      CarDao daoc = new CarDao();
      List<CarCategory> carCategory = daoc.viewCarCategory();
      request.setAttribute("carCategory", carCategory);
      request.getRequestDispatcher("/seller/category.jsp").forward(request, response);
    } else if ("detail".equals(state)) {
      CarDao daoc = new CarDao();

      if ("delete".equals(action)) {
        int car_id = Integer.parseInt(request.getParameter("car"));
        daoc.deleteCarByCarID(car_id);

        int seller = Integer.parseInt(request.getParameter("seller"));
        List<Car> carListtt = daoc.viewProductForSeller(seller);
        request.setAttribute("carList", carListtt);
      }
      List<CarBrand> carBrand = daoc.viewCarBrand();
      List<CarCategory> carCategory = daoc.viewCarCategory();
      List<CarImage> carImage = daoc.viewImageForCar();
      request.setAttribute("carBrand", carBrand);
      request.setAttribute("carCategory", carCategory);
      request.setAttribute("carImage", carImage);
      request.getRequestDispatcher("/seller/cardetail.jsp").forward(request, response);
    } else {
      request.getRequestDispatcher("/seller/index.jsp").forward(request, response);
    }
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String state = request.getParameter("state");
    String action = request.getParameter("action");
    if ("brand".equals(state)) {
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
    } else if ("category".equals(state)) {
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
    } else if ("detail".equals(state)) {
      CarDao daoc = new CarDao();
      HttpSession session = request.getSession();
      switch (action) {
        case "add":
          String name = request.getParameter("name1");
          String modelYear = request.getParameter("model_year1");
          float price = Float.parseFloat(request.getParameter("price1"));
          String description = request.getParameter("description1");
          int brand = Integer.parseInt(request.getParameter("brand1"));
          int category = Integer.parseInt(request.getParameter("category1"));
          int idseller = Integer.parseInt(request.getParameter("seller"));

          // Create a Car object
          Car car = new Car(brand, name, modelYear, price, description, brand, category, idseller);

          daoc.addProductToSell(car);

          Collection<Part> parts = request.getParts();
          String path = request.getServletContext().getRealPath("/images");
          File dir = new File(path);
          if (!dir.exists()) {
            dir.mkdirs();
          }

          List<String> imagePaths = new ArrayList<>(); // Danh sách đường dẫn đến các ảnh đã tải lên

          for (Part part : parts) {
            String fileName = part.getSubmittedFileName();
            if (fileName != null && !fileName.isEmpty()) {
              File image = new File(dir, fileName);
              part.write(image.getAbsolutePath());
              imagePaths.add(
                  request.getContextPath()
                      + "/images/"
                      + fileName); // Thêm đường dẫn của ảnh vào danh sách
              // Xử lý các tệp ảnh ở đây (ví dụ: lưu vào cơ sở dữ liệu)
            }
          }

          int idcarr = daoc.getIDByCarDetail(car);
          CarImage carI = new CarImage(0, idcarr, imagePaths);
          daoc.addToImage(carI);

          List<Car> carList = daoc.viewProductForSeller(idseller);
          session.setAttribute("carList", carList);
          break;
        case "edit":
          int idseller1 = Integer.parseInt(request.getParameter("seller"));
          // Get other form parameters
          int id = Integer.parseInt(request.getParameter("id"));
          String name1 = request.getParameter("name");
          String modelYear1 = request.getParameter("model_year");
          float price1 = Float.parseFloat(request.getParameter("price"));
          String description1 = request.getParameter("description");
          int brandId1 = Integer.parseInt(request.getParameter("brand"));
          int categoryId1 = Integer.parseInt(request.getParameter("category"));

          Car carr =
              new Car(
                  id, name1, modelYear1, price1, description1, brandId1, categoryId1, idseller1);

          Collection<Part> partss = request.getParts();
          String pathh = request.getServletContext().getRealPath("/images");
          File dirr = new File(pathh);
          if (!dirr.exists()) {
            dirr.mkdirs();
          }

          List<String> imagePathss =
              new ArrayList<>(); // Danh sách đường dẫn đến các ảnh đã tải lên

          for (Part part : partss) {
            String fileName = part.getSubmittedFileName();
            if (fileName != null && !fileName.isEmpty()) {
              File image = new File(dirr, fileName);
              part.write(image.getAbsolutePath());
              imagePathss.add(
                  request.getContextPath()
                      + "/images/"
                      + fileName); // Thêm đường dẫn của ảnh vào danh sách
              // Xử lý các tệp ảnh ở đây (ví dụ: lưu vào cơ sở dữ liệu)
            }
          }

          CarImage carIi = new CarImage(0, id, imagePathss);
          daoc.updateImages(carIi);

          daoc.updateCar(carr);
          List<Car> carListttt = daoc.viewProductForSeller(idseller1);
          session.setAttribute("carList", carListttt);

          break;

        default:
          throw new AssertionError();
      }

      response.sendRedirect("sellerdashboard");
    }
    doGet(request, response);
  }
}
