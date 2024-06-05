/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Models.Car;
import Models.WishList;
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
public class CarDao {

    PreparedStatement ps = null;
    ResultSet rs = null;
    DBConnect db = new DBConnect();
    Connection con = db.connection;

    public List<Car> viewProducts() {
        List<Car> cars = new ArrayList<>();
        String query = "SELECT [car_id], [name], [cylinders], [horsepower], "
                + "[weight], [acceleration], [model_year], [origin],[price], [description], "
                + "[brand_id], [category_id] FROM [dbo].[car]";

        try (PreparedStatement ps = con.prepareStatement(query); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Car car = new Car();
                car.setCar_id(rs.getInt("car_id"));
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

    public Car viewDetail(int id) {
        Car car = null; // Chỉ cần một đối tượng Car
        String query = "SELECT [car_id], [name], [cylinders], [horsepower], "
                + "[weight], [acceleration], [model_year], [origin],[price], [description], "
                + "[brand_id], [category_id] FROM [dbo].[car] WHERE [car_id] = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, id); // Thiết lập giá trị cho tham số car_id
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) { // Chỉ cần một kết quả, không cần dùng while
                    car = new Car();
                    car.setCar_id(id);
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
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return car; // Trả về đối tượng Car hoặc null nếu không tìm thấy
    }

    public static void main(String[] args) {
        CarDao dao = new CarDao();
        Car car = dao.viewDetail(1004);
        WishList wish = new WishList(0, 10, 1004, car);

        System.out.println(dao.viewAllWishList());
    }

    public void addToWishList(WishList wish) {
        String query = "INSERT INTO wishlist (user_id,car_id) VALUES (?, ?)";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            // Setting the parameters for the query
            ps.setInt(1, wish.getUser_id());
            ps.setInt(2, wish.getCar_id());

            // Thực hiện truy vấn để thêm dữ liệu vào cơ sở dữ liệu
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public List<WishList> viewAllWishList() {
        List<WishList> listWish = new ArrayList<>();
        String query = "SELECT \n"
                + "    c.name, \n"
                + "    c.cylinders, \n"
                + "    c.horsepower, \n"
                + "    c.weight, \n"
                + "    c.acceleration, \n"
                + "    c.model_year, \n"
                + "    c.origin, \n"
                + "    c.price, \n"
                + "    c.description, \n"
                + "    c.brand_id, \n"
                + "    c.category_id,\n"
                + "    w.wish_list_id,\n"
                + "    w.user_id,\n"
                + "    w.car_id\n"
                + "FROM \n"
                + "    wishlist AS w\n"
                + "JOIN \n"
                + "    car AS c ON c.car_id = w.car_id";

        try (PreparedStatement ps = con.prepareStatement(query); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Car car = new Car();
                car.setName(rs.getString("name"));
                car.setCylinders(rs.getInt("cylinders"));
                car.setHorsepower(rs.getFloat("horsepower"));
                car.setWeight(rs.getFloat("weight"));
                car.setAcceleration(rs.getFloat("acceleration"));
                car.setModel_year(rs.getInt("model_year"));  // Đổi thành modelYear cho nhất quán
                car.setOrigin(rs.getString("origin"));
                car.setPrice(rs.getFloat("price"));
                car.setDescription(rs.getString("description"));
                car.setBrand_id(rs.getInt("brand_id"));  // Đổi thành brandId cho nhất quán
                car.setCategory_id(rs.getInt("category_id"));  // Đổi thành categoryId cho nhất quán

                WishList wish = new WishList();
                wish.setWhis_list_id(rs.getInt("wish_list_id"));  // Đổi thành wishListId cho nhất quán
                wish.setUser_id(rs.getInt("user_id"));
                wish.setCar_id(rs.getInt("car_id"));
                wish.setCar(car);  // Gán đối tượng Car vào WishList

                listWish.add(wish);  // Thêm đối tượng WishList vào danh sách
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listWish;
    }

    public void deleteFromWishList(int idwish) {
        String query = "Delete from wishlist where wish_list_id = ?";
        try (PreparedStatement ps = con.prepareStatement(query)) {
            // Setting the parameters for the query
            ps.setInt(1, idwish);

            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
