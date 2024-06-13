/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

public class Car {
    private int car_id;
    private String name;
    private int cylinders;
    private float horsepower;
    private float weight;
    private float acceleration;
    private String model_year;
    private String origin;
    private float price;
    private String description;
    private int brand_id;
    private int category_id;
    private int seller_id;
    
    public Car() {
    }

  public Car(int car_id, String name, String model_year, float price, String description, int brand_id, int category_id, int seller_id) {
    this.car_id = car_id;
    this.name = name;
    this.model_year = model_year;
    this.price = price;
    this.description = description;
    this.brand_id = brand_id;
    this.category_id = category_id;
    this.seller_id = seller_id;
  }

    public Car(int car_id, String name, int cylinders, float horsepower, float weight, float acceleration, String model_year, String origin, float price, String description, int brand_id, int category_id, int seller_id) {
        this.car_id = car_id;
        this.name = name;
        this.cylinders = cylinders;
        this.horsepower = horsepower;
        this.weight = weight;
        this.acceleration = acceleration;
        this.model_year = model_year;
        this.origin = origin;
        this.price = price;
        this.description = description;
        this.brand_id = brand_id;
        this.category_id = category_id;
        this.seller_id = seller_id;
    }
    
    
    
    
    public Car(int car_id, String name, int cylinders, float horsepower, float weight, float acceleration, String model_year, String origin, float price, String description, int brand_id, int category_id) {
        this.car_id = car_id;
        this.name = name;
        this.cylinders = cylinders;
        this.horsepower = horsepower;
        this.weight = weight;
        this.acceleration = acceleration;
        this.model_year = model_year;
        this.origin = origin;
        this.price = price;
        this.description = description;
        this.brand_id = brand_id;
        this.category_id = category_id;
    }

    public int getCar_id() {
        return car_id;
    }

    public void setCar_id(int car_id) {
        this.car_id = car_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCylinders() {
        return cylinders;
    }

    public void setCylinders(int cylinders) {
        this.cylinders = cylinders;
    }

    public float getHorsepower() {
        return horsepower;
    }

    public void setHorsepower(float horsepower) {
        this.horsepower = horsepower;
    }

    public float getWeight() {
        return weight;
    }

    public void setWeight(float weight) {
        this.weight = weight;
    }

    public float getAcceleration() {
        return acceleration;
    }

    public void setAcceleration(float acceleration) {
        this.acceleration = acceleration;
    }

    public String getModel_year() {
        return model_year;
    }

    public void setModel_year(String model_year) {
        this.model_year = model_year;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(int brand_id) {
        this.brand_id = brand_id;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public int getSeller_id() {
        return seller_id;
    }

    public void setSeller_id(int seller_id) {
        this.seller_id = seller_id;
    }

    @Override
    public String toString() {
        return "Car{" + "car_id=" + car_id + ", name=" + name + ", cylinders=" + cylinders + ", horsepower=" + horsepower + ", weight=" + weight + ", acceleration=" + acceleration + ", model_year=" + model_year + ", origin=" + origin + ", price=" + price + ", description=" + description + ", brand_id=" + brand_id + ", category_id=" + category_id + ", seller_id=" + seller_id + '}';
    }
    
    

    

   
    
    
}
