package com.clinic.reservation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class clinicDAO {
	
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public void getcon() {
		try {
			Context initctx = new InitialContext(); // �ܺμ����� ���� �����͸� �о���̴°��̱� ������ ����̹��� ������ �־�
            Context envctx = (Context) initctx.lookup("java:comp/env"); // �ڹٸ� �о���ϼ� �ִ� ȯ�濡�� ��� //����ó���� ���ش�.
            DataSource ds = (DataSource) envctx.lookup("jdbc/pool");
            con = ds.getConnection();
            // �����ͼҽ��� username, url, password�� ����ִ´�. �׷��� �ϸ� �����ͼҽ��� Ŀ�ؼ��� ��� �´�.
            // jdbc/pool�� �ִ� �����ͼҽ��� ����Ҽ� �ִ�.
        } catch (Exception e) {
            e.printStackTrace();
		}
	}
	public Vector<ClinicListBean> getSelectClinic(){
		Vector<ClinicListBean> v = new Vector<>();
		getcon();
		
		 try {
			 
	            String sql = "select * from cslist order by no desc ";
	            pstmt = con.prepareStatement(sql);
	            // ���� ������ ������ Result������
	            rs = pstmt.executeQuery();
	            int count = 0;
	            while (rs.next())// ������� ������������ ����
	            {
	            	ClinicListBean bean = new ClinicListBean();
	            	 bean.setRegi(rs.getString(1));
	            	 bean.setCityy(rs.getString(2));
	            	 bean.setLoca(rs.getString(3));
	            	 bean.setAddr(rs.getString(4));
	            	 bean.setWkt(rs.getString(5));
	            	 bean.setSat(rs.getString(6));
	            	 bean.setSun(rs.getString(7));
	            	 bean.setHol(rs.getString(8));
	            	 bean.setClname(rs.getString(9));
	            	 bean.setTel(rs.getString(10));
	            	 v.add(bean);
	            	 count++;
	            	 if (count>10)
	            		 break;
	            }
	            con.close();
		 	}catch (Exception e) {// ������������ �˻��ϴ� ������ �ۼ�
	            e.printStackTrace();
		 }
		return v;
	
	}
	public Vector<ClinicListBean> getCategoryClinic(String cate)
	{
		Vector<ClinicListBean> v = new Vector<>();
		ClinicListBean bean = null;
		getcon();
		 
        try {
            String sql = "select * from sclist where regi=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, cate);
            rs = pstmt.executeQuery();
            while (rs.next())
            {
            	bean = new ClinicListBean();
            	bean.setRegi(rs.getString(1));
            	bean.setCityy(rs.getString(2));
            	bean.setLoca(rs.getString(3));
            	bean.setAddr(rs.getString(4));
            	bean.setWkt(rs.getString(5));
            	bean.setSat(rs.getString(6));
            	bean.setSun(rs.getString(7));
            	bean.setHol(rs.getString(8));
            	bean.setClname(rs.getString(9));
            	bean.setTel(rs.getString(10));
            	// ���Ϳ� �� Ŭ������ ����
                v.add(bean);
 
            }
 
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
 
        return v;
 
	}

}
