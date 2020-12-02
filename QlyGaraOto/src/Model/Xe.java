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
public class Xe implements Serializable{
    private int id;
    private String bienSo;
    private String hang;
    private String loai;
    private String mau;

    public Xe() {
        super();
    }

    public Xe(String bienSo, String hang, String loai, String mau) {
        this.bienSo = bienSo;
        this.hang = hang;
        this.loai = loai;
        this.mau = mau;
    }

    public String getBienSo() {
        return bienSo;
    }

    public void setBienSo(String bienSo) {
        this.bienSo = bienSo;
    }

    public String getHang() {
        return hang;
    }

    public void setHang(String hang) {
        this.hang = hang;
    }

    public String getLoai() {
        return loai;
    }

    public void setLoai(String loai) {
        this.loai = loai;
    }

    public String getMau() {
        return mau;
    }

    public void setMau(String mau) {
        this.mau = mau;
    }

    public int getId() {
        return id;
    }
    
}
