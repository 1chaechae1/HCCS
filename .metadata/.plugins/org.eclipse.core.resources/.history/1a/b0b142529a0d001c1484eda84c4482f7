package com.clinic.reservation;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Date;
import javax.naming.NamingException;

public class ReserveDAO {
private static ReserveDAO instance;
    
    // 싱글톤 패턴
    private ReserveDAO(){}
    public static ReserveDAO getInstance(){
        if(instance==null)
            instance=new ReserveDAO();
        return instance;
    }
    
    // String -> Date로 변경하는 메서드
    // 문자열로된 생년월일을 Date로 변경하기 위해 필요
    // java.util.Date클래스로는 오라클의 Date형식과 연동할 수 없다.
    // Oracle의 date형식과 연동되는 java의 Date는 java.sql.Date 클래스이다.
    public Date stringToDate(ReserveBean rv)
    {
        String year = rv.getClinicdateyy();
        String month = rv.getClinicdatemm();
        String day = rv.getClinicdatedd();
        
        Date clinicday = Date.valueOf(year+"-"+month+"-"+day);
        
        return clinicday;
        
    } // end stringToDate()
    
    // 회원정보를 JSP_MEMBER 테이블에 저장하는 메서드
    public void insertReserve(ReserveBean rv) throws SQLException
    {
        Connection conn = null;
        PreparedStatement pstmt = null;
        
        try {
        	conn = DBconnection.getConnection();
            
            // 자동 커밋을 false로 한다.
            conn.setAutoCommit(false);
            StringBuffer sql = new StringBuffer();
            sql.append("insert into reserve_member values");
            sql.append("(?, ?, ?, ?, ?, ?, sysdate)");        
            stringToDate(rv);
            /* 
             * StringBuffer에 담긴 값을 얻으려면 toString()메서드를
             * 이용해야 한다.
             */
            pstmt = conn.prepareStatement(sql.toString());
            pstmt.setString(1, rv.getRegionnname()+rv.getCityyname());
            pstmt.setDate(2, stringToDate(rv));
            pstmt.setString(3, rv.getName());
            pstmt.setString(4, rv.getCliniccname());
            pstmt.setString(5, rv.getSymptom());
            pstmt.setString(6, rv.getPhone());
         // 쿼리 실행
            pstmt.executeUpdate();
            // 완료시 커밋
            conn.commit(); 
            
        } catch (ClassNotFoundException | NamingException | SQLException sqle) {
            // 오류시 롤백
            conn.rollback(); 
            
            throw new RuntimeException(sqle.getMessage());
        } finally {
            // Connection, PreparedStatement를 닫는다.
            try{
                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
                if ( conn != null ){ conn.close(); conn=null;    }
            }catch(Exception e){
                throw new RuntimeException(e.getMessage());
            }
        } // end try~catch 
    } // end insertReserve()
}
