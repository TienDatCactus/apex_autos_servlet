/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author Admin
 */
public class CommentCar {
    public int comment_id;
    public String comment_content;
    public int car_id;
    public int user_id;

    public CommentCar() {
    }

    public CommentCar(int comment_id, String comment_content, int car_id, int user_id) {
        this.comment_id = comment_id;
        this.comment_content = comment_content;
        this.car_id = car_id;
        this.user_id = user_id;
    }

    public int getComment_id() {
        return comment_id;
    }

    public void setComment_id(int comment_id) {
        this.comment_id = comment_id;
    }

    public String getComment_content() {
        return comment_content;
    }

    public void setComment_content(String comment_content) {
        this.comment_content = comment_content;
    }

    public int getCar_id() {
        return car_id;
    }

    public void setCar_id(int car_id) {
        this.car_id = car_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    @Override
    public String toString() {
        return "CommentCar{" + "comment_id=" + comment_id + ", comment_content=" + comment_content + ", car_id=" + car_id + ", user_id=" + user_id + '}';
    }
    
    
}
