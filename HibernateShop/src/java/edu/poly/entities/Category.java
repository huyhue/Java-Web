package edu.poly.entities;
// Generated Nov 7, 2020 10:27:48 AM by Hibernate Tools 4.3.1

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
@Entity
@Table(name="Categories"
    ,schema="dbo"
    ,catalog="tekeWeb"
    , uniqueConstraints = @UniqueConstraint(columnNames="CategoryId") 
)
public class Category  implements java.io.Serializable {

     private int categoryId;
     private String name;
     private Set<Product> productses = new HashSet<Product>(0);

    public Category() {
    }

	
    public Category(int categoryId) {
        this.categoryId = categoryId;
    }
    public Category(int categoryId, String name, Set<Product> productses) {
       this.categoryId = categoryId;
       this.name = name;
       this.productses = productses;
    }
   
     @Id 
    @GeneratedValue(strategy=IDENTITY)
    @Column(name="CategoryId", unique=true, nullable=false)
    public int getCategoryId() {
        return this.categoryId;
    }
    
    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    
    @Column(name="Name")
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="categories")
    public Set<Product> getProductses() {
        return this.productses;
    }
    
    public void setProductses(Set<Product> productses) {
        this.productses = productses;
    }




}


