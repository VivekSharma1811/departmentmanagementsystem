<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>

p{
color:white}
header {
background-color:#C5C3C5;
position: fixed;



top: 10px;
height: 55px;
display: flex;
align-items: center;

}
header * {
display: inline;
}
header li {
margin: 20px;
}
header li a {
color: blue;
text-decoration: none;
}
body{
 background-color:#C5C3C5;
 }
a:link, a:visited {
  background-color:#616061;
  color: white;
  padding: 18px 55px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
   border-radius:30px;
}

a:hover, a:active {
  background-color:#C5C3C5;
  color:black;
}
</style>
<meta charset="ISO-8859-1">
<title>ADMIN </title>
</head>
<body>
<div class="container">



<header>
<nav>
<ul>  
<li>  
<a href="FacultyList.jsp">ViewFaculty</a>
</li>  
<li>
<a href="StudentList.jsp">ViewStudent</a>
</li>
<li>
<a href="Feedback.jsp">ViewFeedBack </a>
</li>
<li>
<a href ="index.jsp">Add Faculty</a></li>
<li>
<a href="showallmarks.jsp">Student Marks</a>
</li>
<li>
<a href="showfees.jsp">Fees Status</a>
</li>
</ul>



</nav>
</header>

<br>
<br>
<br>
<br>
<br>
<br>
<center>
<H1>THIS IS YOUR ADMIN PAGE</H1>

<h3>here you can see faculties and students in our institue and also add faculty and Student</h3>
 
</center>
<div class="hero" style="background-image: url('images/hero_1.jpg');"></div>

</div>
</body>
</html>