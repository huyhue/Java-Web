/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.fud.structs2;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import edu.fud.dao.DBDao;
import edu.fud.model.Contact;
import java.util.List;

public class EditContactAction extends ActionSupport {
    private String pk;
    private Contact c;
    private List<Contact> listAccounts;
    private List<String> listGroup;
    
    public EditContactAction() throws Exception {
        DBDao dao = new DBDao();
        listGroup = dao.getGroup();
    }
    
    public String execute() throws Exception {
        DBDao dao = new DBDao();
        c = dao.findById(pk);
//        listAccounts = dao.findAll();
        listGroup = dao.getGroup();
        if (c!=null) {
            return SUCCESS;
        }
        return ERROR;
    }
    
    public String display() throws Exception {
        return NONE;
    }
    public Contact getC() {
        return c;
    }

    public void setC(Contact c) {
        this.c = c;
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

    public String getPk() {
        return pk;
    }

    public void setPk(String pk) {
        this.pk = pk;
    }
}
