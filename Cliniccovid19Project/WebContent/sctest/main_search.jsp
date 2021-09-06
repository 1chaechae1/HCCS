<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

</head>
<body>
<div>
	<div class="tab_wrap">
		<ul class="tab">
			<li class="tab_list on">
				<a href ="<%=request.getContextPath()%>/sctest/Search_Center_sc.jsp" class="tab_link">
					선별진료소
				</a>
			</li>
	
			<li class="tab_list">
				<a href="<%=request.getContextPath()%>/sctest/Search_Center_tsc.jsp" class="tab_link">
					임시선별진료소
				</a>
			</li>
		</ul>
	</div>
	
</div>       

</body>
</html>