/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Models.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.nio.charset.StandardCharsets;

<<<<<<< HEAD
=======

>>>>>>> origin/loc_doan
/**
 *
 * @author Tiến_Đạt
 */
public class UserDAO {

    PreparedStatement ps = null;
    ResultSet rs = null;
    DBConnect db = new DBConnect();
    Connection con = db.connection;

    private String hashPassword(String password) {
        if (password == null) {
            throw new IllegalArgumentException("Password cannot be null");
        }
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hash = md.digest(password.getBytes(StandardCharsets.UTF_8));
            StringBuilder hexString = new StringBuilder();
            for (byte b : hash) {
                hexString.append(String.format("%02x", b));
            }
            return hexString.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    public boolean checkRegister(UserAccount userAccount) {
        String email = userAccount.getEmail();
        String password = userAccount.getPassword();

        if (userExisted(email)) {
            return false;
        }

        String query = "INSERT INTO [dbo].[user_account] ([email], [passwordHash]) VALUES (?, ?)";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, email);
            String hashedPassword = hashPassword(password);
            ps.setString(2, hashedPassword);

            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean userExisted(String email) {
        String query = "SELECT [email] FROM [dbo].[user_account] WHERE email = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    public boolean checkLogin(UserAccount userAccount) {
        String email = userAccount.getEmail();
        String password = userAccount.getPassword();

        String query = "SELECT [user_id] ,[email] ,[passwordHash] FROM [dbo].[user_account] WHERE email = ? AND passwordHash = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, email);
            String hashedPassword = hashPassword(password);
            ps.setString(2, hashedPassword);

            try (ResultSet rs = ps.executeQuery()) {
                return rs.next();
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean resetPassword(String email, String newPassword) {
        String hashedPassword = hashPassword(newPassword);
        String query = "UPDATE [dbo].[user_account] SET [passwordHash] = ? WHERE email = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, hashedPassword);
            ps.setString(2, email);

            int affectedRows = ps.executeUpdate();
            return affectedRows > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

<<<<<<< HEAD
=======

>>>>>>> origin/loc_doan
}
