	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
	  
	        <h1>Add New Faculty</h1>  
       <form action="save" method="post">    
	        <table >    
	         <tr>    
	          <td>Name : </td>   
	          <td><input path="name"  /></td>  
	         </tr>    
	         <tr>    
	          <td>password :</td>    
	          <td><input path="password" /></td>  
	         </tr>   
	         <tr>    

	          <td> email:</td>    
	          <td><input path="email" /></td>  
	         </tr>   
	         <tr>    

	          <td> gender:</td>    
	          <td><input path="gender" /></td>  
	         </tr> 
	         <tr>    

	          <td> phonenumber:</td>    
	          <td><input path="phonenumber" /></td>  
	         </tr> 
	         <tr>    
	          <td> </td>    
	          <td><input type="submit" value="Save" /></td>    
	         </tr>    
	        </table>    
	       </form>    
