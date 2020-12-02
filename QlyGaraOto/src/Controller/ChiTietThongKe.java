/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controller;

import Model.KhachHang;
import Model.LinhKien;
import java.util.Date;

/**
 * 
 * @author dinhs
 */
public class ChiTietThongKe {
    private int id;
    private String linhKien;
    private String khachHang;
    private String xe;
    private String ngay;
    private  int soluong;
    private float donGia ;
    private float thanhTien;

    public ChiTietThongKe() {
    }

    public ChiTietThongKe(int id, String linhKien, String khachHang, String xe, String ngay, int soluong, float donGia, float thanhTien) {
        this.id = id;
        this.linhKien = linhKien;
        this.khachHang = khachHang;
        this.xe = xe;
        this.ngay = ngay;
        this.soluong = soluong;
        this.donGia = donGia;
        this.thanhTien = thanhTien;
    }

    public String getXe() {
        return xe;
    }

    public void setXe(String xe) {
        this.xe = xe;
    }



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLinhKien() {
        return linhKien;
    }

    public void setLinhKien(String linhKien) {
        this.linhKien = linhKien;
    }

    public String getKhachHang() {
        return khachHang;
    }

    public void setKhachHang(String khachHang) {
        this.khachHang = khachHang;
    }

    public String getNgay() {
        return ngay;
    }

    public void setNgay(String ngay) {
        this.ngay = ngay;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public float getDonGia() {
        return donGia;
    }

    public void setDonGia(float donGia) {
        this.donGia = donGia;
    }

    public float getThanhTien() {
        return thanhTien;
    }

    public void setThanhTien(float thanhTien) {
        this.thanhTien = thanhTien;
    }

    public void getXe(String string) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
