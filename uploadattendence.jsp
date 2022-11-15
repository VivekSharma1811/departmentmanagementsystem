<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
input[type=date], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: black;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
</head>
<body>
<div class="container">
  <form action="attendenceregister.jsp" method="post">
  <div class="row">
    <div class="col-25">
      <label for="id">ID :</label>
    </div>
    <div class="col-75">
      <input type="text" id="id" name="id" placeholder="student id...">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="course">Course:</label>
    </div>
    <div class="col-75">
      <input type="text" id="course" name="course" placeholder="student course...">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="Date">Date:</label>
    </div>
    <div class="col-75">
    <input type="date" id="date" name="date1">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="attendence">Attendence:</label>
    </div>
    <div class="col-75">
      <select id="attendence" name="attendence">
        <option value="present">present</option>
        <option value="absent">absent</option>
        <option value="leave">leave</option>
      </select>
    </div>
  </div>
 
  <br>
  <div class="row">
    <input type="submit" value="Submit">
  </div>
  </form>
</div>

</body>
</html>


