<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<center>
        <hr>
        <%@ include file="Search_Center_tsc.jsp"%>
        <p>
        <table border=0 cellpadding=5 cellspacing=1>
            <tr>
                <td><font size=-1><%@ include file="Search_Center_sc.jsp"%></font></td>
                <td width="30">&nbsp;</td>
                <td><font size=-1><%@ include file="Search_Center_tsc.jsp"%></font></td>
            </tr>
        </table>
    </center>
<h2>가까운 진료소 찾기</h2>
 <div>
 <ul>
 <li>
 <a href="Search_Center_sc.jsp">선별진료소</a>
 </li>
 <li>
 <a href="Search_Center_tsc.jsp">임시선별진료소</a>
 </li>
 </ul>
 
 
 </div>
 
</body>
</html>