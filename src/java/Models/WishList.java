/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author Admin
 */
public class WishList {
    private int whis_list_id;
    private int user_id;
    private int car_id;
    private Car car;

    public WishList() {
    }

    public WishList(int whis_list_id, int user_id, int car_id, Car car) {
        this.whis_list_id = whis_list_id;
        this.user_id = user_id;
        this.car_id = car_id;
        this.car = car;
    }

    public Car getCar() {
        return car;
    }

    public void setCar(Car car) {
        this.car = car;
    }

    

    public int getWhis_list_id() {
        return whis_list_id;
    }

    public void setWhis_list_id(int whis_list_id) {
        this.whis_list_id = whis_list_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getCar_id() {
        return car_id;
    }

    public void setCar_id(int car_id) {
        this.car_id = car_id;
    }

    @Override
    public String toString() {
        return "WishList{" + "whis_list_id=" + whis_list_id + ", user_id=" + user_id + ", car_id=" + car_id + ", car=" + car + '}';
    }

    
    
    
}
