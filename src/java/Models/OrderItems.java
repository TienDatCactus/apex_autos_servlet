/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author Tiến_Đạt
 */
public class OrderItems {

    int item_id;
    int order_id;
    Car car;
    float total;
    String status;

    public OrderItems(int item_id, int order_id, Car car) {
        this.item_id = item_id;
        this.order_id = order_id;
        this.car = car;
    }

    public OrderItems(int order_id, Car car) {
        this.order_id = order_id;
        this.car = car;
    }

    public OrderItems(int item_id, int order_id, Car car, float total, String status) {
        this.item_id = item_id;
        this.order_id = order_id;
        this.car = car;
        this.total = total;
        this.status = status;
    }

    public OrderItems() {
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getItem_id() {
        return item_id;
    }

    public void setItem_id(int item_id) {
        this.item_id = item_id;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public Car getCar() {
        return car;
    }

    public void setCar(Car car) {
        this.car = car;
    }

    @Override
    public String toString() {
        return "OrderItems{" + "item_id=" + item_id + ", order_id=" + order_id + ", car=" + car + ", total=" + total + ", status=" + status + '}';
    }

   
}
