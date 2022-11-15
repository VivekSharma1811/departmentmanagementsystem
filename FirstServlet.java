package servlets;

import java.io.IOException;  
import java.io.PrintWriter;  
  
import javax.servlet.RequestDispatcher;  
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
  

public class FirstServlet extends HttpServlet {  

public void doGet(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException {  
  
    response.setContentType("text/html");  
    PrintWriter out = response.getWriter();  
     final int r= Integer. parseInt(request. getParameter("id"));
    String n=request.getParameter("name"); 
    String p=request.getParameter("password");  
         
         if(LoginDao.validate(r,p)){  
        RequestDispatcher rd=request.getRequestDispatcher("Studentmain.jsp");  
        rd.forward(request,response);  
    }
    else{  
        out.print("Sorry name or password error");  
        RequestDispatcher rd=request.getRequestDispatcher("Student.jsp");  
        rd.include(request,response);  
    }  
        
    out.close();  
    }  
}  