package com.clinic;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SCListServlet
 */
@WebServlet("/SCListServlet")
public class SCListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SCListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html; charset=euc-kr");
		PrintWriter out=response.getWriter();
		SCList_DBConnect ld= new SCList_DBConnect();
		 ArrayList<SCListDB> list=ld.cliAllData();
	       out.println("<html>");
	       out.println("<head><title></title></head>");
	       out.println("<body>");
	       out.println("<table border='1'width='100%' align='center'>");
	       out.println("<tr>");
	       out.println("<th>������</th>");
	       out.println("<th>��üä�� ���ɿ���</th>");
	       out.println("<th>�õ�</th>");
	       out.println("<th>�ñ���</th>");
	       out.println("<th>�Ƿ�����</th>");
	       out.println("<th>�ּ�</th>");
	       out.println("<th>���� ��ð�</th>");
	       out.println("<th>����� ��ð�</th>");
	       out.println("<th>�Ͽ���/������ ��ð�</th>");
	       out.println("<th>��ȭ��ȣ</th>");
	       out.println("</tr>");
	       
	       for(SCListDB l1:list)
	       {
	    	   out.println("<tr>");
		       out.println("<td>"+l1.getDate()+"</td>");
		       out.println("<td>"+l1.getPubl()+"</td>");
		       out.println("<td>"+l1.getArea1()+"</td>");
		       out.println("<td>"+l1.getArea2()+"</td>");
		       out.println("<td>"+l1.getName()+"</td>");
		       out.println("<td>"+l1.getAddr()+"</td>");
		       out.println("<td>"+l1.getWkdtime()+"</td>");
		       out.println("<td>"+l1.getSattime()+"</td>");
		       out.println("<td>"+l1.getHoltime()+"</td>");
		       out.println("<td>"+l1.getTel()+"</td>");
		       out.println("</tr>");
	       }
	       out.println("</table>"); 
	       out.println("</body>");
	       out.println("</html>");


	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
