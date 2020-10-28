/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author ASUS
 */
public class NgonNguDAO {
    public Map<String, String> englishLanguage(){
        Map<String, String> map = new HashMap<>();
        map.put("Login.TieuDe", "Account");
        map.put("Login.TenDangNhap", "Username");
        map.put("Login.MatKhau", "Password");
        map.put("Login.Submit", "Login");
        return map;
    }
    public Map<String, String> vietnameseLanguage(){
        Map<String, String> map = new HashMap<>();
        map.put("Login.TieuDe", "Đăng Nhập Vào Nhé");
        map.put("Login.TenDangNhap", "Tên đăng nhập");
        map.put("Login.MatKhau", "Mật khẩu");
        map.put("Login.Submit", "Đăng Nhập");
        return map;
    }
    public Map<String, String> chinaLanguage(){
        Map<String, String> map = new HashMap<>();
        map.put("Login.TieuDe", "登录");
        map.put("Login.TenDangNhap", "用户名");
        map.put("Login.MatKhau", "密码");
        map.put("Login.Submit", "登录");
        return map;
    }
    public Map<String, String> japaneseLanguage(){
        Map<String, String> map = new HashMap<>();
        map.put("Login.TieuDe", "ログインする");
        map.put("Login.TenDangNhap", "ユーザー名");
        map.put("Login.MatKhau", "パスワード");
        map.put("Login.Submit", "ログインする");
        return map;
    }
}
