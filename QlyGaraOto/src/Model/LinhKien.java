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
public class LinhKien implements Serializable{
    private int id;
    private String ten;
    private float gia;
    private NhaCungCap nhaCungCap;

    public LinhKien() {
        super();
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public float getGia() {
        return gia;
    }

    public void setGia(float gia) {
        this.gia = gia;
    }

    public NhaCungCap getNhaCungCap() {
        return nhaCungCap;
    }

    public void setNhaCungCap(NhaCungCap nhaCungCap) {
        this.nhaCungCap = nhaCungCap;
    }



    public int getId() {
        return id;
    }
    
}
