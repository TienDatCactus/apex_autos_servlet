/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Models.Car;
import Models.CartItems;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Tiến_Đạt
 */
public class CarDAO {

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

    public void addToCart(int user_id, int car_id) {
        String selectCartQuery = "SELECT cart_id FROM cart WHERE user_id = ?";
        String insertCartQuery = "INSERT INTO cart (user_id) VALUES (?)";
        String insertCartItemQuery = "INSERT INTO cart_items (cart_id, car_id) VALUES (?, ?)";

        try (
                PreparedStatement psSelectCart = con.prepareStatement(selectCartQuery); PreparedStatement psInsertCart = con.prepareStatement(insertCartQuery, Statement.RETURN_GENERATED_KEYS); PreparedStatement psInsertCartItem = con.prepareStatement(insertCartItemQuery)) {

            // Check if the user already has a cart
            psSelectCart.setInt(1, user_id);
            ResultSet rsCart = psSelectCart.executeQuery();

            int cart_id;
            if (rsCart.next()) {
                // If the user already has a cart, get its ID
                cart_id = rsCart.getInt("cart_id");
            } else {
                // If the user doesn't have a cart, create one and get its ID
                psInsertCart.setInt(1, user_id);
                int affectedRows = psInsertCart.executeUpdate();
                if (affectedRows == 0) {
                    throw new SQLException("Creating cart failed, no rows affected.");
                }

                try (ResultSet rsGeneratedKeys = psInsertCart.getGeneratedKeys()) {
                    if (rsGeneratedKeys.next()) {
                        cart_id = rsGeneratedKeys.getInt(1);
                    } else {
                        throw new SQLException("Creating cart failed, no ID obtained.");
                    }
                }
            }

            // Add the item to the cart
            psInsertCartItem.setInt(1, cart_id);
            psInsertCartItem.setInt(2, car_id);
            psInsertCartItem.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<CartItems> cartItems(int user_id) {
        List<CartItems> cartItemsList = new ArrayList<>();

        String selectCartQuery = "SELECT cart_id FROM cart WHERE user_id = ?";
        String selectCartItemsQuery = "SELECT ci.cart_id, ci.car_id, c.* FROM cart_items ci INNER JOIN car c ON ci.car_id = c.car_id WHERE ci.cart_id = ?";

        try (
                PreparedStatement psSelectCart = con.prepareStatement(selectCartQuery); PreparedStatement psSelectCartItems = con.prepareStatement(selectCartItemsQuery)) {

            // Check if the user has a cart
            psSelectCart.setInt(1, user_id);
            ResultSet rsCart = psSelectCart.executeQuery();

            if (rsCart.next()) {
                int cart_id = rsCart.getInt("cart_id");

                // Retrieve cart items
                psSelectCartItems.setInt(1, cart_id);
                ResultSet rsCartItems = psSelectCartItems.executeQuery();

                while (rsCartItems.next()) {
                    Car car = new Car(
                            rsCartItems.getInt("car_id"),
                            rsCartItems.getString("name"),
                            rsCartItems.getInt("cylinders"),
                            rsCartItems.getFloat("horsepower"),
                            rsCartItems.getFloat("weight"),
                            rsCartItems.getFloat("acceleration"),
                            rsCartItems.getInt("model_year"),
                            rsCartItems.getString("origin"),
                            rsCartItems.getFloat("price"),
                            rsCartItems.getString("description"),
                            rsCartItems.getInt("brand_id"),
                            rsCartItems.getInt("category_id")
                    );
                    CartItems cartItem = new CartItems(cart_id, car);
                    cartItemsList.add(cartItem);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return cartItemsList; // This will be an empty list if there's no cart or no cart items
    }

    public void deleteFromCart(int item) {
        String query = "Delete from wishlist where wish_list_id = ?";
        try (PreparedStatement ps = con.prepareStatement(query)) {
            // Setting the parameters for the query
            ps.setInt(1, item);

            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        CarDAO dao = new CarDAO();
        System.out.println(dao.cartItems(1));
    }
}
