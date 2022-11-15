<%@page import="com.javatpoint.mypack.feedbackdao"%>  

<jsp:useBean id="abc" class="com.javatpoint.mypack.feedback">  
</jsp:useBean>  
<jsp:setProperty property="*" name="abc"/> 
<%  
int i=feedbackdao.register(abc);
if(i>0)  
out.print("You are successfully registered");
%>