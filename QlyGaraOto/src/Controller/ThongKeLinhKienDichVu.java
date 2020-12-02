/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controller;

import Model.LinhKien;

/**
 * 
 * @author dinhs
 */
public class ThongKeLinhKienDichVu {
    private int id;
    private String ten;
    private int soLuong;
    private float doanhThu;

    public ThongKeLinhKienDichVu() {
    }

    public ThongKeLinhKienDichVu(int id, String ten, int soLuong, float doanhThu) {
        this.id = id;
        this.ten = ten;
        this.soLuong = soLuong;
        this.doanhThu = doanhThu;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public float getDoanhThu() {
        return doanhThu;
    }

    public void setDoanhThu(float doanhThu) {
        this.doanhThu = doanhThu;
    }



}
