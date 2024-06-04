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
import java.util.ArrayList;
import java.util.List;

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

    public boolean checkRegisterByGG(UserAccount UserAccount) {
        String email = UserAccount.getEmail();
        String password = "123456";
        if (userExisted(email)) {
            return false;
        }

        String query = "INSERT INTO [dbo].[user_account] ([email],[passwordHash], [given_name], [family_name]) VALUES (?, ?,?,?)";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, email);
            String hashedPassword = hashPassword(password);
            ps.setString(2, hashedPassword);
            ps.setString(3, UserAccount.getGiven_name());
            ps.setString(4, UserAccount.getFamily_name());

            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean checkLogin(UserAccount userAccount) {
        String email = userAccount.getEmail();
        String password = userAccount.getPassword();

        String query = "SELECT * FROM [dbo].[user_account] WHERE email = ? AND passwordHash = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, email);
            String hashedPassword = hashPassword(password);
            ps.setString(2, hashedPassword);

            ResultSet rs = ps.executeQuery();

            return rs.next();

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

    public UserAccount viewDetail(UserAccount userAccount) {

        String query = " select * from user_account where email = ? and passwordHash = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            // Setting the parameters for the query
            ps.setString(1, userAccount.getEmail());
            ps.setString(2, userAccount.getPassword());

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    userAccount.setUser_id(rs.getInt("user_id"));
                    userAccount.setEmail(rs.getString("email"));
                    userAccount.setPassword(rs.getString("passwordHash"));

                    userAccount.setGiven_name(rs.getString("given_name"));
                    userAccount.setFamily_name(rs.getString("family_name"));

                    userAccount.setPhone(rs.getString("phone"));
                } else {
                    // If no result is found, return null or handle as per your requirements
                    return null;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userAccount;
    }

    public boolean registerByGG(UserAccount userAccount) {
        String query = "INSERT INTO user_account (email, passwordHash, given_name, family_name, phone) VALUES (?, ?, ?, ?, ?)";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            // Setting the parameters for the query
            ps.setString(1, userAccount.getEmail());
            ps.setString(2, userAccount.getPassword());
            ps.setString(3, userAccount.getGiven_name());
            ps.setString(4, userAccount.getFamily_name());
            ps.setString(5, userAccount.getPhone());

            // Execute the update
            int affectedRows = ps.executeUpdate();

            if (affectedRows > 0) {

                return true;

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public static void main(String[] args) {
        UserAccount a = new UserAccount("locdphe170093@fpt.edu.vn", "123456",
                "", "", "");
        UserDAO r = new UserDAO();
        
        Address updatedAddress = new Address(3, "aaaaaa", 6, 0);

        // Edit the address
        r.editAddress(updatedAddress);
    }

    public UserAccount getUserByEmail(String email) {
        UserAccount userAccount = new UserAccount();
        String query = " select * from user_account where email = ? ";
        try (PreparedStatement ps = con.prepareStatement(query)) {
            // Setting the parameters for the query
            ps.setString(1, email);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {

                    userAccount.setUser_id(rs.getInt("user_id"));
                    userAccount.setEmail(rs.getString("email"));
                    userAccount.setPassword(rs.getString("passwordHash"));

                    userAccount.setGiven_name(rs.getString("given_name"));
                    userAccount.setFamily_name(rs.getString("family_name"));

                    userAccount.setPhone(rs.getString("phone"));
                } else {
                    // If no result is found, return null or handle as per your requirements
                    return null;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userAccount;
    }

    public void addNewAddress(Address address) {
        String query = "INSERT INTO address (address, pin_code, user_id) VALUES (?, ?, ?)";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            // Setting the parameters for the query
            ps.setString(1, address.getAddress());
            ps.setInt(2, address.getPin_code());
            ps.setInt(3, address.getUser_id());

            // Thực hiện truy vấn để thêm dữ liệu vào cơ sở dữ liệu
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Address> viewAllAddressFor1User(int userId) {
        List<Address> addresses = new ArrayList<>();
        String query = "SELECT * FROM [dbo].[address] WHERE user_id = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, userId);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Address address = new Address(rs.getInt("address_id"), rs.getString("address"), rs.getInt("pin_code"), rs.getInt("user_id"));
                    addresses.add(address);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return addresses;
    }

    public void editAddress(Address updatedAddress) {
        String query = "UPDATE address SET address = ?, pin_code = ? WHERE address_id = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            // Setting the parameters for the query
            ps.setString(1, updatedAddress.getAddress());
            ps.setInt(2, updatedAddress.getPin_code());
            ps.setInt(3, updatedAddress.getAddress_id());

            // Execute the query to update the data in the database
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteAddress(int id_delete) {
        String query = "Delete from address where address_id = ?";
        try (PreparedStatement ps = con.prepareStatement(query)) {
            // Setting the parameters for the query
            ps.setInt(1, id_delete);

            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
