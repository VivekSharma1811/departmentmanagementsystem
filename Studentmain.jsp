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
left: 10%;
right: 13%;


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
<title>Student </title>
</head>
<body>
<div class="container">



<header>
<nav>
<ul>  
<li>  
<a href="studentprofile.jsp">Stduentprofile</a>
</li>  
<li>
<a href="showfees.jsp">fees</a>
</li>
<li>
<a href="marks.jsp" onclick="onpage()">Marks</a>
</li>
<li>
<a href="studentattendence.jsp">Attendence</a>
<li>
<a href="uploadfeedback.jsp">feedback</a>
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
