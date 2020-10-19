package model;

public class Order {

    String orderID;
    String customerID;
    String productID;
    String date;
    String totalPrice;

    public Order() {
    }

    public Order(String orderID, String customerID, String productID, String date, String totalPrice) {
        this.orderID = orderID;
        this.customerID = customerID;
        this.productID = productID;
        this.date = date;
        this.totalPrice = totalPrice;
    }

    public String getOrderID() {
        return orderID;
    }

    public void setOrderID(String orderID) {
        this.orderID = orderID;
    }

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public String getCustomerID() {
        return customerID;
    }

    public void setCustomerID(String customerID) {
        this.customerID = customerID;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(String totalPrice) {
        this.totalPrice = totalPrice;
    }

    

}
