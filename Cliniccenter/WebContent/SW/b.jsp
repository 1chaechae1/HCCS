<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
���������� <b><font size="5">B_�ӽü��������</font></b>�Դϴ�.

<center>
	<form action="<%=request.getContextPath() %>/test/viewlist_tsc.jsp" method="POST">
		<select name="sk">
			<option value="region">����</option>
			<option value="city">�ñ���</option>
			<option value="area">��ġ��</option>
		</select>
		<input type="text" name="sv">
		<input type="submit" value="�˻�">
	</form>
</center>
</body>
</html>