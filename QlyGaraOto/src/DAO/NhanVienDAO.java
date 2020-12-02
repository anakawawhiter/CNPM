/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DAO;
import Model.NhanVien;
import java.sql.*;
/**
 * 
 * @author dinhs
 */
public class NhanVienDAO extends DAO{

    public NhanVienDAO() {
        super();
    }
    public boolean kiemTraDagNhap(NhanVien nv){
        boolean res = false;
        String sqlQuery = "SELECT ten, chucvu FROM nhanvien where taikhoan=? AND matkhau=?";
        try {
            PreparedStatement ps = con.prepareStatement(sqlQuery);
            ps.setString(1, nv.getTaiKhoan());
            ps.setString(2, nv.getMatKhau());
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                nv.setTen(rs.getString("ten"));
                nv.setChucVu(rs.getString("chucvu"));
                res = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }
}
