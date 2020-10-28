package controller;

import com.opensymphony.xwork2.ActionSupport;
import model.TaiKhoan;
import com.opensymphony.xwork2.validator.annotations.*;

public class DangKiActionSupport extends ActionSupport {
    
    private TaiKhoan tk = new TaiKhoan();

    @VisitorFieldValidator
    public TaiKhoan getTk() {
        return tk;
    }

    public void setTk(TaiKhoan tk) {
        this.tk = tk;
    }
    
    
    public DangKiActionSupport() {
    }
    
    @Override
    public String execute() throws Exception {
        return SUCCESS;
    }
    
}
