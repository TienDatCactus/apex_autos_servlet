/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin123
 */
public class Compare {

    private int compare_id;
    private int user_id;
    private List<CompareItem> items;

    public Compare() {
    }

    public Compare(int compareId) {
        this.compare_id = compareId;
        this.items = new ArrayList<>();
    }

    public Compare(int compare_id, int user_id) {
        this.compare_id = compare_id;
        this.user_id = user_id;
    }


    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getCompare_id() {
        return compare_id;
    }

    public List<CompareItem> getItems() {
        return items;
    }

    public void setCompare_id(int compare_id) {
        this.compare_id = compare_id;
    }

    public void setItems(List<CompareItem> items) {
        this.items = items;
    }

    @Override
    public String toString() {
        return "Compare{" + "compare_id=" + compare_id + ", user_id=" + user_id + ", items=" + items + '}';
    }

}
