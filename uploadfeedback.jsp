<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>teacher profile</title>
</head>
<body>
<form action="feedbackregister.jsp" method="post">
teachername:<input type="text" name="teachername"><br>
feedback:<select id="feedback" name="feedback">
<option value="good">good</option>
<option value="bad">bad</option>
<option value="average">average</option>
</select><br>
<input type="submit" value="upload">
</form>
</body>
</html>