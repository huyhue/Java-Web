package model;

public class Product {

    String productID;
    String productName;
    String price;
    String producerID;
    String img;
    String soLuongMua;

    public Product() {
    }

    public Product(String productID, String productName, String price, String producerID, String img) {
        super();
        this.productID = productID;
        this.productName = productName;
        this.price = price;
        this.producerID = producerID;
        this.img = img;
    }

    public Product(String productID, String productName, String price, String producerID, String img, String soLuongMua) {
        this.productID = productID;
        this.productName = productName;
        this.price = price;
        this.producerID = producerID;
        this.img = img;
        this.soLuongMua = soLuongMua;
    }

    public String getSoLuongMua() {
        return soLuongMua;
    }

    public void setSoLuongMua(String soLuongMua) {
        this.soLuongMua = soLuongMua;
    }

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getProducerID() {
        return producerID;
    }

    public void setProducerID(String producerID) {
        this.producerID = producerID;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    @Override
    public String toString() {
        return "Product [productID=" + productID + ", productName=" + productName + ", price=" + price + ", producerID="
                + producerID + ", img=" + img + "]";
    }

}
