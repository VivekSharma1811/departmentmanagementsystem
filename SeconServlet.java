package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SeconServlet
 */
public class SeconServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)  
	        throws ServletException, IOException {  
	  
	    response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();  
	    int r= Integer. parseInt(request. getParameter("id"));
	    String p=request.getParameter("password");  
	         
	         if(LoginDao2.validate(r,p)){  
	        RequestDispatcher rd=request.getRequestDispatcher("Facultymain.jsp");  
	        rd.forward(request,response);  
	    }
	    else{  
	        out.print("Sorry name or password error");  
	        RequestDispatcher rd=request.getRequestDispatcher("Faculty.jsp");  
	        rd.include(request,response);  
	    }  
	   
	}} 
	