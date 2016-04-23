package com.p1.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.p1.dao.LoginDao;

public class LoginServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		
		String n=request.getParameter("username");  
		String p=request.getParameter("userpass"); 
		
		HttpSession session = request.getSession(false);
		if(session!=null)
		session.setAttribute("name", n);

		if(LoginDao.validate(n, p)){  
			RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");  
			rd.forward(request,response);  
		}  
		else{                      
			out.print("<div class=\"alert alert-warning alert-dismissible\" role=\"alert\" style=\"position: absolute;top: 30%;left: 35%;\n" +" font-size: x-large;\n" +"}\">\n" +
"  <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>\n" +
"  <strong>Atenção!</strong> Senha ou Usuário Inválido!\n" +
"</div>");  
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
			rd.include(request,response);  
		}  

		out.close();  
	}  
}  