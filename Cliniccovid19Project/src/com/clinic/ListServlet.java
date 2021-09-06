package com.clinic;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ListServlet
 */
@WebServlet(name = "ListServlet1", description = "리스트창1", urlPatterns = { "/ListServlet1" })
public class ListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		/*response.setContentType("text/html; charset=euc-kr");
		String name=request.getParameter("search");
		PrintWriter out=response.getWriter();
		List1_DBConnect ld= new List1_DBConnect();
		 ArrayList<List1DB> list=ld.cliAllData();
	       out.println("<html>");
	       out.println("<head><title></title></head>");
	       out.println("<body>");
	       out.println("<table border='1'width='100%' align='center'>");
	       out.println("<tr>");
	       out.println("<th>기준일</th>");
	       out.println("<th>검체채취 가능여부</th>");
	       out.println("<th>시도</th>");
	       out.println("<th>시군구</th>");
	       out.println("<th>의료기관명</th>");
	       out.println("<th>주소</th>");
	       out.println("<th>평일 운영시간</th>");
	       out.println("<th>토요일 운영시간</th>");
	       out.println("<th>일요일/공휴일 운영시간</th>");
	       out.println("<th>전화번호</th>");
	       out.println("</tr>");
	       
	       for(List1DB l1:list)
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
	       out.println("</html>");*/


	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		response.setCharacterEncoding("UTF-8");
		
		String con = request.getParameter("con");
		request.setAttribute("con", con);
		
		ServletContext context = getServletContext();
		RequestDispatcher dispatcher = context.getRequestDispatcher("/test.jsp");
		dispatcher.forward(request, response);
		
		
	}

}
