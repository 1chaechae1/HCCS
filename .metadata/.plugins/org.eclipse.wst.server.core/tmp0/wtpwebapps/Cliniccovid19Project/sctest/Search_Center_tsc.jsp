<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%
  request.setCharacterEncoding("EUC-KR");
  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<center>
<h2>임시선별진료소 찾기</h2>
<hr>
	<form action="<%=request.getContextPath() %>/sctest/viewlist_tsc.jsp" method="POST">
		<select name="sk">
			<option value="total">전체</option>
			<option value="region">시도명</option>
			<option value="city">시군구명</option>
		</select>
		<input type="text" name="sv">
		<input type="submit" value="검색">
	</form>
</center>

</body>
</html>