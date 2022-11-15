<%@page import="com.javatpoint.mypack.UseerDao1"%>  

<jsp:useBean id="abc" class="com.javatpoint.mypack.User1">  
</jsp:useBean>  
<jsp:setProperty property="*" name="abc"/> 
<%  
int i=UseerDao1.register(abc);
if(i>0)  
out.print("You are successfully registered");
%>