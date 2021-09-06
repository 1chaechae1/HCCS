<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.sql.*"%>
    
    <%!// 변수 선언
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String uid = "com";
	String pwd = "1234";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String sql = "select * from TEST1";%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
		try {
		// 데이터베이스를 접속하기 위한 드라이버 SW 로드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// 데이터베이스에 연결하는 작업 수행
		conn = DriverManager.getConnection(url, uid, pwd);
		// 쿼리를 생성 객체 생성
		stmt = conn.createStatement();
		// 쿼리 생성
		rs = stmt.executeQuery(sql);
	%>
	<table border=1 width=100%>
		<thead>
		<tr>
			<th>기준일</th>
	   	 	<th>검체채취 가능여부</th>
	    	<th>시도</th>
	    	<th>시군구</th>
	    	<th>의료기관명</th>
	    	<th>주소</th>
	    	<th>평일 운영시간</th>
	    	<th>토요일 운영시간</th>
	    	<th>일요일/공휴일 운영시간</th>
	   	 	<th>전화번호</th>
		</tr>
		</thead>
	
	<%
		while (rs.next()) {
	%>
        <tr>
            <td><%= rs.getString("기준일") %></td>
            <td><%= rs.getString("PUBL") %></td>
            <td><%= rs.getString("AREA1") %></td>
            <td><%= rs.getString("AREA2") %></td>
            <td><%= rs.getString("NAME") %></td>
            <td><%= rs.getString("ADDR") %></td>
            <td><%= rs.getString("평일_운영시간") %></td>
            <td><%= rs.getString("토요일_운영시간") %></td>
            <td><%= rs.getString("일요일공휴일_운영시간") %></td>
            <td><%= rs.getString("TEL") %></td>
        </tr>
    <%
		}
		} catch (Exception e) {
		e.printStackTrace();
		} finally {
		try {
		if (rs != null) {
			rs.close();
		}
		if (stmt != null) {
			stmt.close();
		}
		if (conn != null) {
			conn.close();
		}
		} catch (Exception e) {
		e.printStackTrace();
		}
		}
	%>

</table>
</body>
</html>