/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DAO;

import Controller.ThongKeLinhKienDichVu;
import java.util.ArrayList;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;
/**
 * 
 * @author dinhs
 */
public class ThongKeLinhKienDichVuDAO extends DAO{
    public ThongKeLinhKienDichVuDAO(){
        super();
    }
    public ArrayList<ThongKeLinhKienDichVu> thongKeLinhKienDichVu(Date batDau, Date ketThuc){
        ArrayList<ThongKeLinhKienDichVu> res = new ArrayList<>();
        SimpleDateFormat  dinhDang = new SimpleDateFormat("yyyy-MM-dd");
        String ngayBatDau = dinhDang.format(batDau);
        String ngayKetThuc = dinhDang.format(ketThuc);
        String sql ="select \n" +
                    "	linhkien.id as id,\n" +
                    "    linhkien.ten as ten,\n" +
                    "    sum(linhkiensudung.soluong) as soluong,\n" +
                    "    (linhkiensudung.soluong)*linhkien.gia as tongtien\n" +
                    "from \n" +
                    "	linhkien,hoadon,linhkiensudung\n" +
                    "where \n" +
                    "	linhkien.id=linhkiensudung.idlinnkien\n" +
                    "	and	hoadon.id=linhkiensudung.idhoadon \n" +
                    "    and hoadon.ngayxuat between ? \n" +
                    "    and ? \n" +
                    "Group by linhkien.id\n" +
                    "order by tongtien desc" ;
        try {
            PreparedStatement ps = con.prepareCall(sql);
            ps.setString(1, ngayBatDau);
            ps.setString(2, ngayKetThuc);    
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                ThongKeLinhKienDichVu tk = new ThongKeLinhKienDichVu();
                tk.setId(rs.getInt("id"));
                tk.setTen(rs.getString("ten"));
                tk.setSoLuong((rs.getInt("soluong")));
                tk.setDoanhThu(rs.getFloat("tongtien"));
                res.add(tk);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
           return res;
    }
}
