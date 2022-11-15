package com.javatpoint.mypack;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class controllerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private FacultyDao facultyDao;
	public void init() {
        String jdbcURL = getServletContext().getInitParameter("jdbcURL");
        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
        facultyDao = new FacultyDao(jdbcURL, jdbcUsername, jdbcPassword); 
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath(); 
        try {
            switch (action) {
            case "/new":
                showNewForm(request, response);
                break;
            case "/insert":
                insertFaculty(request, response);
                break;
            case "/delete":
                deleteFaculty(request, response);
                break;
            case "/edit":
                showEditForm(request, response);
                break;
            case "/update":
                updateFaculty(request, response);
                break;
            default:
                listFaculty(request, response);
                break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
    private void listFaculty(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<Faculty> listFaculty = facultyDao.listAllFaculty();
        request.setAttribute("listFaculty",listFaculty );
        RequestDispatcher dispatcher = request.getRequestDispatcher("Facultylist.jsp");
        dispatcher.forward(request, response);
    } 
    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("FacultyForm.jsp");
        dispatcher.forward(request, response);
    }
    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Faculty existingfaculty = facultyDao.getFaculty(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("FacultyForm.jsp");
        request.setAttribute("faculty", existingfaculty);
        dispatcher.forward(request, response); 
    } 
    private void insertFaculty(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        String name = request.getParameter("name");
        String password = request.getParameter("pasword");
        String email=request.getParameter("emial");
        String gender=request.getParameter("gender");
        String phonenumber=request.getParameter("phonenumber");
 
        Faculty newFaculty = new Faculty(name,password,email,gender,phonenumber);
        facultyDao.updateFaculty(newFaculty);
        response.sendRedirect("list");
    }
    private void updateFaculty(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String email=request.getParameter("emial");
        String gender=request.getParameter("gender");
        String phonenumber=request.getParameter("phonenumber"); 
       Faculty faculty = new Faculty(id,name,password,email,gender,phonenumber);
        facultyDao.updateFaculty(faculty);       
        response.sendRedirect("list");
    }
    private void deleteFaculty(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Faculty faculty = new Faculty(id);
        facultyDao.deleteFaculty(faculty);
        response.sendRedirect("list");
    }
}   