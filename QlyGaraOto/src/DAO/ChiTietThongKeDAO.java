/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DAO;

import Controller.ChiTietThongKe;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.sql.*;

/**
 * 
 * @author dinhs
 */
public class ChiTietThongKeDAO extends DAO{

    public ChiTietThongKeDAO() {
        super();
    }
    
    public ArrayList<ChiTietThongKe> chiTietThongKeDAO(String id, Date batDau,Date ketThuc){
        ArrayList<ChiTietThongKe> res = new ArrayList<>();
        SimpleDateFormat  dinhDang = new SimpleDateFormat("yyyy-MM-dd");
        String ngayBatDau = dinhDang.format(batDau);
        String ngayKetThuc = dinhDang.format(ketThuc);
        String sql ="select \n" +
                    "	hoadon.ngayxuat as ngay,\n" +
                    "    khachhang.tenkhach as tenKhach,\n" +
                    "    xe.bienso as bienso,\n" +
                    "    linhkien.ten as ten,\n" +
                    "    linhkiensudung.soluong as soluong,\n" +
                    "    linhkien.gia as gia,\n" +
                    "    (linhkiensudung.soluong)*linhkien.gia as tongtien\n" +
                    "from \n" +
                    "	 linhkien,hoadon,linhkiensudung,khachhang,xe\n" +
                    "where \n" +
                    "	 linhkien.id=linhkiensudung.idlinnkien\n" +
                    "	 and	hoadon.id=linhkiensudung.idhoadon \n" +
                    "    and hoadon.idkhachhang = khachhang.id\n" +
                    "    and hoadon.idxe = xe.id\n" +
                    "    and hoadon.ngayxuat between ? and ? \n" +
                    "    and linhkien.id = ? \n" +
                    "order by tongtien desc";
        try {
            PreparedStatement ps =  con.prepareCall(sql);
            ps.setString(1, ngayBatDau);
            ps.setString(2, ngayKetThuc);
            ps.setString(3, id);
            ResultSet rs= ps.executeQuery();
            while(rs.next()){
                ChiTietThongKe ct = new ChiTietThongKe();
                ct.setNgay(rs.getString("ngay"));
                ct.setKhachHang(rs.getString("tenKhach"));
                ct.setXe(rs.getString("bienso"));;
                ct.setLinhKien(rs.getString("ten"));
                ct.setDonGia(rs.getInt("gia"));
                ct.setSoluong(rs.getInt("soluong"));
                ct.setThanhTien(rs.getFloat("tongtien"));
                res.add(ct);            
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }
}
