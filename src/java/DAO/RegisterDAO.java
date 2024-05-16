package DAO;

import Models.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * RegisterDAO class to handle user registration.
 */
public class RegisterDAO {

    DBConnect db = new DBConnect();
    Connection con = db.connection;

    /**
     * Checks if a user can be registered.
     *
     * @param ua UserAccount object containing email and password
     * @param ud UserDetails object containing personal details
     * @return true if registration is successful, false otherwise
     */
    public boolean checkRegister(UserAccount ua, UserDetails ud) {
        if (userExisted(ua.getEmail())) {
            return false;
        }

        String userAccountQuery = "INSERT INTO [dbo].[user_account] ([email], [password]) VALUES (?, ?)";
        String userDetailsQuery = "INSERT INTO [dbo].[user_details] ([first_name], [last_name], [dob], [phone]) VALUES (?, ?, ?, ?)";

        try {
            con.setAutoCommit(false);

            try (PreparedStatement psUserAccount = con.prepareStatement(userAccountQuery);
                 PreparedStatement psUserDetails = con.prepareStatement(userDetailsQuery)) {

                psUserAccount.setString(1, ua.getEmail());
                psUserAccount.setString(2, ua.getPassword());
                psUserAccount.executeUpdate();

                psUserDetails.setString(1, ud.getFname());
                psUserDetails.setString(2, ud.getLname());
                psUserDetails.setString(3, ud.getDob());
                psUserDetails.setString(4, ud.getPhone());
                psUserDetails.executeUpdate();

                con.commit();
                return true;
            } catch (SQLException e) {
                con.rollback();
                e.printStackTrace();
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            try {
                con.setAutoCommit(true);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * Checks if a user with the given email already exists.
     *
     * @param email Email address to check
     * @return true if user exists, false otherwise
     */
    public boolean userExisted(String email) {
        String query = "SELECT * FROM UsersAccount WHERE Email = ?";
        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, email);
            try (ResultSet rs = ps.executeQuery()) {
                return rs.next();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public static void main(String[] args) {
        UserAccount ua = new UserAccount("dadas@gmail.com", "dat123");
        UserDetails ud = new UserDetails("tien", "dat", "11-12-2131", "03387226123");
        RegisterDAO reg = new RegisterDAO();
        System.out.println(reg.checkRegister(ua, ud));
    }
}
