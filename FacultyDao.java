package com.javatpoint.mypack;

import java.sql.SQLException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class FacultyDao {
	 private String jdbcURL;
	    private String jdbcUsername;
	    private String jdbcPassword;
	    private Connection jdbcConnection;
	     
	    public 	FacultyDao(String jdbcURL, String jdbcUsername, String jdbcPassword) {
	        this.jdbcURL = jdbcURL;
	        this.jdbcUsername = jdbcUsername;
	        this.jdbcPassword = jdbcPassword;
	    }
	     
	    protected void connect() throws SQLException {
	        if (jdbcConnection == null || jdbcConnection.isClosed()) {
	            try {
	                Class.forName("oracle.jdbc.driver.OracleDriver");
	            } catch (ClassNotFoundException e) {
	                throw new SQLException(e);
	            }
	            jdbcConnection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","vivek" ,"123");
	        }
	    }
	     
	    protected void disconnect() throws SQLException {
	        if (jdbcConnection != null && !jdbcConnection.isClosed()) {
	            jdbcConnection.close();
	        }
	    }
	     

	public  boolean insertFaculty(Faculty faculty) throws SQLException {
        String sql = "INSERT INTO facultyregister (name,password,email,gender,phonenumber) VALUES (?,?,?,?,?)";
        connect();
         
        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
        statement.setString(1, faculty.getName());
        statement.setString(2, faculty.getPassword());
        statement.setString(3, faculty.getEmail());
        statement.setString(4, faculty.getGender());
        statement.setString(5, faculty.getPhonenumber());
        boolean rowInserted = statement.executeUpdate() > 0;
        statement.close();
        disconnect();
        return rowInserted;
    }
     
    public  List<Faculty> listAllFaculty() throws SQLException {
        List<Faculty> listFaculty = new ArrayList<>();
         
        String sql = "SELECT * FROM facultyregister";
         
        connect();
         
        Statement statement = jdbcConnection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);
         
        while (resultSet.next()) {
            int id = resultSet.getInt("id");
            String name = resultSet.getString("name");
            String password = resultSet.getString("password");
            String email=resultSet.getString("email");
            String gender=resultSet.getString("gender");
            String phonenumber=resultSet.getString("phonenumber");
            
             
           Faculty faculty = new Faculty(id,name,password,email,gender,phonenumber);
             listFaculty.add(faculty);
        }
         
        resultSet.close();
        statement.close();
         
        disconnect();
         
        return listFaculty;
    }
    
        public boolean deleteFaculty(Faculty faculty) throws SQLException {
            String sql = "DELETE FROM facultyregister where id = ?";
             
            connect();
             
            PreparedStatement statement = jdbcConnection.prepareStatement(sql);
            statement.setInt(1, faculty.getId());
             
            boolean rowDeleted = statement.executeUpdate() > 0;
            statement.close();
            disconnect();
            return rowDeleted;     
        }
         
        public boolean updateFaculty(Faculty faculty) throws SQLException {
            String sql = "UPDATE facultyregister set name = ?, password = ?, email = ?,gender=?,phonenumber=?";
            sql += " WHERE id = ?";
            connect();
             
            PreparedStatement statement = jdbcConnection.prepareStatement(sql);
            statement.setString(1, faculty.getName());
            statement.setString(2, faculty.getPassword());
            statement.setString(3, faculty.getEmail());
            statement.setInt(4, faculty.getId());
            statement.setString(5, faculty.getGender());
            statement.setString(6,faculty.getPhonenumber());
             
            boolean rowUpdated = statement.executeUpdate() > 0;
            statement.close();
            disconnect();
            return rowUpdated;     
        }
         
        public Faculty getFaculty(int id) throws SQLException {
            Faculty faculty = null;
            String sql = "SELECT * FROM facultyregister WHERE id = ?";
             
            connect();
             
            PreparedStatement statement = jdbcConnection.prepareStatement(sql);
            statement.setInt(1, id);
           
            ResultSet resultSet = statement.executeQuery();
             
            if (resultSet.next()) {
            	 String name = resultSet.getString("name");
                 String password = resultSet.getString("password");
                 String email=resultSet.getString("email");
                 String gender=resultSet.getString("gender");
                 String phonenumber=resultSet.getString("phonenumber");
                 
                 
                faculty = new Faculty(id,name,password,email,gender,phonenumber);
            }
            
            resultSet.close();
            statement.close();
             
            return faculty;
        }

		

}
    
