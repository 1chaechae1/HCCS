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
	<center>
 
        <!-- �����ͺ��̽��� �����Ͽ� �ֽż� �ڵ��� 3�븸 �ѷ��ִ� �����͸� ������ -->
 
        <%
        clinicDAO rdao = new clinicDAO();
            //���͸� �̿��Ͽ� �ڵ��������͸� ������
            Vector<ClinicListBean> v = rdao.getSelectClinic();
        %>
        <table>
            <tr>
                <!-- ���Ϳ� ����� �̹����� �ϳ��� ����ؾ��ϱ� ������ for���� ������, �� ������ ��Ŭ���� ������ �־��ش�. -->
                <%
                    for (int i = 1; i < v.size(); i++) {
                        ClinicListBean bean = v.get(i);
                %>
        <td align="center">
        <p>
                        ��ġ :
                        <%=bean.getRegi()%>
                </td>
         		<%
                    }
                %>
        </table>
         <form action="ClinicCategoryList.jsp" method="post">
            <font size="3" color="gray"> <b>����� �˻� �ϱ�</b>
            </font>&nbsp;&nbsp; <select name="regi">
                <option value="1">����</option>
                <option value="2">���</option>
                <option value="3">��õ</option>
            </select>&nbsp;&nbsp; <input type="submit" value="�˻�"> 
          </form>
        
</body>
</html>