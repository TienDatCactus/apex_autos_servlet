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
 * @author Tiến_Đạt
 */
public class AdminDAO {

    PreparedStatement ps = null;
    ResultSet rs = null;
    DBConnect db = new DBConnect();
    Connection con = db.connection;

    // Users ===============================================================
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
                ua.setCreated_at(rs.getTimestamp("created_at"));
                users.add(ua);
            }
            return users;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean userUpdate(UserAccount ua) {
        String sql
                = "UPDATE [dbo].[user_account] SET [given_name] =  ? ,[family_name] =  ? ,[dob] =  ? ,[phone] =  ? WHERE user_id = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, ua.getGiven_name());
            ps.setString(2, ua.getFamily_name());
            ps.setString(3, ua.getDob());
            ps.setString(4, ua.getPhone());
            ps.setInt(5, ua.getUser_id());
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean userAdd(UserAccount ua) {
        String sql
                = "INSERT INTO [dbo].[user_account] ([email] ,[passwordHash] ,[given_name] ,[family_name] ,[dob] ,[phone]) VALUES (? ,? ,? ,? ,? ,?)";
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

    public boolean userDelete(String id) {
        String sql = "DELETE FROM [dbo].[user_account] WHERE user_id = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, Integer.parseInt(id));
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    // Roles ===============================================================
    public List<Roles> viewRoles() {
        List<Roles> roleList = new ArrayList<>();
        String query = "select * from user_permission";
        try (PreparedStatement ps = con.prepareStatement(query); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Roles role = new Roles();
                role.setRole_id(rs.getInt("permission_id"));
                role.setRole_name(rs.getString("permission_name"));
                role.setRole_desc(rs.getString("permission_desc"));
                roleList.add(role);
            }
            return roleList;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean updateRoles(int roleId, int userId) {
        String sql = "UPDATE [dbo].[user_account] SET [permission_id] = ? WHERE user_id= ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, roleId);
            ps.setInt(2, userId);
            int rowAffected = ps.executeUpdate();
            return rowAffected > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean modifyRoles(Roles rl) {
        String sql
                = "UPDATE [dbo].[user_permission] SET [permission_name] = ? ,[permission_desc] = ? WHERE permission_name  = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, rl.getRole_name());
            ps.setString(2, rl.getRole_desc());
            ps.setString(3, rl.getRole_name());
            int rowAffected = ps.executeUpdate();
            return rowAffected > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public void registerSeller(UserAccount seller) throws Exception {

        String query = "INSERT INTO [dbo].[user_account] ([email],[passwordHash],permission_id, application_date, status) VALUES (?, ?,?,?,'Pending')";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, seller.getEmail());
            String hashedPassword = hashPassword(seller.getPassword());
            ps.setString(2, hashedPassword);
            ps.setInt(3, 2);
            ps.setDate(4, new java.sql.Date(new java.util.Date().getTime()));
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("error :" + e.getMessage());
            throw e;
        }
    }

    public void updateSeller(UserAccount seller) throws Exception {
        String query = "UPDATE [dbo].[user_account] SET status = ?, approved_date = ? WHERE user_id = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, seller.getStatus());
            ps.setDate(2, new java.sql.Date(new java.util.Date().getTime()));
            ps.setInt(3, seller.getUser_id());
            ps.executeUpdate();

        } catch (Exception e) {
            throw e;
        }
    }

    public List<UserAccount> getAllSeller() {
        String query = "SELECT * FROM [dbo].[user_account] WHERE permission_id = 2";
        List<UserAccount> lst = new ArrayList<>();
        try (PreparedStatement ps = con.prepareStatement(query)) {
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    UserAccount ua = new UserAccount();
                    ua.setUser_id(rs.getInt("user_id"));
                    ua.setEmail(rs.getString("email"));
                    ua.setGiven_name(rs.getString("given_name"));
                    ua.setFamily_name(rs.getString("family_name"));
                    ua.setDob(rs.getString("dob"));
                    ua.setPhone(rs.getString("phone"));
                    ua.setPermission_id(rs.getInt("permission_id"));
                    ua.setCreated_at(rs.getTimestamp("created_at"));
                    lst.add(ua);
                }
                return lst;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lst;
    }

   

    public static void main(String[] args) {
        AdminDAO dao = new AdminDAO();
        System.out.println(dao.userDelete("1012"));
        ;
    }
}
