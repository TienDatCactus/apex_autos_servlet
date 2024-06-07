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

    public static void main(String[] args) {
        AdminDAO dao = new AdminDAO();
        System.out.println(dao.viewUsers());
    }
}
