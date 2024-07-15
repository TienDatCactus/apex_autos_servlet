package Controller;

import DAO.CarDao;
import Models.Car;
import Models.Compare;
import Models.CompareItems;
import Models.UserAccount;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import org.json.JSONObject;

@WebServlet(name = "CompareController", urlPatterns = {"/compare"})
public class CompareController extends HttpServlet {

    @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        UserAccount ua = (UserAccount) session.getAttribute("user");
        HomeControl h = new HomeControl();
        if (ua == null) {
            // Người dùng chưa đăng nhập, chuyển hướng đến trang đăng nhập
            response.sendRedirect("login");
            return;
        }

        try {
           
            CarDao cdao = new CarDao();
            Compare c = cdao.findCompareByUserId(ua.getUser_id());
             List<Integer> idList = new ArrayList<>();
            if(c != null){
                idList = c.getItems().stream()
                    .map(CompareItems::getCarId) // or any other method to convert CompareItems to String
                    .toList();
            }

            // Lấy thông tin xe để so sánh
            CarDao carDAO = new CarDao();
            List<Car> lst = carDAO.compareCars(idList);
            request.setAttribute("compareItems", lst);

            request.setAttribute("message", request.getAttribute("message"));
            request.setAttribute("error", request.getAttribute("error"));
            // Chuyển tiếp đến trang so sánh
            request.getRequestDispatcher("/front-end/compare.jsp").forward(request, response);

        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
            throw new ServletException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         response.setContentType("application/json");
         JSONObject jsonResponse = new JSONObject();
        HomeControl h = new HomeControl();
        CompareController control = new CompareController();
        CarDao cdao = new CarDao();
        String action = request.getParameter("action");
        String carId = request.getParameter("carId");
        try {
            HttpSession session = request.getSession();
            UserAccount ua = (UserAccount) session.getAttribute("user");

            if (ua == null) {
                // Người dùng chưa đăng nhập, chuyển hướng đến trang đăng nhập
                response.sendRedirect("login");
                return;
            }
            if (action != null && action.equals("delete")) {
                //delete
                Compare c = cdao.findCompareByUserId(ua.getUser_id());
                cdao.deleteCompareItems(c.getCompare_id(), Integer.parseInt(carId));
                request.setAttribute("message", "Remove this item success");
                control.doGet(request, response);
            } else {
                //add
                cdao.AddtoCompare(ua.getUser_id(), Integer.parseInt(carId));
                 jsonResponse.put("success", true);
                        jsonResponse.put("message", "Item added to cart successfully!");
                h.doGet(request, response);
            }
        } catch (Exception e) {
            request.setAttribute("error", e.getMessage());
            if (action != null && action.equals("delete")) {
                control.doGet(request, response);
            } else {
                h.doGet(request, response);
            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Servlet for comparing cars";
    }
}
