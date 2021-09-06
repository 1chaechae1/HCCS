<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*"%>
  <%!// ���� ����
   Connection conn = null;
   Statement stmt = null;
   ResultSet rs = null;
   String uid = "com";
   String pwd = "1234";
   String url = "jdbc:oracle:thin:@localhost:1521:orcl";
   String sql = "select * from TSCLIST";
   %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%   
      try {
      // �����ͺ��̽��� �����ϱ� ���� ����̹� SW �ε�
      Class.forName("oracle.jdbc.driver.OracleDriver");
      // �����ͺ��̽��� �����ϴ� �۾� ����
      conn = DriverManager.getConnection(url, uid, pwd);
      // ������ ���� ��ü ����
      stmt = conn.createStatement();
      // ���� ����
      rs = stmt.executeQuery(sql);
 %>
     <table border=1 width=100%>
      <thead>
      <tr>
      	<th>��</th>
        <th>�ñ���</th>
        <th>��ġ��</th>
        <th>��ġ���</th>
        <th>���θ� �ּ�</th>
        <th>���� �ּ�</th>
        <th>���� ��ð�</th>
        <th>����� ��ð�</th>
        <th>�Ͽ��� ��ð�</th>
        <th>������ ��ð�</th>
        <th>��ȭ��ȣ</th>
      </tr>
      </thead>
   
   <%
      while (rs.next()) {
   %>
	<tr>
    <td><%=	rs.getString("region") %></td>
    <td><%=	rs.getString("city") %></td>
    <td><%=	rs.getString("area") %></td>
    <td><%= rs.getString("location") %></td>
    <td><%= rs.getString("raddr") %></td>
    <td><%= rs.getString("naddr") %></td>
    <td><%= rs.getString("wktime")%></td>
    <td><%=	rs.getString("satime")%></td>
    <td><%= rs.getString("sutime") %></td>
    <td><%= rs.getString("hotime") %></td>
    <td><%= rs.getString("etc") %></td>
    </tr> 
    <%
      }
      }catch(Exception e) {
    	  e.printStackTrace();
      }finally{
    	  try{
    		  if(rs != null) rs.close();
    		  if(stmt != null) stmt.close();
    		  if(conn != null) conn.close();
    	  }catch(Exception e) {
    		  e.printStackTrace();
    	  }
      }
   %>

</table>  
</body>
</html>