/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;
import java.io.*;
/**
 *
 * @author dinhs
 */
public class KhachHang implements Serializable{
    private int id;
    private String ten;
    private String diaChi;
    private String sdt;
    private Xe[] xe;

    public KhachHang() {
        super();
    }

    public KhachHang(String ten, String diaChi, String sdt, Xe[] xe) {
        this.ten = ten;
        this.diaChi = diaChi;
        this.sdt = sdt;
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

    public int getId() {
        return id;
    }

    public Xe[] getXe() {
        return xe;
    }

    public void setXe(Xe[] xe) {
        this.xe = xe;
    }
    
}
