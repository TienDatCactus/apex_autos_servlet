/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Models.*;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @author Tiến_Đạt
 */
public class CarDao {

    DBConnect db = new DBConnect();
    Connection con = db.connection;

    public List<Car> viewProducts() {
        List<Car> cars = new ArrayList<>();
        String query = "select * from car";
//                = "select distinct c.car_id, c.name,c.cylinders,c.horsepower,c.weight,c.acceleration,c.model_year,c.origin,c.price,c.description,c.brand_id,c.category_id,c.seller_id from car c join car_images ci on c.car_id = ci.car_id where c.cylinders is not null";

        try (PreparedStatement ps = con.prepareStatement(query); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Car car = new Car();
                car.setCar_id(rs.getInt("car_id"));
                car.setName(rs.getString("name"));
                car.setCylinders(rs.getInt("cylinders"));
                car.setHorsepower(rs.getFloat("horsepower"));
                car.setWeight(rs.getFloat("weight"));
                car.setAcceleration(rs.getFloat("acceleration"));
                car.setModel_year(rs.getString("model_year"));
                car.setOrigin(rs.getString("origin"));
                car.setPrice(rs.getInt("price"));
                car.setDescription(rs.getString("description"));
                car.setBrand_id(rs.getInt("brand_id"));
                car.setCategory_id(rs.getInt("category_id"));
                car.setSeller_id(rs.getInt("seller_id"));
                cars.add(car);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cars;
    }

    public Car viewDetail(int id) {
        Car car = null; // Chỉ cần một đối tượng Car
        String query
                = "SELECT [car_id], [name], [cylinders], [horsepower], "
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
                    car.setModel_year(rs.getString("model_year"));
                    car.setOrigin(rs.getString("origin"));
                    car.setPrice(rs.getInt("price"));
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

    public boolean clearCart(int user_id) {
        String query = "Delete from cart where user_id = ?";
        try (PreparedStatement ps = con.prepareStatement(query)) {
            // Setting the parameters for the query
            ps.setInt(1, user_id);

            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;

    }

    public boolean checkExistedItems(int carId, int userId) {
        String sql = "SELECT COUNT(*) FROM [dbo].[cart_item] WHERE car_id = ? and cart_id = ? ;";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, carId);
            ps.setInt(2, getCartId(userId));
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    int count = rs.getInt(1);
                    return count > 0;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public int getCartId(int userId) {
        int cartId = -1;
        String sql = "Select cart_id from cart where user_id = ?";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, userId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    cartId = rs.getInt("cart_id");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cartId;
    }

    public boolean addToCart(int user_id, int car_id) {
        String selectCartQuery = "SELECT cart_id FROM cart WHERE user_id = ?";
        String insertCartQuery = "INSERT INTO cart (user_id) VALUES (?)";
        String insertCartItemQuery = "INSERT INTO cart_item (cart_id, car_id) VALUES (?, ?)";

        try (PreparedStatement psSelectCart = con.prepareStatement(selectCartQuery); PreparedStatement psInsertCart
                = con.prepareStatement(insertCartQuery, Statement.RETURN_GENERATED_KEYS); PreparedStatement psInsertCartItem = con.prepareStatement(insertCartItemQuery)) {

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
            return true;
        } catch (SQLException e) {
            e.printStackTrace();

        }
        return false;
    }

    public List<CartItems> cartItems(int user_id) {
        List<CartItems> cartItemsList = new ArrayList<>();

        String selectCartQuery = "SELECT cart_id FROM cart WHERE user_id = ?";
        String selectCartItemsQuery
                = "SELECT ci.item_id, ci.cart_id, c.* FROM cart_item ci INNER JOIN car c ON ci.car_id = c.car_id WHERE ci.cart_id = ?";

        try (PreparedStatement psSelectCart = con.prepareStatement(selectCartQuery); PreparedStatement psSelectCartItems = con.prepareStatement(selectCartItemsQuery)) {

            // Check if the user has a cart
            psSelectCart.setInt(1, user_id);
            ResultSet rsCart = psSelectCart.executeQuery();

            if (rsCart.next()) {
                int cart_id = rsCart.getInt("cart_id");

                // Retrieve cart items
                psSelectCartItems.setInt(1, cart_id);
                ResultSet rsCartItems = psSelectCartItems.executeQuery();

                while (rsCartItems.next()) {
                    int item_id = rsCartItems.getInt("item_id");
                    Car car
                            = new Car(
                                    rsCartItems.getInt("car_id"),
                                    rsCartItems.getString("name"),
                                    rsCartItems.getInt("cylinders"),
                                    rsCartItems.getFloat("horsepower"),
                                    rsCartItems.getFloat("weight"),
                                    rsCartItems.getFloat("acceleration"),
                                    rsCartItems.getString("model_year"),
                                    rsCartItems.getString("origin"),
                                    rsCartItems.getInt("price"),
                                    rsCartItems.getString("description"),
                                    rsCartItems.getInt("brand_id"),
                                    rsCartItems.getInt("category_id"));
                    CartItems cartItem = new CartItems(item_id, car);
                    cartItemsList.add(cartItem);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return cartItemsList; // This will be an empty list if there's no cart or no cart items
    }

    public boolean deleteFromCart(int item_id) {
        String query = "DELETE FROM [dbo].[cart_item] WHERE item_id = ?";
        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, item_id);
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public int saveOrder(Orders order) {
        String sql = "INSERT INTO orders (user_id, order_date, status, total) VALUES (?, ?, ?, ?)";
        try (PreparedStatement pstmt = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            pstmt.setInt(1, order.getUser_id());
            pstmt.setString(2, order.getOrder_date());
            pstmt.setString(3, order.getStatus());
            pstmt.setFloat(4, order.getTotal());

            pstmt.executeUpdate();

            try (ResultSet generatedKeys = pstmt.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    return generatedKeys.getInt(1);
                } else {
                    throw new SQLException("Creating order failed, no ID obtained.");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

    public boolean saveOrderItem(OrderItems item) {
        String sql = "INSERT INTO order_items (order_id, car_id) VALUES (?, ?)";
        try (PreparedStatement pstmt = con.prepareStatement(sql)) {
            pstmt.setInt(1, item.getOrder_id());
            pstmt.setInt(2, item.getCar().getCar_id());
            return pstmt.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public List<OrderItems> orderItems(int user_id) {
        List<OrderItems> orderItemsList = new ArrayList<>();

        String selectOrdersQuery = "SELECT order_id FROM orders WHERE user_id = ?";
        String selectOrderItemsQuery = "SELECT ci.order_item_id, ci.order_id, c.* FROM order_items ci INNER JOIN car c ON ci.car_id = c.car_id WHERE ci.order_id = ?";

        try (PreparedStatement psSelectOrders = con.prepareStatement(selectOrdersQuery); PreparedStatement psSelectOrderItems = con.prepareStatement(selectOrderItemsQuery)) {

            // Get all orders for the user
            psSelectOrders.setInt(1, user_id);
            ResultSet rsOrders = psSelectOrders.executeQuery();

            // Iterate through each order
            while (rsOrders.next()) {
                int order_id = rsOrders.getInt("order_id");

                // Get all items for the current order
                psSelectOrderItems.setInt(1, order_id);
                ResultSet rsOrderItems = psSelectOrderItems.executeQuery();

                while (rsOrderItems.next()) {
                    int item_id = rsOrderItems.getInt("order_item_id");
                    Car car = new Car(
                            rsOrderItems.getInt("car_id"),
                            rsOrderItems.getString("name"),
                            rsOrderItems.getInt("cylinders"),
                            rsOrderItems.getFloat("horsepower"),
                            rsOrderItems.getFloat("weight"),
                            rsOrderItems.getFloat("acceleration"),
                            rsOrderItems.getString("model_year"),
                            rsOrderItems.getString("origin"),
                            rsOrderItems.getInt("price"),
                            rsOrderItems.getString("description"),
                            rsOrderItems.getInt("brand_id"),
                            rsOrderItems.getInt("category_id")
                    );

                    OrderItems orderItems = new OrderItems(item_id, car);
                    orderItemsList.add(orderItems);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return orderItemsList; // This will contain all order items for all orders of the user
    }

    public List<OrderItems> AllOrderItems(int selller_id) {
        List<OrderItems> orderItemsList = new ArrayList<>();

        String selectOrderItemsQuery = "select * from orders o join order_items oi on o.order_id = oi.order_id join car c on oi.car_id = c.car_id where seller_id = ?";

        try (PreparedStatement psSelectOrderItems = con.prepareStatement(selectOrderItemsQuery)) {

            // Get all orders for the user
            psSelectOrderItems.setInt(1, selller_id);
            ResultSet rsOrders = psSelectOrderItems.executeQuery();

            while (rsOrders.next()) {
                int item_id = rsOrders.getInt("order_item_id");
                Car car = new Car(
                        rsOrders.getInt("car_id"),
                        rsOrders.getString("name"),
                        rsOrders.getInt("cylinders"),
                        rsOrders.getFloat("horsepower"),
                        rsOrders.getFloat("weight"),
                        rsOrders.getFloat("acceleration"),
                        rsOrders.getString("model_year"),
                        rsOrders.getString("origin"),
                        rsOrders.getInt("price"),
                        rsOrders.getString("description"),
                        rsOrders.getInt("brand_id"),
                        rsOrders.getInt("category_id")
                );

                OrderItems orderItems = new OrderItems(item_id,rsOrders.getInt("order_id"), car,rsOrders.getFloat("total"),rsOrders.getString("status"));
                orderItemsList.add(orderItems);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return orderItemsList; // This will contain all order items for all orders of the user
    }

    public static void main(String[] args) {
        CarDao dao = new CarDao();
       
        System.out.println(dao.AllOrderItems(1020));
    }

    public List<CarCategory> viewCarCategory() {
        List<CarCategory> cars_cate = new ArrayList<>();
        String query = "SELECT [id]\n" + "      ,[name]\n" + "  FROM [dbo].[car_category]";

        try (PreparedStatement ps = con.prepareStatement(query); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                CarCategory car_Category = new CarCategory();
                car_Category.setId(rs.getInt("id"));
                car_Category.setName(rs.getString("name"));

                cars_cate.add(car_Category);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cars_cate;
    }

    public List<CarBrand> viewCarBrand() {
        List<CarBrand> cars_brand = new ArrayList<>();
        String query = "SELECT [id]\n" + "      ,[name]\n" + "  FROM [dbo].[car_brand]";

        try (PreparedStatement ps = con.prepareStatement(query); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                CarBrand car_Brand = new CarBrand();
                car_Brand.setId(rs.getInt("id"));
                car_Brand.setName(rs.getString("name"));

                cars_brand.add(car_Brand);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cars_brand;
    }

    public List<Car> viewProductForSeller(int seller_id) {
        List<Car> listCar = new ArrayList<>();
        String query = "SELECT * FROM [dbo].[car] WHERE seller_id = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, seller_id);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Car car
                            = new Car(
                                    rs.getInt("car_id"),
                                    rs.getString("name"),
                                    rs.getInt("cylinders"),
                                    rs.getFloat("horsepower"),
                                    rs.getFloat("weight"),
                                    rs.getFloat("acceleration"),
                                    rs.getString("model_year"),
                                    rs.getString("origin"),
                                    rs.getInt("price"),
                                    rs.getString("description"),
                                    rs.getInt("brand_id"),
                                    rs.getInt("category_id"),
                                    rs.getInt("seller_id"));
                    listCar.add(car);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listCar;
    }

    public boolean addSellerItem(Car car) {
        String query
                = "INSERT INTO [dbo].[car] ([name] ,[model_year] ,[price] ,[description] ,[brand_id] ,[category_id] ,[seller_id]) VALUES ( ?,?,?,?,?,?,?)";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            // Setting the parameters for the query
            ps.setString(1, car.getName());
            ps.setString(2, car.getModel_year());
            ps.setFloat(3, car.getPrice());
            ps.setString(4, car.getDescription());
            ps.setInt(5, car.getBrand_id());
            ps.setInt(6, car.getCategory_id());
            ps.setInt(7, car.getSeller_id());
            int rowAffected = ps.executeUpdate();
            return rowAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int getIDByCarDetail(Car car) {
        int carID = -1; // Khai báo ở đây để đảm bảo có giá trị mặc định nếu không tìm thấy carID
        String query
                = "SELECT car_id FROM car WHERE name = ?"
                + " AND cylinders = ? AND horsepower = ?"
                + " AND weight = ? AND acceleration = ? AND"
                + " model_year = ? AND origin = ? AND price = ? AND "
                + "description = ? AND brand_id = ? AND category_id = ? and seller_id = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, car.getName());
            ps.setInt(2, car.getCylinders());
            ps.setFloat(3, car.getHorsepower());
            ps.setFloat(4, car.getWeight());
            ps.setFloat(5, car.getAcceleration());
            ps.setString(6, car.getModel_year());
            ps.setString(7, car.getOrigin());
            ps.setFloat(8, car.getPrice());
            ps.setString(9, car.getDescription());
            ps.setInt(10, car.getBrand_id());
            ps.setInt(11, car.getCategory_id());
            ps.setInt(12, car.getSeller_id());

            // Thực thi câu lệnh và lấy kết quả
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                carID = rs.getInt("car_id"); // Gán giá trị cho carID nếu tìm thấy carID trong ResultSet
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return carID; // Trả về carID ở cuối phương thức
    }

    // seller car's management ===============================================================
    public void deleteCarByCarID(int car_id) {
        String query = "Delete from car where car_id = ?";
        try (PreparedStatement ps = con.prepareStatement(query)) {
            // Setting the parameters for the query
            ps.setInt(1, car_id);

            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public int getSellerIDByCarID(int id) {
        int carId = 0; // Khởi tạo giá trị mặc định
        String query = "SELECT seller_id FROM car WHERE car_id = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, id); // Thiết lập giá trị cho tham số seller_id
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    carId = rs.getInt("seller_id"); // Lấy giá trị car_id từ kết quả truy vấn
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return carId; // Trả về ca
    }

    public boolean checkExistedBrand(String brand) {
        String sql = "SELECT COUNT(*) FROM [dbo].[car_brand] WHERE LOWER([name]) = LOWER(?);";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, brand);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    int count = rs.getInt(1);
                    return count > 0;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean checkExistedCate(String cate) {
        String sql = "SELECT COUNT(*) FROM [dbo].[car_category] WHERE LOWER([name]) = LOWER(?);";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, cate);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    int count = rs.getInt(1);
                    return count > 0;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean updateCBrand(CarBrand carb) {
        String query = "UPDATE car_brand SET name = ? WHERE id = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {

            ps.setString(1, carb.getName());
            ps.setInt(2, carb.getId());
            int rowAffected = ps.executeUpdate();
            return rowAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean updateCCate(CarCategory carc) {
        String query = "UPDATE [dbo].[car_category] SET [name] = ? WHERE id=?";

        try (PreparedStatement ps = con.prepareStatement(query)) {

            ps.setString(1, carc.getName());
            ps.setInt(2, carc.getId());
            int rowAffected = ps.executeUpdate();
            return rowAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean addNewBrand(String brand) {
        try {
            String query = "INSERT INTO car_brand ( name) VALUES ( ?)";
            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, brand);
            int rowAffected = ps.executeUpdate();
            return rowAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean addNewCategory(String cate) {
        try {
            String query = "INSERT INTO car_category (name) VALUES ( ?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, cate);
            int rowAffected = ps.executeUpdate();
            return rowAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean updateSpecs(Car car) {
        String query
                = "UPDATE [dbo].[car] SET [cylinders] = ?, [horsepower] = ?, [weight] = ?, [acceleration] = ?, [origin] = ? WHERE car_id = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, car.getCylinders());
            ps.setFloat(2, car.getHorsepower());
            ps.setFloat(3, car.getWeight());
            ps.setFloat(4, car.getAcceleration());
            ps.setString(5, car.getOrigin());
            ps.setInt(
                    6,
                    car.getCar_id()); // Assuming car_id is an integer and you have a getter method getCarId()

            int rowAffected = ps.executeUpdate();
            return rowAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean updateSellerItems(Car carr) {
        String query
                = "UPDATE [dbo].[car] SET [name] = ? ,[model_year] = ? ,[price] = ? ,[description] = ? ,[brand_id] = ? ,[category_id] =? WHERE seller_id = ? AND car_id = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {

            ps.setString(1, carr.getName());
            ps.setString(2, carr.getModel_year());
            ps.setFloat(3, carr.getPrice());
            ps.setString(4, carr.getDescription());
            ps.setInt(5, carr.getBrand_id());
            ps.setInt(6, carr.getCategory_id());
            ps.setInt(7, carr.getSeller_id());
            ps.setInt(8, carr.getCar_id());
            int rowAffected = ps.executeUpdate();
            return rowAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // images =======================================================================
    public List<CarImage> viewImageForCar() {
        List<CarImage> cars_image = new ArrayList<>();

        String query = "SELECT [image_id], [car_id], [image_url] FROM [dbo].[car_images]";

        try (PreparedStatement ps = con.prepareStatement(query); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                int image_id = rs.getInt("image_id");
                int carId = rs.getInt("car_id");

                String imageUrl = rs.getString("image_url");

                List<String> imageUrls = new ArrayList<>();
                imageUrls.add(imageUrl);
                CarImage cari = new CarImage(image_id, carId, imageUrls);
                cars_image.add(cari);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return cars_image;
    }

    public List<CarImage> CarImageById(int id) {
        List<CarImage> cars_image = new ArrayList<>();

        String query
                = "SELECT [image_id], [car_id], [image_url] FROM [dbo].[car_images] where car_id = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int image_id = rs.getInt("image_id");
                int carId = rs.getInt("car_id");

                String imageUrl = rs.getString("image_url");

                List<String> imageUrls = new ArrayList<>();
                imageUrls.add(imageUrl);
                CarImage cari = new CarImage(image_id, carId, imageUrls);
                cars_image.add(cari);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return cars_image;
    }

    public void addToImage(CarImage carI) {
        try {
            // Chuẩn bị câu lệnh SQL để chèn dữ liệu vào cơ sở dữ liệu
            String query = "INSERT INTO car_images (car_id,image_url,seller_id) VALUES (?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);

            // Thêm mỗi đường dẫn ảnh vào cơ sở dữ liệu, mỗi ảnh một dòng
            for (String imagePath : carI.getImage_url()) {
                ps.setInt(1, carI.car_id);
                ps.setString(2, imagePath);
                ps.setInt(3, carI.seller_id);
                ps.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void addNewImages(int carId, List<String> newImages) {
        String query = "INSERT INTO car_images (car_id, image_url) VALUES (?, ?)";
        try (PreparedStatement ps = con.prepareStatement(query)) {
            for (String imageUrl : newImages) {
                ps.setInt(1, carId);
                ps.setString(2, imageUrl);
                ps.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteImages(int carId, List<String> imagesToDelete) {
        String query = "DELETE FROM car_images WHERE car_id = ? AND image_url = ?";
        try (PreparedStatement ps = con.prepareStatement(query)) {
            for (String imageUrl : imagesToDelete) {
                ps.setInt(1, carId);
                ps.setString(2, imageUrl);
                ps.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateExistingImages(int carId, List<String> updatedImages) {
        // Đầu tiên, xóa toàn bộ ảnh hiện tại của xe
        deleteAllImages(carId);

        // Sau đó, thêm lại các ảnh đã được cập nhật
        addNewImages(carId, updatedImages);
    }

    // Phương thức hỗ trợ để xóa toàn bộ ảnh của một xe
    private void deleteAllImages(int carId) {
        String query = "DELETE FROM car_images WHERE car_id = ?";
        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, carId);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateImages(CarImage carI) {

        // Số lượng ảnh mới và số lượng ảnh hiện tại
        deleteAllImages(carI.getCar_id());

        addToImage(carI);

        // Cập nhật lại các URL ảnh
    }

    public List<TradeMark> viewAllTradeMark() {
        List<TradeMark> tradeMarks = new ArrayList<>();
        String query = "SELECT * FROM [dbo].[trade_mark]";

        try (PreparedStatement ps = con.prepareStatement(query); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                TradeMark trademark = new TradeMark();
                List<String> logo = new ArrayList<>();
                logo.add(rs.getString("logo_url"));

                trademark.setTrademard_id(rs.getInt("trademark_id"));
                trademark.setSeller_id(rs.getInt("seller_id"));
                trademark.setName(rs.getString("name"));
                trademark.setUrl_logo(logo);
                trademark.setDescribe(rs.getString("describe"));
                trademark.setPrivacy(rs.getString("privacy"));
                trademark.setTerms(rs.getString("terms"));

                tradeMarks.add(trademark);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return tradeMarks;
    }

    public List<Car> getCarForOneTradeMark(int idSell) {
        List<Car> cars = new ArrayList<>();
        String query
                = "select * from car where seller_id = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, idSell);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Car car = new Car();
                car.setCar_id(rs.getInt("car_id"));
                car.setName(rs.getString("name"));
                car.setCylinders(rs.getInt("cylinders"));
                car.setHorsepower(rs.getFloat("horsepower"));
                car.setWeight(rs.getFloat("weight"));
                car.setAcceleration(rs.getFloat("acceleration"));
                car.setModel_year(rs.getString("model_year"));
                car.setOrigin(rs.getString("origin"));
                car.setPrice(rs.getInt("price"));
                car.setDescription(rs.getString("description"));
                car.setBrand_id(rs.getInt("brand_id"));
                car.setCategory_id(rs.getInt("category_id"));
                car.setSeller_id(idSell);
                cars.add(car);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cars;
    }

    public TradeMark getTradeMarkByIDTrade(int idTr) {
        TradeMark trademark = null;
        String query
                = "SELECT * FROM [dbo].[trade_mark] WHERE [trademark_id] = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, idTr); // Thiết lập giá trị cho tham số car_id
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    trademark = new TradeMark();
                    List<String> logo = new ArrayList<>();
                    logo.add(rs.getString("logo_url"));
                    trademark.setTrademard_id(idTr);
                    trademark.setSeller_id(rs.getInt("seller_id"));
                    trademark.setName(rs.getString("name"));
                    trademark.setUrl_logo(logo);
                    trademark.setDescribe(rs.getString("describe"));
                    trademark.setPrivacy(rs.getString("privacy"));
                    trademark.setTerms(rs.getString("terms"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return trademark;
    }

    public TradeMark getTradeMark(int idSeller) {
        TradeMark trademark = null;
        String query
                = "SELECT * FROM [dbo].[trade_mark] WHERE [seller_id] = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, idSeller); // Thiết lập giá trị cho tham số car_id
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    trademark = new TradeMark();
                    List<String> logo = new ArrayList<>();
                    logo.add(rs.getString("logo_url"));
                    trademark.setTrademard_id(rs.getInt("trademark_id"));
                    trademark.setSeller_id(idSeller);
                    trademark.setName(rs.getString("name"));
                    trademark.setUrl_logo(logo);
                    trademark.setDescribe(rs.getString("describe"));
                    trademark.setPrivacy(rs.getString("privacy"));
                    trademark.setTerms(rs.getString("terms"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return trademark;
    }

    public boolean updateTradeMark(TradeMark mark) {
        String query
                = "UPDATE [dbo].[trade_mark] SET [name] = ?, [describe] = ?, [logo_url] = ?, [privacy] = ?, [terms] = ? WHERE trademark_id = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {

            String logoUrl = mark.getUrl_logo().isEmpty() ? "" : mark.getUrl_logo().get(0);

            ps.setString(1, mark.getName());
            ps.setString(2, mark.getDescribe());
            ps.setString(3, logoUrl);
            ps.setString(4, mark.getPrivacy());
            ps.setString(5, mark.getTerms());
            ps.setInt(6, mark.getTrademard_id());

            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean addNewTradeMark(TradeMark mark) {
        try {
            String query
                    = "INSERT INTO trade_mark (name,logo_url,describe,privacy,terms,seller_id) VALUES ( ?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, mark.getName());
            String logoUrls = String.join(",", mark.getUrl_logo());
            ps.setString(2, logoUrls);
            ps.setString(3, mark.getDescribe());
            ps.setString(4, mark.getPrivacy());
            ps.setString(5, mark.getTerms());
            ps.setInt(6, mark.getSeller_id());
            int rowAffected = ps.executeUpdate();
            return rowAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<String> getCarImages(int carId) {
        List<String> imageUrls = new ArrayList<>();
        String query = "SELECT image_url FROM car_images WHERE seller_id = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, carId);

            // Thực thi câu lệnh và lấy kết quả
            ResultSet rs = ps.executeQuery();

            // Duyệt qua tất cả các kết quả từ ResultSet
            while (rs.next()) {
                String imageUrl = rs.getString("image_url");
                imageUrls.add(imageUrl);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return imageUrls; // Trả về danh sách URL ảnh
    }

    public List<CarImage> getAllImgBySellerID(int user_id) {
        List<CarImage> listImg = new ArrayList<>();
        String query
                = "SELECT image_id,car_id, image_url,seller_id  FROM car_images WHERE seller_id = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, user_id);

            // Thực thi câu lệnh và lấy kết quả
            ResultSet rs = ps.executeQuery();

            // Duyệt qua tất cả các kết quả từ ResultSet
            while (rs.next()) {
                String logo_url = rs.getString("image_url");
                List<String> imageUrls = new ArrayList<>();
                imageUrls.add(logo_url);
                int image_id = rs.getInt("image_id");
                int car_id = rs.getInt("car_id");

                int seller_id = rs.getInt("seller_id");
                CarImage img = new CarImage(image_id, car_id, imageUrls, seller_id);
                listImg.add(img);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listImg;
    }

    public boolean addNewImgToCar(CarImage carImage) {
        try {
            String query = "INSERT INTO car_images (car_id,image_url,seller_id) VALUES (?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);

            // Loop through each image_url and insert into database separately
            for (String imageUrl : carImage.getImage_url()) {
                ps.setInt(1, carImage.getCar_id());
                ps.setString(2, imageUrl);
                ps.setInt(3, carImage.getSeller_id());

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

    public boolean deleteImagesByCarID(int id) {
        String query = "DELETE FROM [dbo].[car_images] WHERE car_id = ?";
        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, id);
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public Compare findCompareByUserId(int userId) {
        Compare compare = null;
        String sql = "SELECT c.compare_id, ci.item_id, ci.car_id FROM compare c JOIN compare_item ci ON c.compare_id = ci.compare_id WHERE c.user_id = ?";

        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();
            List<CompareItem> compareItems = new ArrayList<>();

            while (rs.next()) {
                compareItems.add(new CompareItem(rs.getInt("item_id"), rs.getInt("compare_id"), rs.getInt("car_id")));
            }

            if (!compareItems.isEmpty()) {
                compare = new Compare(compareItems.get(0).getCompareId());
                compare.setItems(compareItems);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return compare;
    }

    public boolean deleteCompareItems(int compareId, int car_id) {
        String query = "Delete from compare_item where compare_id = ? and car_id = ?";
        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, compareId);
            ps.setInt(2, car_id);
            int rowAffected = ps.executeUpdate();
            if (rowAffected > 0) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;

    }

    public boolean checkCompareItems(int compareId, int carId) {
        String sql = " SELECT COUNT(*) FROM [dbo].[compare_item] WHERE compare_id =1 and car_id = 207 ;";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, compareId);
            ps.setInt(2, carId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    int count = rs.getInt(1);
                    return count > 0;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean AddtoCompare(int user_id, int car_id) {
        String selectCompareQuery = "SELECT compare_id FROM compare WHERE user_id = ?";
        String insertCompareQuery = "INSERT INTO compare (user_id) VALUES (?)";
        String insertCompareItemQuery = "INSERT INTO compare_item (compare_id, car_id) VALUES (?, ?)";

        try (PreparedStatement psSelectCompare = con.prepareStatement(selectCompareQuery); PreparedStatement psInsertCompare = con.prepareStatement(insertCompareQuery); PreparedStatement psInsertCompareItem = con.prepareStatement(insertCompareItemQuery)) {

            // Check if the user already has a compare list
            psSelectCompare.setInt(1, user_id);
            ResultSet rsCompare = psSelectCompare.executeQuery();

            int compare_id;
            if (rsCompare.next()) {
                // If the user already has a compare list, get its ID
                compare_id = rsCompare.getInt("compare_id");
            } else {
                // If the user doesn't have a compare list, create one and get its ID
                psInsertCompare.setInt(1, user_id);
                int affectedRows = psInsertCompare.executeUpdate();
                if (affectedRows == 0) {
                    return false;
                }

                try (ResultSet rsGeneratedKeys = psInsertCompare.getGeneratedKeys()) {
                    if (rsGeneratedKeys.next()) {
                        compare_id = rsGeneratedKeys.getInt(1);
                    } else {
                        return false;
                    }
                }
            }

            // Check if the compare list already contains 4 items
            String countCompareItemsQuery = "SELECT COUNT(*) AS itemCount FROM compare_item WHERE compare_id = ?";
            try (PreparedStatement psCountCompareItems = con.prepareStatement(countCompareItemsQuery)) {
                psCountCompareItems.setInt(1, compare_id);
                ResultSet rsItemCount = psCountCompareItems.executeQuery();
                if (rsItemCount.next() && rsItemCount.getInt("itemCount") > 4) {
                    return false;
                }
            }

            // Add the car to the compare list
            psInsertCompareItem.setInt(1, compare_id);
            psInsertCompareItem.setInt(2, car_id);
            return psInsertCompareItem.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public List<Car> compareCars(List<Integer> carIds) {
        List<Car> carsToCompare = new ArrayList<>();

        if (carIds == null || carIds.isEmpty()) {
            return carsToCompare;
        }

        String selectCarsQuery = "SELECT * FROM car WHERE car_id IN ("
                + carIds.stream().map(String::valueOf).collect(Collectors.joining(",")) + ")";

        try (Connection conn = db.connection; PreparedStatement ps = conn.prepareStatement(selectCarsQuery)) {
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Car car = new Car(
                        rs.getInt("car_id"),
                        rs.getString("name"),
                        rs.getInt("cylinders"),
                        rs.getFloat("horsepower"),
                        rs.getFloat("weight"),
                        rs.getFloat("acceleration"),
                        rs.getString("model_year"),
                        rs.getString("origin"),
                        rs.getFloat("price"),
                        rs.getString("description"),
                        rs.getInt("brand_id"),
                        rs.getInt("category_id")
                );
                carsToCompare.add(car);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return carsToCompare;
    }

}
