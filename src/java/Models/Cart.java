package Models;

import java.util.List;

public class Cart {

    private int cart_id;
    private List<CartItems> items;  // Assuming CartItem is the class for items in the cart

    public Cart() {
    }

    public Cart(int cart_id, int user_id, List<CartItems> items) {
        this.cart_id = cart_id;
        this.items = items;
    }

    public int getCart_id() {
        return cart_id;
    }


    public List<CartItems> getItems() {
        return items;
    }

    public void setItems(List<CartItems> items) {
        this.items = items;
    }
}
