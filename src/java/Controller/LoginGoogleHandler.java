/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import Constant.Constants;
<<<<<<< HEAD
import DAO.UserDAO;
import Models.*;
import Models.*;
=======
import Models.UserDetails;

>>>>>>> origin/loc_doan
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Form;
import org.apache.http.client.fluent.Request;

/**
 *
 * @author Admin
 */
@WebServlet(name = "LoginGoogleHandler", urlPatterns = { "/LoginGoogleHandler" })
public class LoginGoogleHandler extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     * 
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String code = request.getParameter("code");
        String accessToken = getToken(code);
        UserGoogleDto user = getUserInfo(accessToken);
        System.out.println(user);
        HttpSession session = request.getSession();
        session.setAttribute("userd", user);

    }

    public static String getToken(String code) throws ClientProtocolException, IOException {
        // call api to get token
        String response = Request.Post(Constants.GOOGLE_LINK_GET_TOKEN)
                .bodyForm(Form.form().add("client_id", Constants.GOOGLE_CLIENT_ID)
                        .add("client_secret", Constants.GOOGLE_CLIENT_SECRET)
                        .add("redirect_uri", Constants.GOOGLE_REDIRECT_URI).add("code", code)
                        .add("grant_type", Constants.GOOGLE_GRANT_TYPE).build())
                .execute().returnContent().asString();

        JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
        String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
       
        return accessToken;
    }

    public static UserGoogleDto getUserInfo(final String accessToken) throws ClientProtocolException, IOException {
        String link = Constants.GOOGLE_LINK_GET_USER_INFO + accessToken;
        String response = Request.Get(link).execute().returnContent().asString();

        UserGoogleDto googlePojo = new Gson().fromJson(response, UserGoogleDto.class);
        // call api to get user info
        String userInfoResponse = Request.Get(Constants.GOOGLE_LINK_GET_USER_INFO + accessToken)
                .execute().returnContent().asString();

        JsonObject userInfoJobj = new Gson().fromJson(userInfoResponse, JsonObject.class);
        String email = userInfoJobj.get("email").toString().replaceAll("\"", "");

        // add email to database
        UserDAO dao = new UserDAO();
        UserAccount user = new UserAccount();
        user.setEmail(email);
        // gen hidden password
        String tokenSubstring = accessToken.length() >= 6 ? accessToken.substring(0, 6) : accessToken;
        user.setPassword("google" + tokenSubstring);
        dao.checkLogin(user);
        return googlePojo;
    }

   
<<<<<<< HEAD
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("front-end/index.jsp").forward(request, response);
    }
=======
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
<<<<<<< Updated upstream
   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String code = request.getParameter("code");
		String accessToken = getToken(code);
		UserDetails user = getUserInfo(accessToken);
                System.out.println(user);
                HttpSession session = request.getSession();
                session.setAttribute("userd", user);
                
	}
=======
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String code = request.getParameter("code");
        String accessToken = getToken(code);
        UserGoogleDto user = getUserInfo(accessToken);
        
        System.out.println(user);
        UserAccount userAcc = new UserAccount(user.getEmail(), "123456");
        UserDAO dao = new UserDAO();
        dao.checkRegister(userAcc);
        HttpSession session = request.getSession();
        session.setAttribute("userd", user);
>>>>>>> Stashed changes

	public static String getToken(String code) throws ClientProtocolException, IOException {
		// call api to get token
		String response = Request.Post(Constants.GOOGLE_LINK_GET_TOKEN)
				.bodyForm(Form.form().add("client_id", Constants.GOOGLE_CLIENT_ID)
						.add("client_secret", Constants.GOOGLE_CLIENT_SECRET)
						.add("redirect_uri", Constants.GOOGLE_REDIRECT_URI).add("code", code)
						.add("grant_type", Constants.GOOGLE_GRANT_TYPE).build())
				.execute().returnContent().asString();

		JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
		String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
		return accessToken;
	}

<<<<<<< Updated upstream
	public static UserDetails getUserInfo(final String accessToken) throws ClientProtocolException, IOException {
		String link = Constants.GOOGLE_LINK_GET_USER_INFO + accessToken;
		String response = Request.Get(link).execute().returnContent().asString();

		UserDetails googlePojo = new Gson().fromJson(response, UserDetails.class);

		return googlePojo;
	}
=======
        JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
        String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
        
        
        return accessToken;
    }
>>>>>>> Stashed changes

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
<<<<<<< Updated upstream
    throws ServletException, IOException {
        processRequest(request, response);
        request.getRequestDispatcher("front-end/index.jsp").forward(request, response);
    } 
=======
            throws ServletException, IOException {
        processRequest(request, response);
        request.getRequestDispatcher("home").forward(request, response);
    }
>>>>>>> Stashed changes
>>>>>>> origin/loc_doan

    /**
     * Handles the HTTP <code>POST</code> method.
     * 
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
