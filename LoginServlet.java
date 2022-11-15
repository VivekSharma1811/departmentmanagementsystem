package com.javatpoint.mypack;
import java.io.IOException;  

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  

public class LoginServlet extends HttpServlet {  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)  
                    throws ServletException, IOException {  
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
        request.getRequestDispatcher("Admin.jsp").include(request, response);  
          
        String name=request.getParameter("name");  
        String password=request.getParameter("pass");  
          
        if(password.equals("admin123")&&name.equals("admin")){  
         
        	 	request.getRequestDispatcher("Adminmain.jsp").forward(request, response);
        	 	
        }  
        else{  
            
            request.getRequestDispatcher("Admin.jsp").forward(request, response);  
            out.print("Sorry, username or password error!"); 
        }  
        out.close();  
    }  
}  
