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
public class Status {
    public int status_id;
    public String status_content;
    public List<String> status_images;
     public String status_title;
    public int user_id;

    public Status() {
    }

    public Status(int status_id, String status_content, List<String> status_images, String status_title, int user_id) {
        this.status_id = status_id;
        this.status_content = status_content;
        this.status_images = status_images;
        this.status_title = status_title;
        this.user_id = user_id;
    }

    public String getStatus_title() {
        return status_title;
    }

    public void setStatus_title(String status_title) {
        this.status_title = status_title;
    }

   

    public int getStatus_id() {
        return status_id;
    }

    public void setStatus_id(int status_id) {
        this.status_id = status_id;
    }

    public String getStatus_content() {
        return status_content;
    }

    public void setStatus_content(String status_content) {
        this.status_content = status_content;
    }

    public List<String> getStatus_images() {
        return status_images;
    }

    public void setStatus_images(List<String> status_images) {
        this.status_images = status_images;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    @Override
    public String toString() {
        return "Status{" + "status_id=" + status_id + ", status_content=" + status_content + ", status_images=" + status_images + ", status_title=" + status_title + ", user_id=" + user_id + '}';
    }

   
    
    
}
