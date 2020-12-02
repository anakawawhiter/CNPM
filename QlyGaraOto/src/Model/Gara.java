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
public class Gara implements Serializable{
    private int id;
    private String ten;
    private String diaChi;
    private int danhGia;

    public Gara() {
        super();
    }

    public Gara(String ten, String diaChi, int danhGia) {
        super();
        this.ten = ten;
        this.diaChi = diaChi;
        this.danhGia = danhGia;
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

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public int getDanhGia() {
        return danhGia;
    }
    
}
