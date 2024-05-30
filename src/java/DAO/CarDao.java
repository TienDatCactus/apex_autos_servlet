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
 * @author Admin
 */
public class CarDao {

    PreparedStatement ps = null;
    ResultSet rs = null;
    DBConnect db = new DBConnect();
    Connection con = db.connection;

//        public boolean checkRegister(UserAccount userAccount) {
//        String email = userAccount.getEmail();
//        String password = userAccount.getPassword();
//
//       
//        String query = "INSERT INTO [dbo].[car] ([name], [cylinders], [horsepower], [weight], [acceleration]"
//                + ", [model_year], [origin], [description], [brand_id]"
//                + ", [category_id]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
//
//        try (PreparedStatement ps = con.prepareStatement(query)) {
//            ps.setString(1, email);
//            
//            ps.setString(2, password);
//
//            int rowsAffected = ps.executeUpdate();
//            return rowsAffected > 0;
//        } catch (SQLException e) {
//            e.printStackTrace();
//            return false;
//        }
//    }
    public List<Car> viewAllCar() {
        List<Car> cars = new ArrayList<>();
        String query = "SELECT [car_id], [name], [cylinders], [horsepower], "
                + "[weight], [acceleration], [model_year], [origin],[price], [description], "
                + "[brand_id], [category_id] FROM [dbo].[car]";

        try (PreparedStatement ps = con.prepareStatement(query); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Car car = new Car();

                car.setName(rs.getString("name"));
                car.setCylinders(rs.getInt("cylinders"));
                car.setHorsepower(rs.getFloat("horsepower"));
                car.setWeight(rs.getFloat("weight"));
                car.setAcceleration(rs.getFloat("acceleration"));
                car.setModel_year(rs.getInt("model_year"));
                car.setOrigin(rs.getString("origin"));
                car.setPrice(rs.getFloat("price"));
                car.setDescription(rs.getString("description"));
                car.setBrand_id(rs.getInt("brand_id"));
                car.setCategory_id(rs.getInt("category_id"));
                cars.add(car);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cars;
    }

    public static void main(String[] args) {
        CarDao dao = new CarDao();
        System.out.println("" + dao.viewAllCar());
    }

}
