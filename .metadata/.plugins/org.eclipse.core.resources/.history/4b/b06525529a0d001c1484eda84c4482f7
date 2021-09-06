<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
    
        // 필수 입력정보인 지역, 진료날짜가 입력되었는지 확인하는 함수
        function checkValue()
        {
            if(!document.reserveInfo.regionnname.value | !document.reserveInfo.cityyname.value){
                alert("지역을 입력하세요.");
                return false;
            }
            
            if(!document.reserveInfo.clinicdateyy.value | !document.reserveInfo.clinicdatemm.value | !document.reserveInfo.clinicdatedd.value){
                alert("진료날짜를 입력하세요.");
                return false;
            }
            if(!document.reserveInfo.cliniccname.value){
                alert("진료소명을 입력하세요.");
                return false;
            }
            if(!document.reserveInfo.name.value){
                alert("성함을 입력하세요.");
                return false;
            }
            if(!document.reserveInfo.phone.value){
                alert("연락처를 입력하세요.");
                return false;
            }
            //요청 URL
            document.reserveInfo.action = "reservepro.jsp";
           
            //서버쪽에 보내기
            document.reserveInfo.submit();
        }
    </script>

    <div id="wrap">
      <div id="contbody" class="clearfix">
        <div id="contentcore" class="contentcore">
          <h2 class="gnb6">선별진료소 예약</h2>
          <hr>
          <form name="reserveInfo" method="POST" action="reservepro.jsp" onsubmit="return checkValue()">
           <table>
                <tr>
                    <td id="title">시도</td>
                    <td>
                        <select name="regionnname">
                            <option value="">전체</option>
                            <option value="서울특별시" >서울</option>
                            <option value="부산광역시" >부산</option>
                            <option value="대구광역시" >대구</option>
                            <option value="인천광역시" >인천</option>
                            <option value="광주광역시" >광주</option>
                            <option value="대전광역시" >대전</option>
                            <option value="울산광역시" >울산</option>
                            <option value="세종특별자치시" >세종</option>
                            <option value="경기도" >경기</option>
                            <option value="강원도" >강원</option>
                            <option value="충청남도" >충남</option>
                            <option value="충청북도" >충북</option>
                            <option value="전라남도" >전남</option>
                            <option value="전라북도" >전북</option>
                            <option value="경상남도" >경남</option>
                            <option value="경상북도" >경북</option>
                            <option value="제주특별자치도" >제주</option>
                        </select>
                    </td>
               
                    <td id="title">시군구</td>
                    <td>
                        <input type="text" name="cityyname" maxlength="30">

                    </td>
                </tr>
                <tr>
                    <td id="title">진료날짜</td>
                    <td>
                        <select name="clinicdateyy">
                            <option value="">년</option>
                            <option value="2021" >2021</option>
                            <option value="2022" >2022</option>
                        </select>
                        <select name="clinicdatemm">
                            <option value="">월</option>
                            <option value="01" >1</option>
                            <option value="02" >2</option>
                            <option value="03" >3</option>
                            <option value="04" >4</option>
                            <option value="05" >5</option>
                            <option value="06" >6</option>
                            <option value="07" >7</option>
                            <option value="08" >8</option>
                            <option value="09" >9</option>
                            <option value="10" >10</option>
                            <option value="11" >11</option>
                            <option value="12" >12</option>
                        </select>
                        <select name="clinicdatedd">
                            <option value="">일</option>
                            <option value="01" >1</option>
                            <option value="02" >2</option>
                            <option value="03" >3</option>
                            <option value="04" >4</option>
                            <option value="05" >5</option>
                            <option value="06" >6</option>
                            <option value="07" >7</option>
                            <option value="08" >8</option>
                            <option value="09" >9</option>
                            <option value="10" >10</option>
                            <option value="11" >11</option>
                            <option value="12" >12</option>
                            <option value="13" >13</option>
                            <option value="14" >14</option>
                            <option value="15" >15</option>
                            <option value="16" >16</option>
                            <option value="17" >17</option>
                            <option value="18" >18</option>
                            <option value="19" >19</option>
                            <option value="20" >20</option>
                            <option value="21" >21</option>
                            <option value="22" >22</option>
                            <option value="23" >23</option>
                            <option value="24" >24</option>
                            <option value="25" >25</option>
                            <option value="26" >26</option>
                            <option value="27" >27</option>
                            <option value="28" >28</option>
                            <option value="29" >29</option>
                            <option value="30" >30</option>
                            <option value="31" >31</option>
                        </select>
                    </td>
               	</tr>
               	<tr>
                    <td id="title">진료소명</td>
                    <td>
                        <input type="text" name="cliniccname" maxlength="50">
                    </td>
                </tr>
               
                <tr>
                    <td id="title">증상 유무</td>
                    <td>
                        <input type="radio" name="symptom" value="유" checked>유
                        <input type="radio" name="symptom" value="무" checked>무
                    </td>
                </tr>
               
                <tr>
                    <td id="title">성함</td>
                    <td>
                        <input type="text" name="name" maxlength="50">
                    </td>
                </tr>
                
                <tr>
                    <td id="title">연락처</td>
                    <td>
                        <input type="text" name="phone" placeholder="'-'없이 입력">
                    </td>
                </tr>
			</table>
            
              <br>
              <input type="submit" value="예약">  <input type="button" value="취소">

         
          </form>
        </div>
      </div>
    </div>

</body>
</html>