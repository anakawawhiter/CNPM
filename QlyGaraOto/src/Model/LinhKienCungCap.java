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
public class LinhKienCungCap implements Serializable{
    private int id;
    private LinhKien linhKien;
    private NhaCungCap nhaCungCap;

    public LinhKienCungCap() {
    }

    public LinhKienCungCap(int id, LinhKien linhKien, NhaCungCap nhaCungCap) {
        this.id = id;
        this.linhKien = linhKien;
        this.nhaCungCap = nhaCungCap;
    }

    public LinhKien getLinhKien() {
        return linhKien;
    }

    public void setLinhKien(LinhKien linhKien) {
        this.linhKien = linhKien;
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
