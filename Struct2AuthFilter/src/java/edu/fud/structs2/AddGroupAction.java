package edu.fud.structs2;

import com.opensymphony.xwork2.ActionSupport;
import edu.fud.dao.DBDao;
import edu.fud.model.Group;

public class AddGroupAction extends ActionSupport {
    private String name;
    private String description;
    
    public AddGroupAction() {
    }
    
    public String execute() throws Exception {
        DBDao dao = new DBDao();
        Group g = new Group(name, description);
        boolean result = dao.insertGroup(g);
        if (result) {
            return SUCCESS;
        }
        return ERROR;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
}
