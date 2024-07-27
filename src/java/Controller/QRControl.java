/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "QRCodeGenerator", urlPatterns = {"/generateQRCode"})
public class QRControl extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String carId = request.getParameter("carId");
        String description = request.getParameter("title");

        if (carId == null || description == null) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Missing car ID or description");
            return;
        }

        String qrContent = carId + "-" + description;
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

        response.setContentType("image/png");
        try {
            Path qrFilePath = Paths.get("qr-code.png");
            MatrixToImageWriter.writeToPath(bitMatrix, "PNG", qrFilePath);
            response.getOutputStream().write(Files.readAllBytes(qrFilePath));
        } catch (IOException e) {
            throw new ServletException("Error writing QR code to output stream", e);
        }
    }
}
