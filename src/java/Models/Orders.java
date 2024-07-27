/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import  java.sql.Timestamp;
import java.util.List;

/**
 *
 * @author Tiến_Đạt
 */
public class Orders {

    int order_id;
    int user_id;
    Timestamp order_date;
    String status;
    float total;
    List<OrderItems> items;

    public Orders(int order_id, int user_id, Timestamp order_date, String status, float total, List<OrderItems> items) {
        this.order_id = order_id;
        this.user_id = user_id;
        this.order_date = order_date;
        this.status = status;
        this.total = total;
        this.items = items;
    }

    public Orders(int user_id, Timestamp order_date, String status, float total, List<OrderItems> items) {
        this.user_id = user_id;
        this.order_date = order_date;
        this.status = status;
        this.total = total;
        this.items = items;
    }

    public Orders(int user_id, Timestamp order_date, String status, float total) {
        this.user_id = user_id;
        this.order_date = order_date;
        this.status = status;
        this.total = total;
    }

    public Orders() {
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public Timestamp getOrder_date() {
        return order_date;
    }

    public void setOrder_date(Timestamp order_date) {
        this.order_date = order_date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    public List<OrderItems> getItems() {
        return items;
    }

    public void setItems(List<OrderItems> items) {
        this.items = items;
    }

    @Override
    public String toString() {
        return "Orders{" + "order_id=" + order_id + ", user_id=" + user_id + ", order_date=" + order_date + ", status=" + status + ", total=" + total + ", items=" + items + '}';
    }

}
