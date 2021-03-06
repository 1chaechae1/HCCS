<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class = "content_view">
	<!-- 본문 영역 -->
		<div class="content">
		<div class = "content_header">
			<h2 class = "tit_1">가까운 진료소 찾기</h2>
		</div>
		
	<form id="" method="GET" action="SCenter2list.jsp">
	<div class="sevice_part">
		<h3 class = "tit_2">진료소 조회</h3>
		<div class = "search_service">
		<dl class = "form_elem">
			<dt class = "label"><label for="small_tit">모두 선택</label></dt>
			<dd>
				<input type="checkbox" name="itemcode_all" id="Clinic_search_itemcode_all" value="All">
					<label for = "Clinic_search_itemcode_all">모두선택</label>
			</dd>
		</dl>
		<dl class = "form_elem">
			<dt class = "label"><label for="small_tit">진료소종류 선택</label></dt>
			<dd>
				<input type="checkbox" name="itemcode_SC" id="Clinic_kind" value="K1">
					<label for = "Clinic_kind_K1">선별진료소</label>
				<input type="checkbox" name="itemcode_SC" id="Clinic_kind" value="K2">
					<label for = "Clinic_kind_K2">임시선별진료소</label>
			</dd>
		</dl>
		<dl class = "form_elem">
			<dt class = "label"><label for = "small_tit">운영정보 선택</label></dt>
			<dd>
				<input type = "checkbox" name="itemcode" id="Clinic_search_itemcode_C1" value="C1">
					<label for="Clinic_search_itemcode_C1">평일</label>
				<input type = "checkbox" name="itemcode" id="Clinic_search_itemcode_C2" value="C2">
					<label for="Clinic_search_itemcode_C2">주말</label>
				<input type = "checkbox" name="itemcode" id="Clinic_search_itemcode_C3" value="C3">
					<label for="Clinic_search_itemcode_C3">주말</label>
				<input type = "checkbox" name="itemcode" id="Clinic_search_itemcode_C4" value="C4">
					<label for="Clinic_search_itemcode_C4">공휴일</label>
			</dd>
		</dl>
		<dl class = "form_elem">
			<dt class = "label"><label for = "searchKeyword">진료소명</label></dt>
			<dd  class = "input_1">
				<input type = "text" class = "searchKeywoed" id = "searchKeyword" name = "searchKeyword" value="" title = "진료소명">
			</dd>
		</dl>
	</div>
	
	<div  class = "btn_sec search_service_btn">
		<input type = "submit" class = "btn grey btn_blue" id = "btnSearch" value="검색">
		<input type = "reset" class = "btn white_small btn_gray" id = "btnReset" value="초기화">
	</div>
	
	</div>
	</form>
	
	
	</div>
	
	
	
	
	
	
	
	</div>
</body>
</html>