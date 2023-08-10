package _08_el_jstl;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JstlEx07
 */
@WebServlet("/JstlEx07")
public class JstlEx07 extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Random ran = new Random();
		int temp = ran.nextInt(3);
		
		String value = "";
		if(temp == 0) value = "바위";
		else if(temp == 1) value = "가위";
		else value = "보";
		
		request.setAttribute("me", value);
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter08_el_jstl/jstlEx07_풀이.jsp"); 
		dis.forward(request, response);
	}
}
