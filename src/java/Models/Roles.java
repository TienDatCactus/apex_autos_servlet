/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author Tiến_Đạt
 */
public class Roles {

    int role_id;
    String role_name;
    String role_desc;

    public Roles(int role_id, String role_name, String role_desc) {
        this.role_id = role_id;
        this.role_name = role_name;
        this.role_desc = role_desc;
    }

  public Roles(String role_name, String role_desc) {
    this.role_name = role_name;
    this.role_desc = role_desc;
  }
    
    public Roles() {
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public String getRole_name() {
        return role_name;
    }

    public void setRole_name(String role_name) {
        this.role_name = role_name;
    }

    public String getRole_desc() {
        return role_desc;
    }

    public void setRole_desc(String role_desc) {
        this.role_desc = role_desc;
    }

    @Override
    public String toString() {
        return "Roles{" + "role_id=" + role_id + ", role_name=" + role_name + ", role_desc=" + role_desc + '}';
    }
    
    
   
}
