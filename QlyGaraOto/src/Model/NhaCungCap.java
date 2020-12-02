/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Model;

import java.io.Serializable;

/**
 * 
 * @author dinhs
 */
public class NhaCungCap implements Serializable{
    private int id;
    private String ten;
    private String diaChi;
    private String sdt;
    private String email;
    private LinhKien[] linhKiens;

    public NhaCungCap() {
        super();
    }

    public NhaCungCap(String ten, String diaChi, String sdt, String email, LinhKien[] linhKiens) {
        this.ten = ten;
        this.diaChi = diaChi;
        this.sdt = sdt;
        this.email = email;
        this.linhKiens = linhKiens;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public LinhKien[] getLinhKiens() {
        return linhKiens;
    }

    public void setLinhKiens(LinhKien[] linhKiens) {
        this.linhKiens = linhKiens;
    }
    
    public int getId() {
        return id;
    }
    
}
