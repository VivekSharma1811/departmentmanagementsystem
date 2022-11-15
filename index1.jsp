<html>
<head>
<style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #3CB371;
  border-radius: 10px;
  resize: vertical;
}
label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #800000;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color:#5C3317;
}

.container {
  border-radius: 10px;
  background-color: #F8B88B;
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
</style></head>
<body>
<div class="container">
<form action="RegisterStudent.jsp" method="post">  
<div class="row">
    <div class="col-25">
      <label for="Username">Username :</label>
    </div>
    <div class="col-75">
      <input type="text" id="name" name="name" placeholder="Username...">
    </div>
  </div>
<div class="row">
    <div class="col-25">
      <label for="password">Password :</label>
    </div>
    <div class="col-75">
      <input type="text" id="password" name="password" placeholder="Studentpassword...">
    </div>
  </div> 
<div class="row">
    <div class="col-25">
      <label for="email">Email :</label>
    </div>
    <div class="col-75">
      <input type="text" id="esmail" name="email" placeholder="Mail id...">
    </div>
  </div>
 <div class="row">
    <div class="col-25">
      <label for="gender">Gender:</label>
    </div>
    <div class="col-75">
      <select id="gender" name="gender">
        <option value="male">Male</option>
        <option value="female">Female</option>
        <option value="other">others</option>
      </select>
    </div>
  </div>
 <div class="row">
    <div class="col-25">
      <label for="phonenumber">PhoneNumber:</label>
    </div>
    <div class="col-75">
    <input type="text" id="phonenumber" name="phonenumber"placeholder="phone number...">
    </div>
  </div>

<div class="row">
    <input type="submit" value="Register">
 </div>
  </form>
</div>

</body>
</html>

