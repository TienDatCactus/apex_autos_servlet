/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author Tiến_Đạt
 */
public class UserAccount {

    int user_id;
    String email;
    String password;

    String given_name;

    String family_name;

    String phone;
    String dob;
    int permission_id;

    public UserAccount() {
    }

    public UserAccount(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public UserAccount(String email, String password, int permission_id) {
        this.email = email;
        this.password = password;
        this.permission_id = permission_id;
    }

    public UserAccount(int user_id, String given_name, String family_name, String dob, String phone) {
        this.user_id = user_id;
        this.given_name = given_name;
        this.family_name = family_name;
        this.dob = dob;
        this.phone = phone;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getGiven_name() {
        return given_name;
    }

    public void setGiven_name(String given_name) {
        this.given_name = given_name;
    }

    public String getFamily_name() {
        return family_name;
    }

    public void setFamily_name(String family_name) {
        this.family_name = family_name;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getPermission_id() {
        return permission_id;
    }

    public void setPermission_id(int permission_id) {
        this.permission_id = permission_id;
    }

    @Override
    public String toString() {
        return "UserAccount{" + "user_id=" + user_id + ", email=" + email + ", password=" + password + ", given_name=" + given_name + ", family_name=" + family_name + ", phone=" + phone + ", dob=" + dob + '}';
    }

}
