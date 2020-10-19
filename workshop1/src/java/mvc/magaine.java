package mvc;

/**
 *
 * @author ASUS
 */
public class magaine {
    private String id;
    private String title;
    private String publisher;
    private float price;

    public magaine(String id, String title, String publisher, float price) {
        this.id = id;
        this.title = title;
        this.publisher = publisher;
        this.price = price;
    }

    

    magaine() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }
    
}
