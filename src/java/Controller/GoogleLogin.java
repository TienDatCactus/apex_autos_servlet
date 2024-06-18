
package Controller;

import Constant.Constants;
import DAO.CarDao;
import DAO.UserDAO;
import Models.*;
import Models.*;
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
import java.util.List;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Form;
import org.apache.http.client.fluent.Request;


@WebServlet(name = "GoogleLogin", urlPatterns = { "/LoginGoogleHandler" })
public class GoogleLogin extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String code = request.getParameter("code");
        String accessToken = getToken(code);
        UserAccount user = getUserInfo(accessToken);
        System.out.println(user);
        UserDAO dao = new UserDAO();
        CarDao daoc = new CarDao();
        boolean check = dao.checkRegisterByGG(user);
        if (check) {
            dao.registerByGG(user);

        }
        HttpSession session = request.getSession();
        user = dao.getUserByEmail(user.getEmail());
        List<Address> listAddr = dao.viewAllAddressFor1User(user.getUser_id());
        session.setAttribute("listAddr", listAddr);
        session.setAttribute("user", user);

    }

    public static String getToken(String code) throws  IOException {
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

    public static UserAccount getUserInfo(final String accessToken) throws ClientProtocolException, IOException {
        String link = Constants.GOOGLE_LINK_GET_USER_INFO + accessToken;
        String response = Request.Get(link).execute().returnContent().asString();

        UserAccount googlePojo = new Gson().fromJson(response, UserAccount.class);
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

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        response.sendRedirect("home");
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
