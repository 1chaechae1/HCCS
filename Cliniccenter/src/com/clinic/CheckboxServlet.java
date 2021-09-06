package com.clinic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CheckboxServlet
 */
@WebServlet(description = "여러개 항목 선택할 수 있도록 하는 입력 방식", urlPatterns = { "/CheckboxServlet" })
public class CheckboxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckboxServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html;charset=UTF-8");
		// 입력한 데이터 수신
		// 여러개의 값을 수신할 때 getParameterValues()를 이용
		String itemcodea[] = request.getParameterValues("itemcode_all");
		String itemcodecs[] = request.getParameterValues("itemcode_SC");
		String itemcodes[] = request.getParameterValues("itemcode");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html><head></head><body>");
		if(itemcodea == null) {
			out.println("선택한 항목이 없습니다.");
		}
		else if(itemcodecs == null) {
			out.println("선택한 항목이 없습니다.");
		}
		else if(itemcodes == null) {
			out.println("선택한 항목이 없습니다.");
		}
		else {
			out.println("당신이 선택한 항목입니다.<br>");
			for(String itemcode: itemcodes) {
				out.println("[" + itemcode + "] ");
			}
		}
		out.println("<br><a href=''>다시</a>");
		out.println("</body></html>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
