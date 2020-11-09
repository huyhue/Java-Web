package edu.fud.structs2;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import edu.fud.dao.DBDao;
import edu.fud.model.Contact;
import java.util.List;

public class DeleteContactAction extends ActionSupport {
    private String pk;
    private List<Contact> listAccounts;
    public DeleteContactAction() {
    }
    
    public String execute() throws Exception {
        DBDao dao = new DBDao();
        boolean result = dao.deleteContact(pk);
        listAccounts = dao.findAll();
        if (result) {
            return SUCCESS;
        }
        return ERROR;
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
