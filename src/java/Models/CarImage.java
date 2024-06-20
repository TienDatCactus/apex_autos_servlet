/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.util.List;

/**
 *
 * @author Admin
 */
public class CarImage {
    public int image_id;
    public int car_id;
    private List<String> image_url;
    public int seller_id;
    public CarImage() {
    }

    public CarImage(int car_id) {
        this.car_id = car_id;
    }

   
    
    public CarImage(int image_id, int car_id, List<String> image_url) {
        this.image_id = image_id;
        this.car_id = car_id;
        this.image_url = image_url;
    }

    public CarImage(int image_id, int car_id, List<String> image_url, int seller_id) {
        this.image_id = image_id;
        this.car_id = car_id;
        this.image_url = image_url;
        this.seller_id = seller_id;
    }
    

    public int getImage_id() {
        return image_id;
    }

    public void setImage_id(int image_id) {
        this.image_id = image_id;
    }

    public int getCar_id() {
        return car_id;
    }

    public void setCar_id(int car_id) {
        this.car_id = car_id;
    }

    public List<String> getImage_url() {
        return image_url;
    }

    public void setImage_url(List<String> image_url) {
        this.image_url = image_url;
    }

    public int getSeller_id() {
        return seller_id;
    }

    public void setSeller_id(int seller_id) {
        this.seller_id = seller_id;
    }

    @Override
    public String toString() {
        return "CarImage{" + "image_id=" + image_id + ", car_id=" + car_id + ", image_url=" + image_url + ", seller_id=" + seller_id + '}';
    }
    
   

   
    
    
}
