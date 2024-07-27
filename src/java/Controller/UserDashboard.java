package Controller;


import Models.*;
import DAO.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserDashboard", urlPatterns = {"/user/dashboard"})
public class UserDashboard extends HttpServlet {

    CarDao dao = new CarDao();
    UserDAO daou = new UserDAO();
    AdminDAO daoa = new AdminDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            UserAccount ua = (UserAccount) session.getAttribute("user");
            String action = request.getParameter("action");

            if (ua != null) {

                if ("delete".equals(action)) {
                    int idv = Integer.parseInt(request.getParameter("idz"));
                    int id_delete = Integer.parseInt(request.getParameter("id_address"));
                    daou.deleteAddress(id_delete);
                    List<Address> listAddrrr = daou.viewAllAddressFor1User(idv);
                    session.setAttribute("listAddr", listAddrrr);
                }

                List<CarImage> carImage = dao.viewImageForCar();
                List<OrderItems> orderList = dao.orderItems(ua.getUser_id());
                request.setAttribute("orderList", orderList);
                request.setAttribute("carImage", carImage);
                request.getRequestDispatcher("/front-end/user-dashboard.jsp").forward(request, response);
            } else {
                response.sendRedirect(request.getContextPath() + "/login");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect(request.getContextPath() + "/home"); // Redirect to an error page
        }
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        UserAccount ua = (UserAccount) session.getAttribute("user");
        String action = request.getParameter("action");
        if (ua != null) {
            switch (action) {
                case "add":
                    int id = Integer.parseInt(request.getParameter("idz"));
                    String address = request.getParameter("address");
                    int pin = Integer.parseInt(request.getParameter("pin"));
                    Address add = new Address(0, address, pin, id);
                    daou.addNewAddress(add);
                    List<Address> listAddr = daou.viewAllAddressFor1User(id);
                    session.setAttribute("listAddr", listAddr);
                    break;
                case "edit":
                    int idz = Integer.parseInt(request.getParameter("idz"));
                    int address_id = Integer.parseInt(request.getParameter("address_id"));
                    String address_edit = request.getParameter("address");
                    int pin_edit = Integer.parseInt(request.getParameter("pin_code"));
                    Address add1 = new Address(address_id, address_edit, pin_edit, 0);
                    daou.editAddress(add1);
                    List<Address> listAddrr = daou.viewAllAddressFor1User(idz);
                    session.setAttribute("listAddr", listAddrr);
                    break;

                case "editPro":
                    int id_pro = Integer.parseInt(request.getParameter("idz"));
                    String given_name = request.getParameter("fname");
                    String family_name = request.getParameter("lname");
                    String dob = request.getParameter("dob");
                    String phone = request.getParameter("phone");
                    UserAccount acc = new UserAccount(id_pro, given_name, family_name, dob, phone);
                    daou.editProfile(acc);
                    List<Address> listAddrrz = daou.viewAllAddressFor1User(id_pro);
                    session.setAttribute("listAddr", listAddrrz);
                    session.setAttribute("user", acc);
                    break;
                default:
                    throw new AssertionError();
            }
            doGet(request, response);

        } else {
            response.sendRedirect(request.getContextPath() + "/login");
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
