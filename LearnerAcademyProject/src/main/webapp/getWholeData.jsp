<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="service.*" %>
<%@ page import="entities.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
     List<Classs> c =  StudentImpl.getStudent();




      for(Classs clas: c)
      {
    	  %>
    	  <h2 style="margin-left:30%;">Class: <%=clas.getClassName() %></h2>
    	  <div style="border:2px solid black;width:50%; margin-left:30%">
    	  
    	  <%
    	
    	  Iterator<Student> stu = clas.getStudent().iterator();
    	  out.println("<h2>Students</h2>");
    	  int i=1;
    	  while(stu.hasNext())
    	  {
    		  out.print("<h3> "+i+". "+stu.next().getName()+"</h3>"); 
    		  i++;
    	  }
    	  i=1;
    	  out.println("<hr>");
    	  out.println("<h2>Subjects </h2>");
    	  
    	  Iterator<Subject> sub = clas.getSubject().iterator();
    	  while(sub.hasNext())
    	  {
    		  out.print("<h3> "+i+". "+sub.next().getSubjectName()+"</h3>");
    		  i++;
    	  }
    	  out.println("<hr>");
          out.println("<h2>Teachers </h2>");
    	  i=1;
    	  Iterator<Teacher> t = clas.getTeacher().iterator();
    	  while(t.hasNext())
    	  {
    		  out.print("<h3> "+i+". "+t.next().getTeacherName()+"</h3>");  
    		  i++;
    	  } 
    	  
    	  %>
    	  </div>
    	  
    	  <%
      }
%>

</body>
</html>