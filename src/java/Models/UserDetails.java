/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author Tiến_Đạt
 */
public class UserDetails {

    String fname;
    String lname;

    String dob;
    String phone;

    public UserDetails(String fname, String lname, String dob, String phone) {
        this.fname = fname;
        this.lname = lname;
        this.dob = dob;
        this.phone = phone;
    }

    public UserDetails() {
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "UserDetails{" + "fname=" + fname + ", lname=" + lname + ", dob=" + dob + ", phone=" + phone + '}';
    }
    
}
