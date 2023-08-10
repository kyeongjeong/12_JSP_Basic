package _07_servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/abc")
public class ServletEx02 extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//서블렛에서 뷰로 데이터를 전송할 경우 request.setAttribute("속성명", 값); 메서드를 통하여서 전송
		request.setAttribute("data1", "글자데이터");
		request.setAttribute("data2", 3);
		request.setAttribute("data3", 3.25);
		request.setAttribute("data4", true);
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter07_servlet/servletEx02.jsp");
		dis.forward(request, response);
	}
}
