	     
	   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
	  
	<h1>Faculty List</h1>  
	<table border="2" width="70%" cellpadding="2">  
	<tr><th>Id</th><th>Name</th><th>password</th><th>email</th><th>gender</th><th>phonenumber</th><th>Edit</th><th>Delete</th></tr>  
	   <c:forEach var="faculty" items="${list}">   
	   <tr>  
	   <td>${faculty.id}</td>  
	   <td>${faculty.name}</td>  
	   <td>${faculty.password}</td>  
	   <td>${faculty.email}</td>  
	   <td>${faculty.gender }</td>
	   <td>${faculty.phonenumber }</td>
	   <td><a href="editemp/${faculty.id}">Edit</a></td>  
	   <td><a href="deleteemp/${faculty.id}">Delete</a></td>  
	   </tr>  
	   </c:forEach>  
	   </table>  
	   <br/>  
	   	   <a href="addform">Add new faculty</a>  
