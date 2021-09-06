<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

이페이지는 <b><font size="5">A_선별진료소</font></b>입니다.

<center>
	<form action="<%=request.getContextPath() %>/test/viewlist_sc.jsp" method="POST">
		<select name="sk">
			<option value="region">시도명</option>
			<option value="city">시군구명</option>
			<option value="clname">의료기관명</option>
		</select>
		<input type="text" name="sv">
		<input type="submit" value="검색">	
	
		</form>
</center>
</body>
</html>