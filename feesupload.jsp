<%@page import="com.javatpoint.mypack.Feesdao"%>  

<jsp:useBean id="abc" class="com.javatpoint.mypack.Fees">  
</jsp:useBean>  
<jsp:setProperty property="*" name="abc"/> 
<%  
int i=Feesdao.register(abc);
if(i>0)  
out.print("You are successfully uploaded fees");
%>