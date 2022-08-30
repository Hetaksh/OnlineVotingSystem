package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao1.LoginDao;



@WebServlet("/OnlineLogin")
public class OnlineLogin extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
     
	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	
	{
    	String name=request.getParameter("name");
    	String password=request.getParameter("pass");
//    	PrintWriter pw = response.getWriter();
//    	pw.print(name);
//    	pw.print(pass);
    	
    	LoginDao dao = new LoginDao();
    	
    	if(dao.check(name, password))
    	{
    		HttpSession session = request.getSession();
    		session.setAttribute("name", name);
    		session.setAttribute("pass", password);
    		response.sendRedirect("login.jsp");
    	}
    	else
    	{
    		response.sendRedirect("error.jsp");
    	}
	}
}