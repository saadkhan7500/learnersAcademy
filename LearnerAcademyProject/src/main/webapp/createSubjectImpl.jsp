<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@ page import="service.GetDetails"%>
<%@ page import="service.SubjectImpl" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String subjectName = request.getParameter("name");
     
      int res= SubjectImpl.createSubjectDetails(subjectName);
      
      if(res==1)
      {
%>
	<h2 style="text-align: center; color: green">Data Store
		successfully</h2>
	<%
    	  request.getRequestDispatcher("createSubject.jsp").include(request, response);
      }

%>
</body>
</html>