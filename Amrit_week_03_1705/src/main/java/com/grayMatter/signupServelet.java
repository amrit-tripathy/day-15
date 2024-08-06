package com.grayMatter;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date; // Import the SQL Date class
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class signupServelet
 */
public class signupServelet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public signupServelet() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Define the SQL query
        String query = "INSERT INTO Customer (id, name, mobile, email, order_date, password) VALUES (?, ?, ?, ?, ?, ?)";
        
        // Retrieve parameters from the request
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String mobile = request.getParameter("mobile");
        String email = request.getParameter("email");
        
        // Get the current date
        java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
        
        String password = request.getParameter("password");
        
        DbConnection db = new DbConnection();
        try (Connection con = db.getConnection(); 
             PreparedStatement ps = con.prepareStatement(query)) {

            // Set the parameters for the prepared statement
            ps.setInt(1, id);
            ps.setString(2, name);
            ps.setString(3, mobile);
            ps.setString(4, email);
            ps.setDate(5, sqlDate); // Use sqlDate directly
            ps.setString(6, password);
            
            // Execute the update
            ps.executeUpdate();
//            out.print("Registered successfully");

            // Optionally forward to another page
             RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
             rd.forward(request, response);
            
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            out.print("Registration failed: " + e.getMessage());
        }
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
