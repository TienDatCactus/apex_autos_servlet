/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Models.*;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Tiến_Đạt
 */
public class AdminDAO {

    PreparedStatement ps = null;
    ResultSet rs = null;
    DBConnect db = new DBConnect();
    Connection con = db.connection;

    public List<UserAccount> viewUsers() {
        List<UserAccount> users = new ArrayList<>();
        String query = "select * from user_account";

        try (PreparedStatement ps = con.prepareStatement(query); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                UserAccount ua = new UserAccount();
                ua.setUser_id(rs.getInt("user_id"));
                ua.setEmail(rs.getString("email"));
                ua.setGiven_name(rs.getString("given_name"));
                ua.setFamily_name(rs.getString("family_name"));
                ua.setDob(rs.getString("dob"));
                ua.setPhone(rs.getString("phone"));
                ua.setPermission_id(rs.getInt("permission_id"));
                users.add(ua);
            }
            return users;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean userUpdate(UserAccount ua) {
        String sql = "UPDATE [dbo].[user_account] SET [email] = ? ,[given_name] =  ? ,[family_name] =  ? ,[dob] =  ? ,[phone] =  ? WHERE user_id = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, ua.getEmail());
            ps.setString(2, ua.getGiven_name());
            ps.setString(3, ua.getFamily_name());
            ps.setString(4, ua.getDob());
            ps.setString(5, ua.getPhone());
            ps.setInt(6, ua.getUser_id());
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean userAdd(UserAccount ua) {
        String sql = "INSERT INTO [dbo].[user_account] ([email] ,[passwordHash] ,[given_name] ,[family_name] ,[dob] ,[phone]) VALUES (? ,? ,? ,? ,? ,?)";
        String hashedPassword = hashPassword(ua.getPassword());
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, ua.getEmail());
            ps.setString(2, hashedPassword);
            ps.setString(3, ua.getGiven_name());
            ps.setString(4, ua.getFamily_name());
            ps.setString(5, ua.getDob());
            ps.setString(6, ua.getPhone());
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

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

    public static void main(String[] args) {
        AdminDAO dao = new AdminDAO();
        UserAccount ua = new UserAccount(1,
                "datnthe180012@fpt.edu.vn", // email
                "Nigga", // given_name
                "Lords", // family_name
                "+1234567890", // phone
                "1990-01-01" // dob
        );
        System.out.println(dao.userUpdate(ua));
        }
}
