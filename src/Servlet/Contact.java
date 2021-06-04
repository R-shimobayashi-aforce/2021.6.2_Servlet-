package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet(urlPatterns = { "/Servlet/Contact" })
public class Contact extends HttpServlet {

	public void doPost(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out =response.getWriter();
		
		request.setCharacterEncoding("UTF-8");
		String name=request.getParameter("name");
		String company=request.getParameter("company");
		String email=request.getParameter("email");
		String text=request.getParameter("text");
		String mailmagazine=request.getParameter("mailmagazine");
		String doqumentrequest=request.getParameter("doqumentrequest");
		
		request.setAttribute("name", name);
		request.setAttribute("company", company);
		request.setAttribute("email", email);
		request.setAttribute("text", text);
		request.setAttribute("mailmagazine", mailmagazine);
		request.setAttribute("doqumentrequest", doqumentrequest);
		
		request.getRequestDispatcher("../jsp/result.jsp").forward(request, response);
		
		

	
		

		
	}
}
