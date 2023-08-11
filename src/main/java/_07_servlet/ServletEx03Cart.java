package _07_servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servletEx03Cart")
public class ServletEx03Cart extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setAttribute("pageTitle", "카트리스트");
		request.setAttribute("name", "익명2");
		request.setAttribute("contact", "010-9876-5432");
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter07_servlet/servletEx03Cart.jsp");
		dis.forward(request, response);
	}


}
