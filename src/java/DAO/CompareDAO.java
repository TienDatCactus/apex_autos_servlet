/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Models.Compare;
import Models.CompareItems;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin123
 */
public class CompareDAO {

    PreparedStatement ps = null;
    ResultSet rs = null;
    DBConnect db = new DBConnect();
    Connection con = db.connection;

    public Compare findCompareByUserId(int userId) {
        Compare c = null;
        String sql = "select * from compare right join compare_items\n"
                + "on compare.compare_id = compare_items.compare_id\n"
                + "where user_id = ?";

        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();
            List<CompareItems> cis = new ArrayList<>();
            int i = 0;
            while (rs.next()) {
                cis.add(new CompareItems(rs.getInt(3), rs.getInt(4), rs.getInt(5)));
            }

            if (!cis.isEmpty()) {
                c = new Compare(cis.get(0).getCompareId(), cis.get(0).getCarId());
                c.setItems(cis);
            }
            return c;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return c;
    }

    public void deleteCompareItems(int compareId, int car_id) {
        String query = "Delete from compare_items where compare_id = ? and car_id = ?";
        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, compareId);
            ps.setInt(2, car_id);
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

//    public List<CompareItems> findCompareItemsByComapareId(int compareId) {
//        List<CompareItems> lst = new ArrayList<>();
//        String sql = "select * from compare_items where compare_id = ?";
//
//        try (PreparedStatement ps = con.prepareStatement(sql)) {
//            ps.setInt(1, compareId);
//            ResultSet rs = ps.executeQuery();
//
//            while (rs.next()) {
//                lst.add(new CompareItems(rs.getInt(1), rs.getInt(2), rs.getInt(3)));
//            }
//            return lst;
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return lst;
//    }
//    public void addCarToCompare(int userId, int carId) {
//        String insertCompareQuery = "INSERT INTO compare_items (compare_id, car_id) VALUES ((SELECT compare_id FROM compare WHERE user_id = ?), ?)";
//
//        try (PreparedStatement psInsertCompare = con.prepareStatement(insertCompareQuery)) {
//            psInsertCompare.setInt(1, userId);
//            psInsertCompare.setInt(2, carId);
//            psInsertCompare.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
    public void AddtoCompare(int user_id, int id_car) throws SQLException {
        String selectCartQuery = "SELECT compare_id FROM compare WHERE user_id = ?";
        String insertCartQuery = "INSERT INTO compare (user_id) VALUES (?)";
        String insertCartItemQuery = "INSERT INTO compare_items (compare_id, car_id) VALUES (?, ?)";
        String coutnCartItemQuery = "select count(*) from compare_items where compare_id = ?";
        String countDupplicateQuery = "select count(*) from compare_items where compare_id = ? and car_id = ?";

        try (
                PreparedStatement psSelectCart = con.prepareStatement(selectCartQuery); PreparedStatement psInsertCart = con.prepareStatement(insertCartQuery, Statement.RETURN_GENERATED_KEYS); PreparedStatement psCoutnCartItem = con.prepareStatement(coutnCartItemQuery); PreparedStatement psInsertCartItem = con.prepareStatement(insertCartItemQuery); PreparedStatement psCountDupplicate = con.prepareStatement(countDupplicateQuery);) {

            // Check if the user already has a cart
            psSelectCart.setInt(1, user_id);
            ResultSet rsCart = psSelectCart.executeQuery();

            int compare_id;
            if (rsCart.next()) {
                // If the user already has a cart, get its ID
                compare_id = rsCart.getInt("compare_id");
            } else {
                // If the user doesn't have a cart, create one and get its ID
                psInsertCart.setInt(1, user_id);
                int affectedRows = psInsertCart.executeUpdate();
                if (affectedRows == 0) {
                    throw new SQLException("Creating compare failed, no rows affected.");
                }

                try (ResultSet rsGeneratedKeys = psInsertCart.getGeneratedKeys()) {
                    if (rsGeneratedKeys.next()) {
                        compare_id = rsGeneratedKeys.getInt(1);
                    } else {
                        throw new SQLException("Creating compare failed, no ID obtained.");
                    }
                }
            }

            //check duplicate
            psCountDupplicate.setInt(1, compare_id);
            psCountDupplicate.setInt(2, id_car);
            ResultSet rsDupplicate = psCountDupplicate.executeQuery();
            if (rsDupplicate.next()) {
                if (rsDupplicate.getInt(1) > 0) {
                    throw new SQLException("This item already added!");
                }
            }

            //count compare item
            psCoutnCartItem.setInt(1, compare_id);
            ResultSet rsCount = psCoutnCartItem.executeQuery();
            if (rsCount.next()) {
                int count = rsCount.getInt(1);
                if (count >= 4) {
                    throw new SQLException("Cannot add because have >= 4 item");
                } else {

                    //insert
                    // Add the item to the cart
                    psInsertCartItem.setInt(1, compare_id);
                    psInsertCartItem.setInt(2, id_car);
                    psInsertCartItem.executeUpdate();
                }
            } else {
                //insert
                // Add the item to the cart
                psInsertCartItem.setInt(1, compare_id);
                psInsertCartItem.setInt(2, id_car);
                psInsertCartItem.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        }
    }
}
