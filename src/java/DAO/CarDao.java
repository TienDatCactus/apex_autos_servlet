/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.sql.Date;
import Models.Car;
import Models.CarBrand;
import Models.CarCategory;
import Models.CarImage;
import Models.CartItems;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Tiến_Đạt
 */
public class CarDao {

  PreparedStatement ps = null;
  ResultSet rs = null;
  DBConnect db = new DBConnect();
  Connection con = db.connection;

  public List<Car> viewProducts() {
    List<Car> cars = new ArrayList<>();
    String query =
        "SELECT [car_id], [name], [cylinders], [horsepower], "
            + "[weight], [acceleration], [model_year], [origin],[price], [description], "
            + "[brand_id], [category_id], [seller_id] FROM [dbo].[car]";

    try (PreparedStatement ps = con.prepareStatement(query);
        ResultSet rs = ps.executeQuery()) {
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
    String query =
        "SELECT [car_id], [name], [cylinders], [horsepower], "
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

  public void addToCart(int user_id, int car_id) {
    String selectCartQuery = "SELECT cart_id FROM cart WHERE user_id = ?";
    String insertCartQuery = "INSERT INTO cart (user_id) VALUES (?)";
    String insertCartItemQuery = "INSERT INTO cart_items (cart_id, car_id) VALUES (?, ?)";

    try (PreparedStatement psSelectCart = con.prepareStatement(selectCartQuery);
        PreparedStatement psInsertCart =
            con.prepareStatement(insertCartQuery, Statement.RETURN_GENERATED_KEYS);
        PreparedStatement psInsertCartItem = con.prepareStatement(insertCartItemQuery)) {

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
    String selectCartItemsQuery =
        "SELECT ci.item_id, ci.cart_id, c.* FROM cart_items ci INNER JOIN car c ON ci.car_id = c.car_id WHERE ci.cart_id = ?";

    try (PreparedStatement psSelectCart = con.prepareStatement(selectCartQuery);
        PreparedStatement psSelectCartItems = con.prepareStatement(selectCartItemsQuery)) {

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
          Car car =
              new Car(
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
    String query = "DELETE FROM [dbo].[cart_items] WHERE item_id = ?";
    try (PreparedStatement ps = con.prepareStatement(query)) {
      ps.setInt(1, item_id);
      int rowsAffected = ps.executeUpdate();
      return rowsAffected > 0;
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return false;
  }

  public List<CarCategory> viewCarCategory() {
    List<CarCategory> cars_cate = new ArrayList<>();
    String query = "SELECT [id]\n" + "      ,[name]\n" + "  FROM [dbo].[car_category]";

    try (PreparedStatement ps = con.prepareStatement(query);
        ResultSet rs = ps.executeQuery()) {
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

    try (PreparedStatement ps = con.prepareStatement(query);
        ResultSet rs = ps.executeQuery()) {
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
          Car car =
              new Car(
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

  public void addProductToSell(Car car) {
    String query =
        "INSERT INTO car"
            + "  (name, cylinders, horsepower, weight, acceleration, model_year,"
            + " origin, price, description, brand_id, category_id,seller_id) VALUES "
            + " (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";

    try (PreparedStatement ps = con.prepareStatement(query)) {
      // Setting the parameters for the query
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
      ps.executeUpdate();

    } catch (SQLException e) {
      e.printStackTrace();
    }
  }

  public List<CarImage> viewImageForCar() {
    List<CarImage> cars_image = new ArrayList<>();

    String query = "SELECT [image_id], [car_id], [image_url] FROM [dbo].[car_images]";

    try (PreparedStatement ps = con.prepareStatement(query);
        ResultSet rs = ps.executeQuery()) {
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

  public int getIDByCarDetail(Car car) {
    int carID = -1; // Khai báo ở đây để đảm bảo có giá trị mặc định nếu không tìm thấy carID
    String query =
        "SELECT car_id FROM car WHERE name = ?"
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

  public void addNewCategory(CarCategory cate) {
    try {
      // Chuẩn bị câu lệnh SQL để chèn dữ liệu vào cơ sở dữ liệu
      String query = "INSERT INTO car_category ( name) VALUES ( ?)";
      PreparedStatement ps = con.prepareStatement(query);

      // Thêm mỗi đường dẫn ảnh vào cơ sở dữ liệu, mỗi ảnh một dòng
      ps.setString(1, cate.getName());
      ps.executeUpdate();

    } catch (SQLException e) {
      e.printStackTrace();
    }
  }

  public void updateCategory(CarCategory catee) {
    String query = "UPDATE car_category SET name = ? WHERE id = ?";

    try (PreparedStatement ps = con.prepareStatement(query)) {

      ps.setString(1, catee.getName());
      ps.setInt(2, catee.getId());
      ps.executeUpdate();

    } catch (SQLException e) {
      e.printStackTrace();
    }
  }

  public void updateCBrand(CarBrand carb) {
    String query = "UPDATE car_brand SET name = ? WHERE id = ?";

    try (PreparedStatement ps = con.prepareStatement(query)) {

      ps.setString(1, carb.getName());
      ps.setInt(2, carb.getId());
      ps.executeUpdate();

    } catch (SQLException e) {
      e.printStackTrace();
    }
  }

  public void addNewBrand(CarBrand carb) {
    try {
      // Chuẩn bị câu lệnh SQL để chèn dữ liệu vào cơ sở dữ liệu
      String query = "INSERT INTO car_brand ( name) VALUES ( ?)";
      PreparedStatement ps = con.prepareStatement(query);

      // Thêm mỗi đường dẫn ảnh vào cơ sở dữ liệu, mỗi ảnh một dòng
      ps.setString(1, carb.getName());
      ps.executeUpdate();

    } catch (SQLException e) {
      e.printStackTrace();
    }
  }

  public void updateCar(Car carr) {
    String query =
        "UPDATE [dbo].[car]\n"
            + "   SET [name] = ?\n"
            + "      ,[cylinders] = ?\n"
            + "      ,[horsepower] = ?\n"
            + "      ,[weight] = ?\n"
            + "      ,[acceleration] = ?\n"
            + "      ,[model_year] = ?\n"
            + "      ,[origin] = ?\n"
            + "      ,[price] = ?\n"
            + "      ,[description] = ?\n"
            + "      ,[brand_id] = ?\n"
            + "      ,[category_id] = ?\n"
            + "      ,[seller_id] = ?\n"
            + " WHERE car_id = ?";

    try (PreparedStatement ps = con.prepareStatement(query)) {

      ps.setString(1, carr.getName());
      ps.setInt(2, carr.getCylinders());
      ps.setFloat(3, carr.getHorsepower());
      ps.setFloat(4, carr.getWeight());
      ps.setFloat(5, carr.getAcceleration());
      ps.setString(6, carr.getModel_year());
      ps.setString(7, carr.getOrigin());
      ps.setFloat(8, carr.getPrice());
      ps.setString(9, carr.getDescription());
      ps.setInt(10, carr.getBrand_id());
      ps.setInt(11, carr.getCategory_id());
      ps.setInt(12, carr.getSeller_id());
      ps.setInt(13, carr.getCar_id());
      ps.executeUpdate();

    } catch (SQLException e) {
      e.printStackTrace();
    }
  }

  public List<String> getCarImages(int carId) {
    List<String> imageUrls = new ArrayList<>();
    String query = "SELECT image_url FROM car_images WHERE car_id = ?";

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

  public void addToImage(CarImage carI) {
    try {
      // Chuẩn bị câu lệnh SQL để chèn dữ liệu vào cơ sở dữ liệu
      String query = "INSERT INTO car_images (car_id, image_url) VALUES (?, ?)";
      PreparedStatement ps = con.prepareStatement(query);

      // Thêm mỗi đường dẫn ảnh vào cơ sở dữ liệu, mỗi ảnh một dòng
      for (String imagePath : carI.getImage_url()) {
        ps.setInt(1, carI.getCar_id());
        ps.setString(2, imagePath);
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

  public static void main(String[] args) {
    CarDao carDAO = new CarDao();
    List<String> aaa = new ArrayList<>();

    System.out.println(carDAO.viewProducts());
  }
}
