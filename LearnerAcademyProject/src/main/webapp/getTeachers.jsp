<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page import="service.*" %>
     
 <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<style>
table, th, td {
  border: 1px solid black;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#E7BFB7">
<%!
int count=1;
%>

<%
       Set<String> students = TeacherImpl.getAllTeachers();

%>
<div style="margin-left:30%;margin-top:10%;">
<h2>All Teachers registered in the database</h2>


<table style="width:50%;font-size:30px;text-align:center;">
  <tr>
    <th>S.no</th>
    <th>Student Name</th> 
  </tr>
  <% 
  for(String s: students)
  {
	 
	  %>
  <tr>
    <td><%=count %></td>
    <td><%=s%></td>
  </tr>
  <%
  count++;
 
  }
  count=1;
  %>
</table>
</div>
</body>
</html>


</body>
</html>