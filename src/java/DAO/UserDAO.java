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
 * @author Tiến_Đạt
 */
public class UserDAO {

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

    public boolean checkRegister(UserAccount ua) {
        String email = ua.getEmail();
        String password = ua.getPassword();
        int role = ua.getEmail().contains("apex") ? 2 : 3;
        String hashedPassword = hashPassword(password);
        if (userExisted(email)) {
            return false;
        }
        String query
                = "INSERT INTO [dbo].[user_account] ([email] ,[passwordHash] ,[permission_id]) VALUES (?,?,?)";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, email);
            ps.setString(2, hashedPassword);
            ps.setInt(3, role);
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean checkRegisterByGG(UserAccount UserAccount) {
        String email = UserAccount.getEmail();
        String password = "123456";
        if (userExisted(email)) {
            return false;
        }

        String query
                = "INSERT INTO [dbo].[user_account] ([email],[passwordHash], [given_name], [family_name]) VALUES (?, ?,?,?)";

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
        String query
                = "INSERT INTO user_account (email, passwordHash, given_name, family_name,dob, phone) VALUES (?,?, ?, ?, ?, ?)";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            // Setting the parameters for the query
            ps.setString(1, userAccount.getEmail());
            ps.setString(2, userAccount.getPassword());
            ps.setString(3, userAccount.getGiven_name());
            ps.setString(4, userAccount.getFamily_name());
            ps.setString(5, "You need to edit for the first time");
            ps.setString(6, "You need to edit for the first time");

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

    public int getRoles(UserAccount ua) {
        int roles = 0;
        String query
                = "select up.permission_id from user_account ua join user_permissions up on ua.user_id = up.user_id where ua.email = ?";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, ua.getEmail());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                roles = rs.getInt("permission_id");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return roles;
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
                    userAccount.setDob(rs.getString("dob"));
                    userAccount.setPhone(rs.getString("phone"));
                    userAccount.setPermission_id(rs.getInt("permission_id"));
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
                    Address address
                            = new Address(
                                    rs.getInt("address_id"),
                                    rs.getString("address"),
                                    rs.getInt("pin_code"),
                                    rs.getInt("user_id"));
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
            ps.setString(1, updatedAddress.getAddress());
            ps.setInt(2, updatedAddress.getPin_code());
            ps.setInt(3, updatedAddress.getAddress_id());

            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteAddress(int id_delete) {
        String query = "Delete from address where address_id = ?";
        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, id_delete);

            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void editProfile(UserAccount acc) {
        String query
                = "UPDATE user_account SET given_name = ?, family_name = ?,dob = ?,phone = ? WHERE user_id = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, acc.getGiven_name());
            ps.setString(2, acc.getFamily_name());
            ps.setString(3, acc.getDob());
            ps.setString(4, acc.getPhone());
            ps.setInt(5, acc.getUser_id());
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {

        UserDAO r = new UserDAO();
        List<String> a = new ArrayList<>();
        a.add("a");
        Status s = new Status(15, "a2", a, "a2", 0);
        Comment c = new Comment(0, "giangnoi", 1, 5);
        CommentCar cc = new CommentCar(0, "cmt3", 1110, 4);
        System.out.println(r.addNewCommentFor1Car(cc));

        // Edit the address
    }

    public List<Status> viewAllStatus() {
        List<Status> status = new ArrayList<>();
        String query
                = "SELECT * from status";

        try (PreparedStatement ps = con.prepareStatement(query); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                String status_images = rs.getString("status_images");
                List<String> imageUrls = new ArrayList<>();
                imageUrls.add(status_images);
                Status s = new Status();
                s.setStatus_id(rs.getInt("status_id"));
                s.setStatus_content(rs.getString("status_content"));
                s.setStatus_images(imageUrls);
                s.setStatus_title(rs.getString("status_title"));
                s.setUser_id(rs.getInt("user_id"));

                status.add(s);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }

    public boolean addNewStatus(Status s) {
        try {
            String query
                    = "INSERT INTO status (status_content,status_images,status_title,user_id) VALUES (?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);

            // Loop through each image_url and insert into database separately
            for (String imageUrl : s.getStatus_images()) {

                ps.setString(1, s.getStatus_content());
                ps.setString(2, imageUrl);
                ps.setString(3, s.getStatus_title());
                ps.setInt(4, s.getUser_id());

                int rowAffected = ps.executeUpdate();
                if (rowAffected <= 0) {
                    return false; // If any row is not affected, return false
                }
            }

            return true; // All rows inserted successfully
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }

    public List<Status> viewAllStatusFor1User(int id) {
        List<Status> Status = new ArrayList<>();
        String query = "SELECT * FROM [dbo].[status] WHERE user_id = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    String status_images = rs.getString("status_images");
                    List<String> imageUrls = new ArrayList<>();
                    imageUrls.add(status_images);
                    Status s
                            = new Status(
                                    rs.getInt("status_id"),
                                    rs.getString("status_content"),
                                    imageUrls,
                                    rs.getString("status_title"),
                                    rs.getInt("user_id"));
                    Status.add(s);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return Status;
    }

    public boolean updateStatus(Status ss) {
        String query
                = "UPDATE [dbo].[status] "
                + "SET [status_content] = ?, [status_images] = ?, [status_title] = ? "
                + "WHERE status_id = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {

            String logoUrl = ss.getStatus_images().isEmpty() ? "" : ss.getStatus_images().get(0);

            ps.setString(1, ss.getStatus_content());
            ps.setString(2, logoUrl);
            ps.setString(3, ss.getStatus_title());
            ps.setInt(4, ss.getStatus_id());

            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public void deleteStatus(int status_del) {
        String query = "Delete from status where status_id = ?";
        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, status_del);

            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Comment> viewAllComment() {
        List<Comment> comment = new ArrayList<>();
        String query
                = "SELECT * from comment";

        try (PreparedStatement ps = con.prepareStatement(query); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {

                Comment c = new Comment();
                c.setComment_id(rs.getInt("comment_id"));
                c.setComment_content(rs.getString("comment_content"));
                c.setStatus_id(rs.getInt("status_id"));
                c.setUser_id(rs.getInt("user_id"));

                comment.add(c);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return comment;
    }

    public boolean addNewComment(Comment c) {
        try {
            String query
                    = "INSERT INTO comment (comment_content,status_id,user_id) VALUES (?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);

            // Loop through each image_url and insert into database separately
            
                ps.setString(1, c.getComment_content());               
                ps.setInt(2, c.getStatus_id());
                ps.setInt(3, c.getUser_id());

                int rowAffected = ps.executeUpdate();
                if (rowAffected <= 0) {
                    return false; // If any row is not affected, return false
                }
            

            return true; // All rows inserted successfully
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<CommentCar> viewAllCommentFor1Car() {
        List<CommentCar> comment = new ArrayList<>();
        String query
                = "SELECT * from comment_car";

        try (PreparedStatement ps = con.prepareStatement(query); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {

                CommentCar c = new CommentCar();
                c.setComment_id(rs.getInt("comment_id"));
                c.setComment_content(rs.getString("comment_content"));
                c.setCar_id(rs.getInt("car_id"));
                c.setUser_id(rs.getInt("user_id"));

                comment.add(c);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return comment;
    }

    public boolean addNewCommentFor1Car(CommentCar c) {
        try {
            String query
                    = "INSERT INTO comment_car (comment_content,car_id,user_id) VALUES (?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);

            // Loop through each image_url and insert into database separately
            
                ps.setString(1, c.getComment_content());               
                ps.setInt(2, c.getCar_id());
                ps.setInt(3, c.getUser_id());

                int rowAffected = ps.executeUpdate();
                if (rowAffected <= 0) {
                    return false; // If any row is not affected, return false
                }
            

            return true; // All rows inserted successfully
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

}
