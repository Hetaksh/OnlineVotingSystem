package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class OnlineRegistration
 */
@WebServlet("/OnlineRegistration")
public class OnlineRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OnlineRegistration() {
        super();

    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try 
		{	
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String password = request.getParameter("password");
			String dob = request.getParameter("dob");
			String gender = request.getParameter("gender");
			String city = request.getParameter("city");
			String number = request.getParameter("number");
			String email = request.getParameter("email");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/voting","root","root");
			PreparedStatement ps = con.prepareStatement("insert into voter values (?,?,?,?,?,?,?,?)");
			ps.setString(1, id);
			ps.setString(2, name);
			ps.setString(3, password);
			ps.setString(4, dob);
			ps.setString(5, gender);
			ps.setString(6, city);
			ps.setString(7, number);
			ps.setString(8, email);
			
			
			int i = ps.executeUpdate();
			
			if(i>0)
			{
				response.sendRedirect("success.jsp");
			}
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		doGet(request, response);
	}

}
