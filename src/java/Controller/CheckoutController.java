
package Controller;

import DAO.CarDao;
import Models.CartItems;
import Models.UserAccount;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.util.List;



@WebServlet(name="CheckoutController", urlPatterns={"/checkout/*"})
public class CheckoutController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
         HttpSession session = request.getSession();
        CarDao dao = new CarDao();
        UserAccount ua = (UserAccount) session.getAttribute("user");
        List<CartItems> carts = dao.cartItems(ua.getUser_id());
        session.setAttribute("cartItems", carts);
        request.getRequestDispatcher("/front-end/checkout.jsp").forward(request, response);
    } 

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
