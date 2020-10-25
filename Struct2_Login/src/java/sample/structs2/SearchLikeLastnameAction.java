package sample.structs2;

import java.util.List;
import sample.registration.RegistrationDAO;
import sample.registration.RegistrationDTO;

public class SearchLikeLastnameAction {
    private String searchValue;
    private List<RegistrationDTO> listAccounts;
    private final String SUCCESS = "success";

    public SearchLikeLastnameAction() {
    }
    
    public String execute() throws Exception {
        RegistrationDAO dao = new RegistrationDAO();
        
        dao.searchLastname(searchValue);
        listAccounts = dao.getListAccounts();
        
        return SUCCESS;
    }

    public String getSearchValue() {
        return searchValue;
    }

    public void setSearchValue(String searchValue) {
        this.searchValue = searchValue;
    }

    public List<RegistrationDTO> getListAccounts() {
        return listAccounts;
    }

    public void setListAccounts(List<RegistrationDTO> listAccounts) {
        this.listAccounts = listAccounts;
    }
    
}
