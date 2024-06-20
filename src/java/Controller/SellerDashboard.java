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
import Models.TradeMark;
import Models.UserAccount;
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
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * @author Admin
 */
@WebServlet(
    name = "SellerController",
    urlPatterns = {"/seller/dashboard"})
@MultipartConfig
public class SellerDashboard extends HttpServlet {
  private static CarDao daoc;
  String success = "";
  String error = "";

  public void init() {
    daoc = new CarDao();
  }

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    HttpSession sess = request.getSession();
    UserAccount seller = (UserAccount) sess.getAttribute("seller");
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
            success = "Car deleted successfully !";
            request.setAttribute("successMsg", success);
          }
        }
      }
      List<Car> carL = daoc.viewProductForSeller(seller.getUser_id());
      List<CarBrand> carBrand = daoc.viewCarBrand();
      List<CarCategory> carCategory = daoc.viewCarCategory();
      List<CarImage> carImage = daoc.viewImageForCar();
      request.setAttribute("carList", carL);
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
      List<Car> carL = daoc.viewProductForSeller(seller.getUser_id());
      request.setAttribute("carList", carL);
      request.getRequestDispatcher("/seller/carspecs.jsp").forward(request, response);
    } else if ("setting".equals(state)) {
      List<Car> carL = daoc.viewProductForSeller(seller.getUser_id());
      request.setAttribute("carList", carL);
      request.getRequestDispatcher("/seller/settings.jsp").forward(request, response);
    } else if ("image".equals(state)) {
      Object type = request.getParameter("type");
      Object id = request.getParameter("id");
      if (type != null) {
        type = type + "";
        if (type.equals("delete")) {
          if (id != null) {
            if (daoc.deleteImagesByCarID(Integer.parseInt(id + ""))) {
              success = "Car images deleted successfully !";
              request.setAttribute("successMsg", success);
            }
          }
        }
      }

      List<Car> carL = daoc.viewProductForSeller(seller.getUser_id());
      List<CarImage> imageCar = daoc.getAllImgBySellerID(seller.getUser_id());
      request.setAttribute("carList", carL);
      request.setAttribute("imageCar", imageCar);
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

      if ("cate".equals(role)) {
        String cate = request.getParameter("cate");
        String cateValue = request.getParameter("cateId");
        if ("add".equals(cateValue)) {
          if (cate == "") {
            error = "Please fill in the form before submit...";
          } else if (daoc.checkExistedCate(cate)) {
            error = "That car category's already existed ...";
          } else {
            if (daoc.addNewCategory(cate)) {
              success = "new Category added successfully !";
            }
          }
          request.setAttribute("errorMsg", error);
          request.setAttribute("successMsg", success);
        } else {
          int cateId = Integer.parseInt(cateValue);
          CarCategory cc = new CarCategory(cateId, cate);
          if (cate == "") {
            error = "Please fill in the form before submit...";
          } else if (daoc.checkExistedCate(cate)) {
            error = "That car category's already existed ...";
          } else {
            if (daoc.updateCCate(cc)) {
              success = "Category updated successfully !";
            } else {
              error = "Category updated failed !!!";
            }
          }
          request.setAttribute("errorMsg", error);
          request.setAttribute("successMsg", success);
        }

      } else if ("brand".equals(role)) {
        String brand = request.getParameter("brand");
        String brandValue = request.getParameter("brandId");
        if ("add".equals(brandValue)) {
          error = "";
          success = "";
          try {
            if (brand == "") {
              error = "Please fill in the form before submitting...";
            } else if (daoc.checkExistedBrand(brand)) {
              error = "That car brand's already existed ...";
            } else {
              if (daoc.addNewBrand(brand)) {
                success = "New brand added successfully!";
              } else {
                error = "Failed to add new brand. Please try again.";
              }
            }
          } catch (Exception e) {
            error = "An unexpected error occurred. Please try again.";
          }

          // Set request attributes for messages
          request.setAttribute("errorMsg", error);
          request.setAttribute("successMsg", success);
        } else {
          int brandId = Integer.parseInt(brandValue);
          CarBrand cb = new CarBrand(brandId, brand);
          if (brand == null || brand.isEmpty()) {
            error = "Please fill in the form before submit...";
          } else {
            // Clear previous messages
            error = null;
            success = null;
            try {
              if (daoc.checkExistedBrand(brand)) {
                error = "That car brand already existed ...";
              } else {
                if (daoc.updateCBrand(cb)) {
                  success = "Brand updated successfully!";
                } else {
                  error = "Brand updated failed!!!";
                }
              }
            } catch (Exception e) {
              error = "An unexpected error occurred. Please try again.";
            }

            request.setAttribute("errorMsg", error);
            request.setAttribute("successMsg", success);
          }
        }
      }
    } else if ("detail".equals(state)) {
      if ("update".equals(action)) {
        try {
          // Retrieve parameters and check for null or empty values
          String carIdStr = request.getParameter("carId");
          String car_name = request.getParameter("car_name");
          String priceStr = request.getParameter("price");
          String model_year = request.getParameter("model_year");
          String desc = request.getParameter("desc");
          String brandStr = request.getParameter("brand");
          String categoryStr = request.getParameter("category");

          if (carIdStr == null
              || carIdStr.isEmpty()
              || car_name == null
              || car_name.isEmpty()
              || priceStr == null
              || priceStr.isEmpty()
              || model_year == null
              || model_year.isEmpty()
              || desc == null
              || desc.isEmpty()
              || brandStr == null
              || brandStr.isEmpty()
              || categoryStr == null
              || categoryStr.isEmpty()) {
            throw new IllegalArgumentException("All fields must be filled out.");
          }

          // Parse numeric values
          int carId = Integer.parseInt(carIdStr);
          float price = Float.parseFloat(priceStr);
          int brand = Integer.parseInt(brandStr);
          int category = Integer.parseInt(categoryStr);

          // Create the Car object
          Car car = new Car(carId, car_name, model_year, price, desc, brand, category, sellerId);

          // Update the car item
          daoc.updateSellerItems(car);
          success = "Car details updated successfully !";
          request.setAttribute("successMsg", success);

        } catch (IllegalArgumentException e) {
          error = e.getMessage();
          request.setAttribute("errorMsg", error);
        }
      } else if ("add".equals(action)) {
        String error = null;
        try {
          String car_name = request.getParameter("car_name1");
          String priceStr = request.getParameter("price1");
          String desc = request.getParameter("desc1");
          String model_year = request.getParameter("model_year1");
          String brandStr = request.getParameter("brand1");
          String categoryStr = request.getParameter("category1");

          // Check for null or empty inputs
          if (car_name == null
              || car_name.isEmpty()
              || priceStr == null
              || priceStr.isEmpty()
              || desc == null
              || desc.isEmpty()
              || model_year == null
              || model_year.isEmpty()
              || brandStr == null
              || brandStr.isEmpty()
              || categoryStr == null
              || categoryStr.isEmpty()) {
            throw new IllegalArgumentException("All fields must be filled out.");
          }
          float price = Float.parseFloat(priceStr);
          int brand = Integer.parseInt(brandStr);
          int category = Integer.parseInt(categoryStr);

          Car car = new Car(car_name, model_year, price, desc, brand, category, sellerId);
          success = "New car has been added succesfully !";
          daoc.addSellerItem(car);
        } catch (IllegalArgumentException e) {
          error = e.getMessage();
        }

        // Handle the error if there is one
        if (error != null) {
          request.setAttribute("errorMsg", error);
        } else {
          request.setAttribute("successMsg", success);
        }
      }
    } else if ("specs".equals(state)) {
      if ("update".equals(action)) {
        try {
          // Retrieve parameters and check for null or empty values
          String carIdStr = request.getParameter("carId");
          String cylindersStr = request.getParameter("cylinders");
          String horsepowerStr = request.getParameter("horsepower");
          String weightStr = request.getParameter("weight");
          String accelerationStr = request.getParameter("acceleration");
          String origin = request.getParameter("origin");

          if (carIdStr == null
              || carIdStr.isEmpty()
              || cylindersStr == null
              || cylindersStr.isEmpty()
              || horsepowerStr == null
              || horsepowerStr.isEmpty()
              || weightStr == null
              || weightStr.isEmpty()
              || accelerationStr == null
              || accelerationStr.isEmpty()
              || origin == null
              || origin.isEmpty()) {
            throw new IllegalArgumentException("All fields must be filled out.");
          }

          // Parse numeric values
          int carId = Integer.parseInt(carIdStr);
          int cylinders = Integer.parseInt(cylindersStr);
          float horsepower = Float.parseFloat(horsepowerStr);
          float weight = Float.parseFloat(weightStr);
          float acceleration = Float.parseFloat(accelerationStr);

          Car spec = new Car(carId, cylinders, horsepower, weight, acceleration, origin);
          daoc.updateSpecs(spec);
          success = "Car specifications updated successfully !";
          request.setAttribute("successMsg", success);
        } catch (IllegalArgumentException e) {
          error = e.getMessage();
          request.setAttribute("errorMsg", error);
        }
      }
    } else if ("setting".equals(state)) {
      if ("update".equals(action)) {
        int id = Integer.parseInt(request.getParameter("idEditInput"));
        String name = request.getParameter("nameEditInput");

        String privacy = request.getParameter("privacyEditInput");
        String terms = request.getParameter("termEditInput");

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
        TradeMark mark = new TradeMark(id, name, imagePaths, privacy, terms, sellerId);
        daoc.updateTradeMark(mark);

      } else if ("add".equals(action)) {

        String name = request.getParameter("nameEditInput");

        String privacy = request.getParameter("privacyEditInput");
        String terms = request.getParameter("termEditInput");

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
        TradeMark mark = new TradeMark(0, name, imagePaths, privacy, terms, sellerId);
        daoc.addNewTradeMark(mark);
      }
    } else if ("image".equals(state)) {
      if ("add".equals(action)) {
        int idCar = Integer.parseInt(request.getParameter("idCar"));

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

        CarImage carImage = new CarImage(0, idCar, imagePaths, sellerId);
        daoc.addNewImgToCar(carImage);

      } else if ("update".equals(action)) {
        int id = Integer.parseInt(request.getParameter("idEditInput"));
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

        CarImage carImage = new CarImage(0, id, imagePaths, sellerId);
        daoc.updateImages(carImage);
      }
    }

    List<TradeMark> tradeMark = daoc.getTradeMark(sellerId);
    List<CarImage> imageCar = daoc.getAllImgBySellerID(sellerId);
    request.setAttribute("tradeMark", tradeMark);
    request.setAttribute("imageCar", imageCar);
    doGet(request, response);
  }
}