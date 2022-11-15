<%@page import="com.javatpoint.mypack.attendencedao"%>  

<jsp:useBean id="abc" class="com.javatpoint.mypack.attendence">  
</jsp:useBean>  
<jsp:setProperty property="*" name="abc"/>  
  
<%  
int i=attendencedao.register(abc);
if(i>0)  
out.print("attendence uploaded successfully");  
  
%> 