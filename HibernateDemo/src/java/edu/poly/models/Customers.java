package edu.poly.models;
// Generated Oct 30, 2020 10:06:57 PM by Hibernate Tools 4.3.1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Customers generated by hbm2java
 */
@Entity
@Table(name="Customers"
    ,schema="dbo"
    ,catalog="tekeWeb"
)
public class Customers  implements java.io.Serializable {


     private int customerId;
     private String name;
     private String email;
     private String tel;
     private Boolean gender;

    public Customers() {
    }

	
    public Customers(int customerId) {
        this.customerId = customerId;
    }
    public Customers(int customerId, String name, String email, String tel, Boolean gender) {
       this.customerId = customerId;
       this.name = name;
       this.email = email;
       this.tel = tel;
       this.gender = gender;
    }
   
     @Id 

    
    @Column(name="CustomerId", unique=true, nullable=false)
    public int getCustomerId() {
        return this.customerId;
    }
    
    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    
    @Column(name="Name")
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    
    @Column(name="Email")
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }

    
    @Column(name="Tel")
    public String getTel() {
        return this.tel;
    }
    
    public void setTel(String tel) {
        this.tel = tel;
    }

    
    @Column(name="Gender")
    public Boolean getGender() {
        return this.gender;
    }
    
    public void setGender(Boolean gender) {
        this.gender = gender;
    }




}

