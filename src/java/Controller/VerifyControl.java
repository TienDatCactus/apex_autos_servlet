/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Tiến_Đạt
 */
@WebServlet(name = "VerifyControl", urlPatterns = {"/verify"})
public class VerifyControl extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the
    // + sign on the left to edit the code.">
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/front-end/otp.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession();
        int storedCode = (int) session.getAttribute("verificationCode");

        // Get the code from the request
        String first = request.getParameter("first");
        String second = request.getParameter("second");
        String third = request.getParameter("third");
        String fourth = request.getParameter("fourth");
        String fifth = request.getParameter("fifth");
        String sixth = request.getParameter("sixth");
        // Concatenate the values to form the OTP
        String otp = first + second + third + fourth + fifth + sixth;
        try {
            if (storedCode == Integer.parseInt(otp)) {
                // The code is correct, allow the user to reset their password
                response.sendRedirect("reset"); // Redirect to reset password page
            } else {
                // The code is incorrect, show an error message
                session.setAttribute("errorMessage", "Verification failed. The code you entered is incorrect.");
                response.sendRedirect("verify");
            }
        } catch (NumberFormatException e) {
            // Handle the case where submittedCode is not a valid integer
            session.setAttribute("errorMessage", "Verification failed. The code you entered is not a valid number.");
            response.sendRedirect("verify");
        }
    }

}
