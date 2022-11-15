package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class WelcomeServlet2
 */
public class WelcomeServlet2 extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)  
		    throws ServletException, IOException {  
		  
		    response.setContentType("text/html");  
		    PrintWriter out = response.getWriter();  
		          
		    
		    out.print("Welcome ");  
		          
		    out.close();  
		    }  
		  
		}  