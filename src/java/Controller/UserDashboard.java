package Controller;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;

import Models.*;
import DAO.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.FileSystems;
import java.nio.file.Path;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "UserDashboard", urlPatterns = {"/user/dashboard"})
public class UserDashboard extends HttpServlet {

    CarDao dao = new CarDao();
    UserDAO daou = new UserDAO();
    AdminDAO daoa = new AdminDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        UserAccount ua = (UserAccount) session.getAttribute("user");
        String action = request.getParameter("action");
        String state = request.getParameter("state");
        if (ua != null) {
            if ("track".equals(state)) {
                String qrFilePath = generateQRCode(request);
                request.setAttribute("qrFilePath", qrFilePath);
                request.getRequestDispatcher("/front-end/order-tracking.jsp").forward(request, response);
            } else {
                if ("delete".equals(action)) {
                    int idv = Integer.parseInt(request.getParameter("idz"));
                    int id_delete = Integer.parseInt(request.getParameter("id_address"));
                    daou.deleteAddress(id_delete);
                    List<Address> listAddrrr = daou.viewAllAddressFor1User(idv);
                    session.setAttribute("listAddr", listAddrrr);
                    List<CarImage> carImage = dao.viewImageForCar();
                    List<OrderItems> orderList = dao.orderItems(ua.getUser_id());
                    request.setAttribute("orderList", orderList);
                    request.setAttribute("carImage", carImage);
                    request.getRequestDispatcher("/front-end/user-dashboard.jsp").forward(request, response);
                }
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/login");
        }
    }

    private String generateQRCode(HttpServletRequest request) throws ServletException, IOException {
        String carId = request.getParameter("carId");
        String description = request.getParameter("title");

        if (carId == null || description == null) {
            throw new ServletException("Missing car ID or description");
        }

        String qrContent = "Car ID: " + carId + "\nDescription: " + description;
        int width = 300;
        int height = 300;

        QRCodeWriter qrCodeWriter = new QRCodeWriter();
        BitMatrix bitMatrix;
        try {
            Map<EncodeHintType, Object> hints = new HashMap<>();
            hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");

            bitMatrix = qrCodeWriter.encode(qrContent, BarcodeFormat.QR_CODE, width, height, hints);
        } catch (WriterException e) {
            throw new ServletException("Error generating QR code", e);
        }

        // Define the directory to save the QR code image
        String qrDir = getServletContext().getRealPath("/qr-codes");
        File qrDirFile = new File(qrDir);
        if (!qrDirFile.exists()) {
            qrDirFile.mkdirs();
        }

        // Generate the QR code image file name
        String qrFileName = "qr_" + carId + ".png";
        Path qrFilePath = FileSystems.getDefault().getPath(qrDir, qrFileName);

        // Save the QR code as a PNG image file
        try {
            MatrixToImageWriter.writeToPath(bitMatrix, "PNG", qrFilePath);
        } catch (IOException e) {
            throw new ServletException("Error saving QR code", e);
        }

        // Return the relative path to the QR code image file
        return request.getContextPath() + "/qr-codes/" + qrFileName;
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
