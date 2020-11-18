package edu.fud.model;

import com.opensymphony.xwork2.validator.annotations.*;
import java.io.Serializable;

public class Contact implements Serializable{
    private int id;
    private String firstname;
    private String lastname;
    private String group;
    private String phone;

    public Contact() {
    }

    public Contact(String firstname, String lastname, String group, String phone) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.group = group;
        this.phone = phone;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @RequiredStringValidator(message = "Firstname donot allow NULL")
    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }
    @RequiredStringValidator(message = "Firstname donot allow NULL")
    public String getLastname() {
        return lastname;
    }
    
    public void setLastname(String lastname) {
        this.lastname = lastname;
    }
    @RequiredStringValidator(message = "Firstname donot allow NULL")
    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }
    @RequiredStringValidator(message = "Firstname donot allow NULL")
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
    
}
