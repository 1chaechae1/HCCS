<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
    <% 
    // DB에 있는 내용을 html문서에 출력
    // DB 연결
    Class.forName("com.mysql.jdbc.Driver");
	String addr = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id = "com";
	String pw = "1234";
	Connection conn = DriverManager.getConnection(addr, id, pw);
	
	// 쿼리 생성
    String sql = null;
    request.setCharacterEncoding("EUC-KR");    // 한글 검색 처리
    String cla = request.getParameter("cla");    // 선택한 컬럼(옵션값:null,0,1,2)
    String search = request.getParameter("searchKeyword");    // 검색 단어
   
    // 검색 유무에 따라 실행할 sql 변경 -> 조건문
    if (cla == null)    // 검색 단어가 없을 때
        cla = "0";
    if (search == null)
        search = "";

    if (cla.equals("0"))
        sql = "select * from test1 order by no desc";
    else if(cla.equals("1"))    // 이름으로 검색할 때
        sql = "select * from test1 where region like '%" + search +"%' order by no desc";
    else if(cla.equals("2"))    // 주소으로 검색할 때
        sql = "select * from test1 where city like '%" + search + "%' order by no desc";
    else if(cla.equals("3"))    // 전화번호으로 검색할 때
        sql = "select * from test1 where area like '%" + search + "%' order by no desc";
    else if(cla.equals("4"))    // 전화번호으로 검색할 때
        sql = "select * from test1 where location like '%" + search + "%' order by no desc";
    else if(cla.equals("5"))    // 전화번호으로 검색할 때
        sql = "select * from test1 where raddr like '%" + search + "%' order by no desc";
    else if(cla.equals("6"))    // 전화번호으로 검색할 때
        sql = "select * from test1 where naddr like '%" + search + "%' order by no desc";
    else if(cla.equals("7"))    // 전화번호으로 검색할 때
        sql = "select * from test1 where wktime like '%" + search + "%' order by no desc";
    else if(cla.equals("8"))    // 전화번호으로 검색할 때
        sql = "select * from test1 where satime like '%" + search + "%' order by no desc";
    else if(cla.equals("9"))    // 전화번호으로 검색할 때
        sql = "select * from test1 where sutime like '%" + search + "%' order by no desc";
    else if(cla.equals("10"))    // 전화번호으로 검색할 때
        sql = "select * from test1 where hotime like '%" + search + "%' order by no desc";
    else if(cla.equals("11"))    // 전화번호으로 검색할 때
        sql = "select * from test1 where cliname like '%" + search + "%' order by no desc";
    else if(cla.equals("12"))    // 전화번호으로 검색할 때
        sql = "select * from test1 where etc like '%" + search + "%' order by no desc";
        // %단어% : 단어가 어디에 들어가든 상관x
    
       	// 쿼리 실행
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery(sql);
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>

     // select에 선택한 값 표시하기

    function load_init() {

        var tt = <%=cla%>;    // 선택된 option값 변수로 선언

        document.frm.cla.selectedIndex = tt;

//        document.frm.cla.value = tt;

    }

</script>
</head>
<body>

</body>
</html>