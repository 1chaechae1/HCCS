<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.clinic.reservation.ReserveBean" %>
<%@ page import="com.clinic.reservation.ReserveDAO" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
        // 한글 깨짐을 방지하기 위한 인코딩 처리
        request.setCharacterEncoding("euc-kr"); 
		//요청정보로부터 넘어온 데이터 추출(파라미터값)
		String[] regionnname = request.getParameterValues("regionnname");
		String cityyname = request.getParameter("cityyname");
		String[] clinicdateyy = request.getParameterValues("clinicdateyy");
		String[] clinicdatemm = request.getParameterValues("clinicdatemm");
		String[] clinicdatedd = request.getParameterValues("clinicdatedd");
		String cliniccname = request.getParameter("cliniccname");
		String[] symptom = request.getParameterValues("symptom");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
%>
    
    
<div id="wrap">
      <div id="contbody" class="clearfix">
        <div id="contentcore" class="contentcore">
          <h2 class="gnb6">진료소 예약확인</h2>
          <hr>
           <table>
                <tr>
                    <td id="title">지역</td>
                    <td>
                    <%
                    // 배열로 넘겨받은 값을 처리하기 위해 for문 이용
                    for(String rg : regionnname){
                        out.println(rg);
                    }        
               		 %>
                    <%=cityyname %>  
                    </td>
                </tr>
                <tr>
                    <td id="title">진료날짜</td>
                    <td>
                   <%
                    // 배열로 넘겨받은 값을 처리하기 위해 for문 이용
                    for(String yy : clinicdateyy){
                        out.println(yy);
                    }        
                %>년
                     <%
                    // 배열로 넘겨받은 값을 처리하기 위해 for문 이용
                    for(String mm : clinicdatemm){
                        out.println(mm);
                    }        
                %>월
                    <%
                    // 배열로 넘겨받은 값을 처리하기 위해 for문 이용
                    for(String dd : clinicdatedd){
                        out.println(dd);
                    }        
                %>일
                    </td>
               	</tr>
               	<tr>
                    <td id="title">진료소명</td>
                    <td>
                       <%=cliniccname %>
                    </td>
                </tr>
                 <tr>
                    <td id="title">증상 유무</td>
                    <td>
                    <%
                    // 배열로 넘겨받은 값을 처리하기 위해 for문 이용
                    for(String st : symptom){
                        out.println(st);
                    }        
               		 %>
                 
                    </td>
                </tr>
                <tr>
                    <td id="title">성함</td>
                    <td>
                        <%=name %>
                    </td>
                </tr>
                
                <tr>
                    <td id="title">연락처</td>
                    <td>
                        <%=phone %>
                    </td>
                </tr>
			</table>
            
              <br>
              <input type="button" value="확인">

         
        </div>
      </div>
    </div>
</body>
</html>