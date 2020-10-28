package sample.structs2;

import sample.registration.RegistrationDAO;

public class UpdateRecordAction {
    private String username;
    private String password;
    private boolean role;
    private String lastSearchValue;
    private final String FAIL = "fail";
    private final String SUCCESS = "success";
    public UpdateRecordAction() {
    }
    
    public String execute() throws Exception {
        RegistrationDAO dao = new RegistrationDAO();
        
        boolean result = dao.updatePassRole(username, password, role);
        String URL = FAIL;
        if (result) {
            URL = SUCCESS;
        }
        return URL;
    } 

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isRole() {
        return role;
    }

    public void setRole(boolean role) {
        this.role = role;
    }

    public String getLastSearchValue() {
        return lastSearchValue;
    }

    public void setLastSearchValue(String lastSearchValue) {
        this.lastSearchValue = lastSearchValue;
    }
    
    
}
