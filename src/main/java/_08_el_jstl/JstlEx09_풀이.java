package _08_el_jstl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JstlEx09_풀이")
public class JstlEx09_풀이 extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setAttribute("isChecked", true);
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter08_el_jstl/jstlEx09_풀이.jsp");
		dis.forward(request, response);
	}
}
