<%@page import="com.javatpoint.mypack.Marksdao"%>  

<jsp:useBean id="abc" class="com.javatpoint.mypack.Marks">  
</jsp:useBean>  
<jsp:setProperty property="*" name="abc"/>  
  
<%  
int i=Marksdao.register(abc);
if(i>0)  
out.print("You are successfully uploaded");  
  
%> 