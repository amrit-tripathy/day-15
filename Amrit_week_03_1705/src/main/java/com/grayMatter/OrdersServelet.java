package com.grayMatter;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class OrdersServelet
 */
public class OrdersServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrdersServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		String arrstr = request.getParameter("hidarr");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.print(arrstr);
		String[]arr = arrstr.split(" ");
		float totalcost=0;
		for(String i:arr) {
			String[] data = i.split("\\.\\.");
			String dataname = data[0];
			
			float datacost = Float.parseFloat(data[1]);
			totalcost+=datacost;
			out.print(dataname+" "+datacost);
		}
		HttpSession session = request.getSession();
		session.setAttribute("totalcost", totalcost);

		RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
        rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
