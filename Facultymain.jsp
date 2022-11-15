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
<title>Faculty </title>
</head>
<body>
<div class="container">



<header>
<nav>
<ul>  
<li>  
<a href="teacherprofile.jsp">FacultyProfile</a>
</li>  
<li>
<a href="uploadattendence.jsp">UploadAttendence</a>
</li>
<li>
<a href="uploadmarks.jsp">UploadMarks</a>
</li>
<li>
<a href ="uploadfees.jsp">UploadFees</a>
<li>
<a href="uploadtimetable.jsp">UploadTimetable</a>
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
<H1>THIS IS YOUR STUDENT PAGE</H1>

<h3>here you can see your marks ,your fees status,your attendence and you also upload feedback</h3>


</center>
</div>
</body>
</html>




