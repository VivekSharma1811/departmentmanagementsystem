<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.driver.OracleDriver"); %>
<html>
<head>
    <title>Our Students</title>
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
            <H1>	Our All Students</H1>
            <%
                Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","vivek","123");
                Statement statement = connection.createStatement() ;
                ResultSet resultset =
                statement.executeQuery("select * from studentregister") ;
            %>
                <TABLE BORDER="1">
           <TR>
                 <TH>ID</TH>
                 <TH>UserName</TH>
                 <TH>Password</TH>
                 <TH>email</TH>
                 <TH>gender</TH>
                 <TH>phoneno</TH>
                 
          </TR>
           <% while(resultset.next()){ %>
           <TR>
                <TD> <%= resultset.getInt(1) %></td>
               <TD> <%= resultset.getString(2) %></TD>
               <TD> <%= resultset.getString(3) %></TD>
               <TD> <%= resultset.getString(4) %></TD>
               <TD> <%= resultset.getString(5) %></TD>
               <TD> <%= resultset.getString(6) %></TD>
               
               
          </TR>
           <% } %>
               </TABLE>
               </BODY></html>