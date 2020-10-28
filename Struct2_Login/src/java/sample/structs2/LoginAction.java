package sample.structs2;

import com.opensymphony.xwork2.ActionContext;
import java.util.Map;
import sample.registration.RegistrationDAO;

public class LoginAction {
    private String username;
    private String password;
    private final String FAIL = "fail";
    private final String SUCCESS = "success";

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

    public LoginAction() {
    }

    public String execute() throws Exception {
        RegistrationDAO dao = new RegistrationDAO();
        boolean result = dao.checkLogin(username, password);
        String URL = FAIL;
        if (result) {
            Map session = ActionContext.getContext().getSession();
            session.put("USERNAME", getUsername());
            URL = SUCCESS;
        }
        return URL;
    }

}
