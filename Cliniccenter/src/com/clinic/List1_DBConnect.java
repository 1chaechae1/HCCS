package com.clinic;

   import java.sql.Connection;
   import java.sql.DriverManager;
   import java.sql.PreparedStatement;
   import java.sql.ResultSet;
   import java.util.ArrayList;

public class List1_DBConnect {
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
   public ArrayList<List1DB> cliAllData() {
      ArrayList<List1DB> list = new ArrayList <List1DB>();
      try {
          // 오라클 연결
            getConnection();
            // SQL 문장 전송
            String sqlList="SELECT DISTINCT REGION, CITY, AREA, LOCATION, RADDR, NADDR, WKTIME, SATIME, SUTIME, HOTIME, CLINAME, ETC"
                    + "FROM TSCLIST ORDER BY REGION ASC";
            ps=conn.prepareStatement(sqlList); //executeQuery()
            // 결과값 받기
            ResultSet rs=ps.executeQuery();
            while(rs.next()) {
               List1DB l1= new List1DB();
               l1.setRegion(rs.getString(1));
               l1.setCity(rs.getString(2));
               l1.setArea(rs.getString(3));
               l1.setLocation(rs.getString(4));
               l1.setRaddr(rs.getString(5));
               l1.setNaddr(rs.getString(6));
               l1.setWktime(rs.getString(7));
               l1.setSatime(rs.getString(8));
               l1.setSutime(rs.getString(9));
               l1.setHotime(rs.getString(10));
               l1.setCliname(rs.getString(11));
               l1.setEtc(rs.getString(12));
               
               list.add(l1);
            }
               rs.close();
               
            } catch(Exception ex) {
               System.out.println(ex.getMessage());
            } finally {
               disConnection();
            } return list;
      }
   public List1DB cliAllData(int mno) {
      List1DB l1 = new List1DB();
      try {
         getConnection();
         String sqlList="SELECT REGION, CITY, AREA, LOCATION, RADDR, NADDR, WKTIME, SATIME, SUTIME, HOTIME, CLINAME, ETC FROM TSCLIST WHERE mno="+mno;
         ps=conn.prepareStatement(sqlList);
           ResultSet rs=ps.executeQuery();
           rs.next();
           //값을 채운다
           l1.setRegion(rs.getString(1));
           l1.setCity(rs.getString(2));
           l1.setArea(rs.getString(3));
           l1.setLocation(rs.getString(4));
           l1.setRaddr(rs.getString(5));
           l1.setNaddr(rs.getString(6));
           l1.setWktime(rs.getString(7));
           l1.setSatime(rs.getString(8));
           l1.setSutime(rs.getString(9));
           l1.setHotime(rs.getString(10));
           l1.setCliname(rs.getString(11));
           l1.setEtc(rs.getString(12));
           rs.close();
      }catch(Exception ex) {
            System.out.println(ex.getMessage());
        }
        finally {
            disConnection();
      }return l1;
   }
}