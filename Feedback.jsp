<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.driver.OracleDriver"); %>
<html>
<head>
    <title>Our Faculty</title>
    <style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

tr:hover {background-color: coral;}
</style>
</head>
 <BODY BGCOLOR="white">
            <H1>Feedback by students</H1>
            <%
                Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","vivek","123");
                Statement statement = connection.createStatement() ;
                ResultSet resultset =
                statement.executeQuery("select * from feedbackRegister") ;
            %>
                <TABLE BORDER="1">
           <TR>
                 <TH>TID</TH>
                 <TH>TeacherName</TH>
                 <TH>Feedback</TH>
                 
                 
          </TR>
           <% while(resultset.next()){ %>
           <TR>
                <TD> <%= resultset.getInt(1) %></td>
               <TD> <%= resultset.getString(2) %></TD>
               <TD> <%= resultset.getString(3) %></TD>
              
               
               
          </TR>
           <% } %>
               </TABLE>
               </BODY></html>