package edu.poly.entities;
// Generated Oct 30, 2020 11:10:05 PM by Hibernate Tools 4.3.1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Students generated by hbm2java
 */
@Entity
@Table(name="Students"
    ,schema="dbo"
    ,catalog="tekeWeb"
)
public class Students  implements java.io.Serializable {


     private int studentId;
     private Classes classes;
     private String name;

    public Students() {
    }

	
    public Students(int studentId) {
        this.studentId = studentId;
    }
    public Students(int studentId, Classes classes, String name) {
       this.studentId = studentId;
       this.classes = classes;
       this.name = name;
    }
   
     @Id 

    
    @Column(name="StudentId", unique=true, nullable=false)
    public int getStudentId() {
        return this.studentId;
    }
    
    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="ClassId")
    public Classes getClasses() {
        return this.classes;
    }
    
    public void setClasses(Classes classes) {
        this.classes = classes;
    }

    
    @Column(name="Name")
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }




}


