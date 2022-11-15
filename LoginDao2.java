package servlets;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao2 {
	public static boolean validate(int id,String password){  
		boolean status=false;  
		try{  
		Class.forName("oracle.jdbc.driver.OracleDriver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:oracle:thin:@localhost:1521:xe","vivek","123");     
		PreparedStatement ps=con.prepareStatement(  
		"select * from FacultyRegister where id=? and password=?"); 
		ps.setInt(1,id);
		ps.setString(2,password);
		ResultSet rs=ps.executeQuery();  
		status=rs.next();         
		}catch(Exception e)
		{
			System.out.println(e);
		}  
		return status;  
		}  
		}  