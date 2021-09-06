<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="com.clinic.reservation.ClinicListBean"%>
<%@page import="java.util.Vector"%>
<%@page import="com.clinic.reservation.clinicDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String regi = request.getParameter("regi");
	 System.out.println("regi");
	 
	 clinicDAO rdao = new clinicDAO();
     Vector<ClinicListBean> v = rdao.getCategoryClinic(regi);
     
     int j = 0;
     for (int i = 0; i < v.size(); i++) {
    	 ClinicListBean bean = v.get(i);
    	 if(j % 10 == 0) {
     %>	 
      <tr>
      <%
    	 }
	%>
	<td>
	<p>
	위치 : <%=bean.getRegi()%>
    </td>
	<%
	j=j+1;
     }
	%>
</body>
</html>