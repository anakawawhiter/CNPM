/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;
import java.io.*;
import java.util.Date;
/**
 *
 * @author dinhs
 */
public class HoaDon implements Serializable{
    private int id;
    private Date ngayXuat;
    private float tongTien;
    private NhanVien nguoiXuat;
    private KhachHang khachHang;
    private Xe[] xes;
    private LinhKienSuDung[] linhKienSuDungs;

    public HoaDon() {
        super();
    }

    public HoaDon(Date ngayXuat, float tongTien, NhanVien nguoiXuat, KhachHang khachHang, Xe[] xes, LinhKienSuDung[] linhKienSuDungs) {
        this.ngayXuat = ngayXuat;
        this.tongTien = tongTien;
        this.nguoiXuat = nguoiXuat;
        this.khachHang = khachHang;
        this.xes = xes;
        this.linhKienSuDungs = linhKienSuDungs;
    }

    public Date getNgayXuat() {
        return ngayXuat;
    }

    public void setNgayXuat(Date ngayXuat) {
        this.ngayXuat = ngayXuat;
    }

    public float getTongTien() {
        return tongTien;
    }

    public void setTongTien(float tongTien) {
        this.tongTien = tongTien;
    }

    public NhanVien getNguoiXuat() {
        return nguoiXuat;
    }

    public void setNguoiXuat(NhanVien nguoiXuat) {
        this.nguoiXuat = nguoiXuat;
    }

    public KhachHang getKhachHang() {
        return khachHang;
    }

    public void setKhachHang(KhachHang khachHang) {
        this.khachHang = khachHang;
    }

    public Xe[] getXes() {
        return xes;
    }

    public void setXes(Xe[] xes) {
        this.xes = xes;
    }

    public LinhKienSuDung[] getLinhKienSuDungs() {
        return linhKienSuDungs;
    }

    public void setLinhKienSuDungs(LinhKienSuDung[] linhKienSuDungs) {
        this.linhKienSuDungs = linhKienSuDungs;
    }

    public int getId() {
        return id;
    }
    
    
}
