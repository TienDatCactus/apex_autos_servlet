/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author Admin
 */
public class Request {
    public int request_id;
    public String description;
    public int user_id;

    public Request() {
    }

    public Request(int request_id, String description, int user_id) {
        this.request_id = request_id;
        this.description = description;
        this.user_id = user_id;
    }

    public int getRequest_id() {
        return request_id;
    }

    public void setRequest_id(int request_id) {
        this.request_id = request_id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    @Override
    public String toString() {
        return "Request{" + "request_id=" + request_id + ", description=" + description + ", user_id=" + user_id + '}';
    }
    
    
}
