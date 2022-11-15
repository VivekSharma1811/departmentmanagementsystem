<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource
var="myDs"
driver="oracle.jdbc.driver.OracleDriver"
url="jdbc:oracle:thin:@localhost:1521:XE"
user="vivek"
password="123"/>
<sql:query var="listusers" dataSource="${myDs}">
SELECT * from FacultyRegister
</sql:query>
<div align="center">
<table border="1">
<caption>List of Patients</caption>
<tr>
<th>FacultyID</th>
<th>FacultyName</th>
<th>FacultyPassword</th>
</tr>
<c:forEach var="user" items="${listusers.rows }">
<tr>
<td><c:out value="${user.id}"></c:out></td>
<td><c:out value="${user.name}"></c:out></td>
<td><c:out value="${user.bg}"></c:out></td>

</tr>
</c:forEach>
</table>
</div>
</body>
</html>