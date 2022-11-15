<
<%@page import="servlets.FirstServlet"%>
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
            <H1>YOUR Marks</H1>
               

       
            <%
            Class.forName("oracle.jdbc.driver.OracleDriver");  
            Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","vivek","123");
            Statement statement = connection.createStatement() ;
           
    		
            //FirstServlet obj = new FirstServlet();
          
            
            
            
            PreparedStatement ps=connection.prepareStatement(  
            		"select * from uploadmarks where id =?"); 
            		ps.setInt(1,1);
            		
            		ResultSet resultset=ps.executeQuery();  
           
            
            
            
            %>
                <TABLE BORDER="1">
           <TR>
                 <TH>ID</TH>
                 <TH>course</TH>
                 <TH>totalmarks</TH>
                 <TH>marksobtain</TH>
          </TR>
           <% while(resultset.next()){ %>
           <TR>
                <TD> <%= resultset.getInt(2) %></td>
               <TD> <%= resultset.getString(3) %></TD>
               <TD> <%= resultset.getInt(4) %></TD>
               <TD> <%= resultset.getInt(5) %></TD>
              <%} %> 
               
          </TR>
          
    
            
         
               </TABLE>

          
         </BODY>
</HTML>
