<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
이페이지는 btnlist.jsp가 생성한 것입니다.
  <%
  String code = request.getParameter("code");
  String viewPageURI = null;
  
  if(code.equals("A")){
      viewPageURI="a.jsp";
  }else if(code.equals("B")){
      viewPageURI="b.jsp";
  } 
  %>
  <jsp:forward page="<%=viewPageURI %>"/>
</body>
</html>