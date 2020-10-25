package controller;

import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import model.SanPham;

public class HelloActionSupport extends ActionSupport {
    
    public SanPham sp = new SanPham();
    public List<SanPham> dssp = new ArrayList<>();

    public SanPham getSp() {
        return sp;
    }

    public void setSp(SanPham sp) {
        this.sp = sp;
    }

    public List<SanPham> getDssp() {
        return dssp;
    }

    public void setDssp(List<SanPham> dssp) {
        this.dssp = dssp;
    }
    
    public HelloActionSupport() {
    }
    
    public String execute() throws Exception {
        this.sp = new SanPham("sp01", "San pham 1", 100);
        return "success";
    }
    
    public String hienthi() throws Exception {
        this.dssp.add(new SanPham("sp01", "San pham 1", 100));
        this.dssp.add(new SanPham("sp02", "San pham 2", 200));
        this.dssp.add(new SanPham("sp03", "San pham 3", 300));
        this.dssp.add(new SanPham("sp04", "San pham 4", 400));
        return "success";
    }
}
