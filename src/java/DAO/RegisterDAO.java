/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Models.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Tiến_Đạt
 */
public class RegisterDAO {

    PreparedStatement ps = null;
    ResultSet rs = null;
    DBConnect db = new DBConnect();
    Connection con = db.connection;

    public boolean checkRegister(UserAccount ua, UserDetails ud) {
        boolean status;
        if (userExisted(ua.getEmail())) {
            status = false;
            return status;
        }
        String query = "INSERT INTO [dbo].[user_account] ([email], [password]) VALUES (?, ?)";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, ua.getEmail());
            ps.setString(2, ua.getPassword());
            ps.executeUpdate();
            status = true;
        } catch (Exception e) {
            e.printStackTrace();
            status = false;
        }
        return status;
    }

    public boolean userExisted(String email) {
        String query = "select * from user_account where Email = ?";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static void main(String[] args) {
        UserAccount ua = new UserAccount("dadas@gmail.com", "dat123");
   //     UserDetails ud = new UserDetails("tien", "dat", "11-12-2131", "03387226123");
        RegisterDAO reg = new RegisterDAO();
   //     System.out.println(reg.checkRegister(ua, ud)
   //     );
    }
}
