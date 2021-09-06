package com.clinic.reservation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;
 
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ReserveclinicDAO {
	Connection con;
    PreparedStatement pstmt;
    ResultSet rs;
    
    public void getcon() {
    	try {
    		Context initctx = new InitialContext(); // 외부서버로 부터 데이터를 읽어들이는것이기 때문에 드라이버가 없을수 있어
            Context envctx = (Context) initctx.lookup("java:comp/env"); // 자바를 읽어들일수 있는 환경에서 사용 //예외처리를 해준다.
            DataSource ds = (DataSource) envctx.lookup("jdbc/pool");
            con = ds.getConnection();
    	}catch (Exception e) {
            e.printStackTrace();
    }
}
    public Vector<ClinicListBean> getSelectClinic(){
    	Vector<ClinicListBean> v = new Vector<>();
    	getcon();
    	
    	try {
    		String sql = "select * from sclist order by no desc";
    		pstmt = con.prepareStatement(sql);
    		rs = pstmt.executeQuery();
    		 int count = 0;
             while (rs.next())// 결과값이 끝날때까지만 실행
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
            	 if(count>9)
            		 break;
             }
             con.close();
             }catch(Exception e) {
            	 e.printStackTrace();
             }
    	return v;
    	}
    }
