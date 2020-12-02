/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Model;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * @author dinhs
 */
public class LinhKienSuDung implements Serializable{
    private int id;
    private LinhKien linhKien;;
    private int soLuong;
    private Date ngayDung;
    private HoaDon hoaDon;
    private float donGia;
    public LinhKienSuDung() {
        super();
    }

    public LinhKienSuDung(LinhKien linhKien, int soLuong, HoaDon hoaDon) {
        this.linhKien = linhKien;
        this.soLuong = soLuong;
        this.ngayDung = hoaDon.getNgayXuat();
        this.hoaDon = hoaDon;
        this.donGia = linhKien.getGia();
    }

    public float getDonGia() {
        return donGia;
    }

    public void setDonGia(float donGia) {
        this.donGia = donGia;
    }
    
    
    public LinhKien getLinhKien() {
        return linhKien;
    }

    public void setLinhKien(LinhKien linhKien) {
        this.linhKien = linhKien;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public Date getNgayDung() {
        return ngayDung;
    }

    public void setNgayDung(Date ngayDung) {
        this.ngayDung = ngayDung;
    }

    public HoaDon getHoaDon() {
        return hoaDon;
    }

    public void setHoaDon(HoaDon hoaDon) {
        this.hoaDon = hoaDon;
    }

    public int getId() {
        return id;
    }
    
}
