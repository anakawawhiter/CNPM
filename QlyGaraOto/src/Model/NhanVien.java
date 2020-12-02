/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.Serializable;
import java.util.*;

/**
 *
 * @author dinhs
 */
public class NhanVien implements Serializable{
    private int id;
    private String ten;
    private String taiKhoan;
    private String matKhau;
    private String sdt;
    private String chucVu;

    public NhanVien() {
        super();
    }

    public NhanVien(String ten, String taiKhoan, String matKhau, String sdt, String chucVu) {
        super();
        this.taiKhoan = taiKhoan;
        this.matKhau = matKhau;
        this.sdt = sdt;
        this.chucVu = chucVu;
    }

    public String getTaiKhoan() {
        return taiKhoan;
    }

    public void setTaiKhoan(String taiKhoan) {
        this.taiKhoan = taiKhoan;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getChucVu() {
        return chucVu;
    }

    public void setChucVu(String chucVu) {
        this.chucVu = chucVu;
    }

    public int getId() {
        return id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }
    
    
}
