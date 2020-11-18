package edu.fud.structs2;

import com.opensymphony.xwork2.ActionSupport;
import edu.fud.dao.DBDao;
import edu.fud.model.Contact;
import java.util.List;

public class UpdateContactAction extends ActionSupport {
    private String firstname;
    private String lastname;
    private String group;
    private String phone;
    private List<Contact> listAccounts;
    private List<String> listGroup;
    @Override
    public void validate() {
        boolean isNumeric = this.phone.chars().allMatch( Character::isDigit );
        if (this.firstname.length() == 0) {
            addFieldError("firstname", "Firstname is required");
        }
        if (this.lastname.length() == 0) {
            addFieldError("lastname", "Lastname is required");
        }
        if (this.group.length() == 0) {
            addFieldError("group", "Group is required");
        }
        if (this.phone.length() == 0) {
            addFieldError("phone", "Phone is required");
        }else if(isNumeric == false){
            addFieldError("phone", "Phone must be numberic");
        }
    }
    
    public UpdateContactAction() throws Exception {
        DBDao dao = new DBDao();
        listGroup = dao.getGroup();
    }
    
    public String execute() throws Exception {
        DBDao dao = new DBDao();
        Contact c = new Contact(firstname, lastname, group, phone);
        boolean result = dao.updateContact(c);
        listAccounts = dao.findAll();
        if (result) {
            return SUCCESS;
        }
        return ERROR;
    }

    public List<String> getListGroup() {
        return listGroup;
    }

    public void setListGroup(List<String> listGroup) {
        this.listGroup = listGroup;
    }

    public List<Contact> getListAccounts() {
        return listAccounts;
    }

    public void setListAccounts(List<Contact> listAccounts) {
        this.listAccounts = listAccounts;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

}
