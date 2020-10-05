package model;

public class ThanhVien {	
	String id;
	String ho;
	String ten;
	String taKhoan;
	public ThanhVien(String id, String ho, String ten, String taKhoan) {
		super();
		this.id = id;
		this.ho = ho;
		this.ten = ten;
		this.taKhoan = taKhoan;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getHo() {
		return ho;
	}
	public void setHo(String ho) {
		this.ho = ho;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public String getTaKhoan() {
		return taKhoan;
	}
	public void setTaKhoan(String taKhoan) {
		this.taKhoan = taKhoan;
	}
	@Override
	public String toString() {
		return "ThanhVien [id=" + id + ", ho=" + ho + ", ten=" + ten + ", taKhoan=" + taKhoan + "]";
	}
	
}	
