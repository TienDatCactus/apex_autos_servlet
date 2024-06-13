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
import jakarta.servlet.http.Part;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpSession;

@MultipartConfig
/**
 *
 * @author Admin
 */
@WebServlet(name = "SellerDashboard", urlPatterns = {"/seller/dashboard"})
public class ProductManagement extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CarDao daoc = new CarDao();

        List<CarBrand> carBrand = daoc.viewCarBrand();
        List<CarCategory> carCategory = daoc.viewCarCategory();
        List<CarImage> carImage = daoc.viewImageForCar();

        request.setAttribute("carBrand", carBrand);
        request.setAttribute("carCategory", carCategory);
        request.setAttribute("carImage", carImage);
        request.getRequestDispatcher("/seller/cardetail.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CarDao daoc = new CarDao();
        String action = request.getParameter("action");
        HttpSession session = request.getSession();
        switch (action) {
            case "add":
                String name = request.getParameter("name");
                int cylinders = Integer.parseInt(request.getParameter("cylinders"));
                float horsepower = Float.parseFloat(request.getParameter("horsepower"));
                float weight = Float.parseFloat(request.getParameter("weight"));
                float acceleration = Float.parseFloat(request.getParameter("acceleration"));
                int modelYear = Integer.parseInt(request.getParameter("model_year"));
                String origin = request.getParameter("origin");
                float price = Float.parseFloat(request.getParameter("price"));
                String description = request.getParameter("description");
                int brand = Integer.parseInt(request.getParameter("brand"));
                int category = Integer.parseInt(request.getParameter("category"));
                int idseller = Integer.parseInt(request.getParameter("idseller"));

                // Create a Car object
                Car car = new Car();
                car.setName(name);
                car.setCylinders(cylinders);
                car.setHorsepower(horsepower);
                car.setWeight(weight);
                car.setAcceleration(acceleration);
                car.setModel_year(modelYear);
                car.setOrigin(origin);
                car.setPrice(price);
                car.setDescription(description);
                car.setBrand_id(brand);
                car.setCategory_id(category);
                car.setSeller_id(idseller);

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
                        imagePaths.add(request.getContextPath() + "/images/" + fileName); // Thêm đường dẫn của ảnh vào danh sách
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
                
                int userId = Integer.parseInt(request.getParameter("idseller"));
                // Get other form parameters
                int id = Integer.parseInt(request.getParameter("id"));
                String name1 = request.getParameter("name");
                int cylinders1 = Integer.parseInt(request.getParameter("cylinders"));
                float horsepower1 = Float.parseFloat(request.getParameter("horsepower"));
                float weight1 = Float.parseFloat(request.getParameter("weight"));
                float acceleration1 = Float.parseFloat(request.getParameter("acceleration"));
                int modelYear1 = Integer.parseInt(request.getParameter("model_year"));
                String origin1 = request.getParameter("origin");
                float price1 = Float.parseFloat(request.getParameter("price"));
                String description1 = request.getParameter("description");
                int brandId = Integer.parseInt(request.getParameter("brand"));
                int categoryId = Integer.parseInt(request.getParameter("category"));
                
                Car carr = new Car(id, name1, cylinders1, horsepower1, weight1, acceleration1, 
                        modelYear1, origin1, price1, description1, 
                        brandId, categoryId,userId);
                
                Collection<Part> partss = request.getParts();
                String pathh = request.getServletContext().getRealPath("/images");
                File dirr = new File(pathh);
                if (!dirr.exists()) {
                    dirr.mkdirs();
                }

                List<String> imagePathss = new ArrayList<>(); // Danh sách đường dẫn đến các ảnh đã tải lên

                for (Part part : partss) {
                    String fileName = part.getSubmittedFileName();
                    if (fileName != null && !fileName.isEmpty()) {
                        File image = new File(dirr, fileName);
                        part.write(image.getAbsolutePath());
                        imagePathss.add(request.getContextPath() + "/images/" + fileName); // Thêm đường dẫn của ảnh vào danh sách
                        // Xử lý các tệp ảnh ở đây (ví dụ: lưu vào cơ sở dữ liệu)
                    }
                }

                
                CarImage carIi = new CarImage(0, id, imagePathss);
                daoc.updateImages(carIi);
                
                
                daoc.updateCar(carr);
                List<Car> carListttt = daoc.viewProductForSeller(userId);
                session.setAttribute("carList", carListttt);
                

                break;
            case "delete":
                int car_idd = Integer.parseInt(request.getParameter("car_idd"));
                daoc.deleteCarByCarID(car_idd);

                int userseller = Integer.parseInt(request.getParameter("userseller"));
                List<Car> carListtt = daoc.viewProductForSeller(userseller);
                session.setAttribute("carList", carListtt);
                break;
            default:
                throw new AssertionError();
        }

        response.sendRedirect("sellerdashboard");

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
