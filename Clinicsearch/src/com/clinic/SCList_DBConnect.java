package com.clinic;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class SCList_DBConnect {
	private Connection conn;
	private PreparedStatement ps;
    private final String URL = "jdbc:oracle:thin:@localhost:1521:orcl";
    {

	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
	} catch (Exception ex) {
        System.out.println(ex.getMessage());
    }
}
    public void getConnection() {
        try {
		conn = DriverManager.getConnection(URL, "com", "1234");
		}catch(Exception ex) {}
    }
    public void disConnection() {
    	try {
    		if(ps!=null)ps.close();
    		if(conn!=null)conn.close();
        }catch(Exception ex) {}
    }
	public ArrayList<SCListDB> cliAllData() {
		ArrayList<SCListDB> list = new ArrayList <SCListDB>();
		try {
			 // ����Ŭ ����
            getConnection();
            // SQL ���� ����
            String sql="SELECT DISTINCT ������, ��üä��_���ɿ���, area1, area2, name, addr, ����_��ð�, �����_��ð�, �Ͽ��ϰ�����_��ð�, ��ǥ_��ȭ��ȣ"
                    + "FROM TEST1 ORDER BY ������ ASC";
            ps=conn.prepareStatement(sql); //executeQuery()
            // ����� �ޱ�
            ResultSet rs=ps.executeQuery();
            while(rs.next()) {
            	SCListDB l1= new SCListDB();
            	l1.setDate(rs.getString(1));
            	l1.setPubl(rs.getString(2));
            	l1.setArea1(rs.getString(3));
            	l1.setArea2(rs.getString(4));
            	l1.setName(rs.getString(5));
            	l1.setAddr(rs.getString(6));
            	l1.setWkdtime(rs.getString(7));
            	l1.setSattime(rs.getString(8));
            	l1.setHoltime(rs.getString(9));
            	l1.setTel(rs.getString(10));
            	
            	list.add(l1);
            }
            	rs.close();
            	
            } catch(Exception ex) {
            	System.out.println(ex.getMessage());
            } finally {
            	disConnection();
            } return list;
		}
	public SCListDB cliAllData(int mno) {
		SCListDB l1 = new SCListDB();
		try {
			getConnection();
			String sql="SELECT ������, ��üä��_���ɿ���, area1, area2, name, addr, ����_��ð�, �����_��ð�, �Ͽ��ϰ�����_��ð�, ��ǥ_��ȭ��ȣ FROM TEST1 WHERE mno="+mno;
			ps=conn.prepareStatement(sql);
	        ResultSet rs=ps.executeQuery();
	        rs.next();
	        //���� ä���
	        l1.setDate(rs.getString(1));
        	l1.setPubl(rs.getString(2));
        	l1.setArea1(rs.getString(3));
        	l1.setArea2(rs.getString(4));
        	l1.setName(rs.getString(5));
        	l1.setAddr(rs.getString(6));
        	l1.setWkdtime(rs.getString(7));
        	l1.setSattime(rs.getString(8));
        	l1.setHoltime(rs.getString(9));
        	l1.setTel(rs.getString(10));
        	rs.close();
		}catch(Exception ex) {
            System.out.println(ex.getMessage());
        }
        finally {
            disConnection();
		}return l1;
	}
}

