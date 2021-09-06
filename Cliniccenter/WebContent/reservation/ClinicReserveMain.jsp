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
 
        <!-- 데이터베이스에 연결하여 최신순 자동차 3대만 뿌려주는 데이터를 가져옴 -->
 
        <%
        clinicDAO rdao = new clinicDAO();
            //벡터를 이용하여 자동차데이터를 저장함
            Vector<ClinicListBean> v = rdao.getSelectClinic();
        %>
        <table>
            <tr>
                <!-- 벡터에 저장된 이미지를 하나씩 출력해야하기 때문에 for문을 돌리고, 그 값들을 빈클래스 변수에 넣어준다. -->
                <%
                    for (int i = 1; i < v.size(); i++) {
                        ClinicListBean bean = v.get(i);
                %>
        <td align="center">
        <p>
                        위치 :
                        <%=bean.getRegi()%>
                </td>
         		<%
                    }
                %>
        </table>
         <form action="ClinicCategoryList.jsp" method="post">
            <font size="3" color="gray"> <b>진료소 검색 하기</b>
            </font>&nbsp;&nbsp; <select name="regi">
                <option value="1">서울</option>
                <option value="2">경기</option>
                <option value="3">인천</option>
            </select>&nbsp;&nbsp; <input type="submit" value="검색"> 
          </form>
        
</body>
</html>