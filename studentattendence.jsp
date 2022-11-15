<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.driver.OracleDriver"); %>
<HTML>
       <HEAD>
       <TITLE>Your marks</TITLE>
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
       </HEAD>
       <BODY>
            <H1>YOUR Attendence</H1>
               

       
            <%
            Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","vivek","123");
            Statement statement = connection.createStatement() ;
            ResultSet resultset = statement.executeQuery("select * from uploadattendence where id =1" );
            %>
                <TABLE BORDER="1">
           <TR>
                 
                 <TH>course</TH>
                 <TH>Date</TH>
                 <TH>Status</TH>
          </TR>
           <% while(resultset.next()){ %>
           <TR>
                
               <TD> <%= resultset.getString(3) %></TD>
               <TD> <%= resultset.getString(4) %></TD>
               <TD> <%= resultset.getString(5) %></TD>
              <%} %> 
               
          </TR>
          
          
          
            
         
               </TABLE>

          
         </BODY>
</HTML>
