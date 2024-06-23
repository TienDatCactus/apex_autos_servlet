
package Controller;

import DAO.CarDao;
import Models.UserAccount;
import Util.Mail;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class VNPayReturnServlet extends HttpServlet {
  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String vnp_ResponseCode = request.getParameter("vnp_ResponseCode");

        // Check if the transaction was successful
        if ("00".equals(vnp_ResponseCode)) {
            HttpSession session = request.getSession();
            UserAccount ua = (UserAccount) session.getAttribute("user");
            if (ua != null) {
                CarDao dao = new CarDao();
                dao.clearCart(ua.getUser_id());
                
                // Send payment confirmation email
                String userEmail = ua.getEmail(); // Ensure UserAccount has a getEmail() method
                String orderInfo = request.getParameter("vnp_OrderInfo");
                long amount = Long.parseLong(request.getParameter("vnp_Amount"));
                Mail.sendPaymentConfirmation(userEmail, orderInfo, amount);
            }
            // Forward the request to the JSP page
            request.getRequestDispatcher("/payment-result.jsp").forward(request, response);
        } else {
            // Transaction failed
            response.sendRedirect(request.getContextPath() + "/payment-failure.jsp");
        }
    } 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
