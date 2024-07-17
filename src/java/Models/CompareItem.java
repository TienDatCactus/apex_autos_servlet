/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author Tiến_Đạt
 */
public class CompareItem {

    private int compareItems_id;
    private int compareId;
    private int carId;
    private Car car;

    public CompareItem() {
    }

    public CompareItem(int compareItems_id, int compareId, int carId) {
        this.compareItems_id = compareItems_id;
        this.compareId = compareId;
        this.carId = carId;
    }

    public int getCompareId() {
        return compareId;
    }

    public void setCompareId(int compareId) {
        this.compareId = compareId;
    }

    public int getCarId() {
        return carId;
    }

    public void setCarId(int carId) {
        this.carId = carId;
    }

    public CompareItem(int compareItems_id, Car car) {
        this.compareItems_id = compareItems_id;
        this.car = car;
    }

    public int getCompareItems_id() {
        return compareItems_id;
    }

    public void setCompareItems_id(int compareItems_id) {
        this.compareItems_id = compareItems_id;
    }

    public Car getCar() {
        return car;
    }

    public void setCar(Car car) {
        this.car = car;
    }

    @Override
    public String toString() {
        return "CompareItems{" + "compareItems_id=" + compareItems_id + ", car=" + car + '}';
    }

}
