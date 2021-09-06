<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<span><a href ="<%=request.getContextPath() %>/sctest/Search_Center_sc.jsp">선별진료소</a></span>
<h2>임시선별진료소 목록</h2>
<table width="100%" border="1">
  <tr align="center">
  <td>시도</td>
  <td>시군구</td>
  <td>설치장소</td>
  <td>주소</td>
  <td>평일 운영시간</td>
  <td>토요일 운영시간</td>
  <td>일요일 운영시간</td>
  <td>공휴일 운영시간</td>
  <td>비고</td>
  </tr>
  <%
  request.setCharacterEncoding("EUC-KR");
  Connection conn=null;
  PreparedStatement pstmt = null;
  ResultSet rs = null;
  
  Class.forName("oracle.jdbc.driver.OracleDriver");
  String sk = request.getParameter("sk");
  String sv = request.getParameter("sv");
  
  
  try {
	  	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String uid = "com";
		String pwd = "1234";
		conn = DriverManager.getConnection(url, uid, pwd);
		if(sk==null & sv==null){
			
			pstmt = conn.prepareStatement("select * from TSCLIST");
		}else if(sk.equals("total") & sv==null){
			
			pstmt = conn.prepareStatement("select * from TSCLIST");
		}else if(sk != null & sv.equals("")){
			
			pstmt = conn.prepareStatement("select * from TSCLIST");
		}else if(sk != null & sv != null){
			
			if(sk.equals("region")){
				pstmt = conn.prepareStatement("select * from TSCLIST where region=?");
			}else if(sk.equals("city")){
				pstmt = conn.prepareStatement("select * from TSCLIST where city=?");
			}
			pstmt.setString(1, sv); 
		}
		
		rs=pstmt.executeQuery();
		
		while(rs.next()){
	%>	
		<tr>
		<td><%=rs.getString("region") %></td>
		<td><%=rs.getString("city") %></td>
		<td><%=rs.getString("location") %></td>
		<td><%=rs.getString("raddr") %></td>
		<td><%=rs.getString("wktime") %></td>
		<td><%=rs.getString("satime") %></td>
		<td><%=rs.getString("sutime") %></td>
		<td><%=rs.getString("hotime") %></td> 
		<td><%=rs.getString("etc") %></td>
		</tr>
	<%
		}
  }catch(SQLException e) {
	  out.println(e.getMessage());
	  e.printStackTrace();
  }finally{
	  if(rs != null) try {rs.close(); } catch(SQLException e){}
	  if(pstmt != null) try {pstmt.close(); } catch(SQLException e){}
	  if(conn != null) try {conn.close(); } catch(SQLException e){}
  }
  %>
</table>

</body>
</html>