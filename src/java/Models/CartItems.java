package Models;

public class CartItems {

    private int item_id;
    private Car car; 

    public CartItems() {
    }

    public CartItems(int item_id, Car car) {
        this.item_id = item_id;
        this.car = car;
    }

    public int getItem_id() {
        return item_id;
    }

    public void setItem_id(int item_id) {
        this.item_id = item_id;
    }

    public Car getCar() {
        return car;
    }

    public void setCar(Car car) {
        this.car = car;
    }



}