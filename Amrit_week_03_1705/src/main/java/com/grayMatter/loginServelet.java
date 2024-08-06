package com.grayMatter;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class loginServelet
 */
public class loginServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		 response.setContentType("text/html");
	        PrintWriter out = response.getWriter();
	        
	        String query="select * from customer where name=? and password=?";
	        String name = request.getParameter("name");
	        String password = request.getParameter("password");
	        DbConnection db = new DbConnection();
	        try (Connection con = db.getConnection(); 
	             PreparedStatement ps = con.prepareStatement(query)) {

	            // Set the parameters for the prepared statement
	            ps.setString(1, name);
	            ps.setString(2, password);
	            ResultSet rs = ps.executeQuery();
	            if(rs.next()) {
	            	out.print("logged in ");
	            	RequestDispatcher rd= request.getRequestDispatcher("home.jsp");
	            	rd.forward(request, response);
	            } 
	            } catch (ClassNotFoundException | SQLException e) {
	                e.printStackTrace();
	                out.print("Registration failed: " + e.getMessage());
	            }
	            
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
