<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
    <% 
    // DB�� �ִ� ������ html������ ���
    // DB ����
    Class.forName("com.mysql.jdbc.Driver");
	String addr = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id = "com";
	String pw = "1234";
	Connection conn = DriverManager.getConnection(addr, id, pw);
	
	// ���� ����
    String sql = null;
    request.setCharacterEncoding("EUC-KR");    // �ѱ� �˻� ó��
    String cla = request.getParameter("cla");    // ������ �÷�(�ɼǰ�:null,0,1,2)
    String search = request.getParameter("searchKeyword");    // �˻� �ܾ�
   
    // �˻� ������ ���� ������ sql ���� -> ���ǹ�
    if (cla == null)    // �˻� �ܾ ���� ��
        cla = "0";
    if (search == null)
        search = "";

    if (cla.equals("0"))
        sql = "select * from test1 order by no desc";
    else if(cla.equals("1"))    // �̸����� �˻��� ��
        sql = "select * from test1 where region like '%" + search +"%' order by no desc";
    else if(cla.equals("2"))    // �ּ����� �˻��� ��
        sql = "select * from test1 where city like '%" + search + "%' order by no desc";
    else if(cla.equals("3"))    // ��ȭ��ȣ���� �˻��� ��
        sql = "select * from test1 where area like '%" + search + "%' order by no desc";
    else if(cla.equals("4"))    // ��ȭ��ȣ���� �˻��� ��
        sql = "select * from test1 where location like '%" + search + "%' order by no desc";
    else if(cla.equals("5"))    // ��ȭ��ȣ���� �˻��� ��
        sql = "select * from test1 where raddr like '%" + search + "%' order by no desc";
    else if(cla.equals("6"))    // ��ȭ��ȣ���� �˻��� ��
        sql = "select * from test1 where naddr like '%" + search + "%' order by no desc";
    else if(cla.equals("7"))    // ��ȭ��ȣ���� �˻��� ��
        sql = "select * from test1 where wktime like '%" + search + "%' order by no desc";
    else if(cla.equals("8"))    // ��ȭ��ȣ���� �˻��� ��
        sql = "select * from test1 where satime like '%" + search + "%' order by no desc";
    else if(cla.equals("9"))    // ��ȭ��ȣ���� �˻��� ��
        sql = "select * from test1 where sutime like '%" + search + "%' order by no desc";
    else if(cla.equals("10"))    // ��ȭ��ȣ���� �˻��� ��
        sql = "select * from test1 where hotime like '%" + search + "%' order by no desc";
    else if(cla.equals("11"))    // ��ȭ��ȣ���� �˻��� ��
        sql = "select * from test1 where cliname like '%" + search + "%' order by no desc";
    else if(cla.equals("12"))    // ��ȭ��ȣ���� �˻��� ��
        sql = "select * from test1 where etc like '%" + search + "%' order by no desc";
        // %�ܾ�% : �ܾ ��� ���� ���x
    
       	// ���� ����
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery(sql);
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>

     // select�� ������ �� ǥ���ϱ�

    function load_init() {

        var tt = <%=cla%>;    // ���õ� option�� ������ ����

        document.frm.cla.selectedIndex = tt;

//        document.frm.cla.value = tt;

    }

</script>
</head>
<body>

</body>
</html>