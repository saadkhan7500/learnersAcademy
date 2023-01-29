<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@ page import="service.GetDetails"%>
<%@ page import="service.StudentImpl" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String studentName = request.getParameter("name");
     
      int res= StudentImpl.createStudentDetails(studentName);
      
      if(res==1)
      {
%>
	<h2 style="text-align: center; color: green">Data Store
		successfully</h2>
	<%
    	  request.getRequestDispatcher("createStudent.jsp").include(request, response);
      }

%>
</body>
</html>