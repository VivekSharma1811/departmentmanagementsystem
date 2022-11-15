<%@page import="com.javatpoint.mypack.Userdao"%>  

<jsp:useBean id="abc" class="com.javatpoint.mypack.User">  
</jsp:useBean>  
<jsp:setProperty property="*" name="abc"/>  
  
<%  
int i=Userdao.register(abc);
if(i>0)  
out.print("You are successfully registered");  
  
%>  
