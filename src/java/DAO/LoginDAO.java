package DAO;

import Models.UserAccount;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import DAO.DBConnect;

/**
 *
 * @author Tiến_Đạt
 */
public class LoginDAO {

    Connection con = null;
    PreparedStatement ps = null;
    UserAccount ua = null;

    public UserAccount checkLogin(String email, String password) {
        try {
            String query = "SELECT * FROM user_account WHERE email=? AND password=? ";
            DBConnect db = new DBConnect();
            con = db.connection;
            ps = con.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    int id = rs.getInt(1);
                    String mail = rs.getString(2);
                    String pass = rs.getString(3);
                    int admin = rs.getInt(4);
                    ua = new UserAccount(mail, pass);
                    return ua;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
   
}
