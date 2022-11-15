<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.driver.OracleDriver"); %>
<HTML>
       <HEAD>
       <TITLE>Fees Status</TITLE>
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
            <H1>FEES STATUS</H1>
               

       
            <%
            Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","vivek","123");
            Statement statement = connection.createStatement() ;
            ResultSet resultset = statement.executeQuery("select * from feesupload" );
            %>
                <TABLE BORDER="1">
           <TR>
                 <TH>ID</TH>
                 <TH>FeesStatus</TH>
                 
          </TR>
           <% while(resultset.next()){ %>
           <TR>
                <TD> <%= resultset.getInt(2) %></td>
               <TD> <%= resultset.getString(3) %></TD>
              
              <%} %> 
               
          </TR>
          
          
          
            
         
               </TABLE>

          
         </BODY>
</HTML>
