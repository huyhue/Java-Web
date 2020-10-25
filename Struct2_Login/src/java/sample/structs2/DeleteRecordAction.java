package sample.structs2;

import sample.registration.RegistrationDAO;

public class DeleteRecordAction {
    private String pk;
    private String lastSearchValue;
    private final String FAIL = "fail";
    private final String SUCCESS = "success";
    
    public DeleteRecordAction() {
    }
    
    public String execute() throws Exception {
        RegistrationDAO dao = new RegistrationDAO();
        
        boolean result = dao.deleteRecord(pk);
        String URL = FAIL;
        if (result) {
            URL = SUCCESS;
        }
        return URL;
    }

    public String getPk() {
        return pk;
    }

    public void setPk(String pk) {
        this.pk = pk;
    }

    public String getLastSearchValue() {
        return lastSearchValue;
    }

    public void setLastSearchValue(String lastSearchValue) {
        this.lastSearchValue = lastSearchValue;
    }
    
    
    
}
