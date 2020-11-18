package edu.fud.model;

import java.io.Serializable;

public class Group implements Serializable{
    private int id;
    private String group;
    private String description;

    public Group() {
    }

    public Group(String group, String description) {
        this.group = group;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
}
