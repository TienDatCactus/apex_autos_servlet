/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author Admin
 */
public class Address {
   
    private String address;
    private int pin_code;
    private int user_id;

    // Constructor
    public Address( String address, int pin_code, int user_id) {
       
        this.address = address;
        this.pin_code = pin_code;
        this.user_id = user_id;
    }

    // Getters and setters (if needed)
   

    public String getAddress() {
        return address;
    }

    public int getPin_code() {
        return pin_code;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setPin_code(int pin_code) {
        this.pin_code = pin_code;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }
     
    @Override
    public String toString() {
        return "Address{" + "address=" + address + ", pin_code=" + pin_code + ", user_id=" + user_id + '}';
    }

    
    
    
}

