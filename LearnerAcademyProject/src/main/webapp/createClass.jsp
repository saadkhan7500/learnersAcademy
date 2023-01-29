<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="service.*"%>
<%@ page import="entities.*"%>
<%@ page import="java.util.Set"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1 style="font-size: 100px">Enter the record</h1>
	</center>
	<div
		style="margin-left: 25%; margin-top: 5%;background-color:yellow; border: 2px solid black; width: 50%; height: 100%;">
		<br>
		<form action="createClassImpl.jsp">
			<%
    Set<String> subjects = SubjectImpl.getAllSubjects();
%>
			<label style="font-size: 30px; margin-left: 4%;" for="Class">Choose
				a class</label> <select style="font-size: 30px" name="class" id="class">
				<option value="First">First</option>
				<option value="Second">Second</option>
				<option value="Third">Third</option>
				<option value="Fourth">Fourth</option>
				<option value="Fifth">Fifth</option>
				<option value="Sixth">Sixth</option>
				<option value="Seventh">Seventh</option>
				<option value="Eight">Eight</option>

			</select> <br> <br> <label style="font-size: 30px; margin-left: 4%;"
				for="Subjects">Choose a subject:</label> <select
				style="font-size: 30px" name="subjects" id="subjects" multiple>

				<%
  for(String subject: subjects)
  {
 
  %>
				<option value="<%=subject %>"><%=subject %></option>
				<%
}
 %>
			</select>
			<%
    Set<String> teachers = TeacherImpl.getAllTeachers();
%>

			<br> <br> <label style="font-size: 30px; margin-left: 4%;"
				for="teachers">Choose a teacher:</label> <select
				style="font-size: 30px" name="teachers" id="teachers" multiple>

				<%
  for(String teacher: teachers)
  {
 
  %>
				<option value="<%=teacher%>"><%=teacher%></option>
				<%
}
 %>
			</select>
			<%
    Set<String> students = StudentImpl.getAllStudents();
%>
			<br> <br> <label style="font-size: 30px; margin-left: 4%;"
				for="students">Choose Students:</label> <select
				style="font-size: 30px" name="students" id="students" multiple>

				<%
  for(String student: students)
  {
 
  %>
				<option value="<%=student%>"><%=student%></option>
				<%
}
 %>
			</select> <br> <br> <input
				style="font-size: 30px; margin-left: 10%; margin-bottom: 2%"
				type="submit" value="Insert" name="submit">
				
				<input
				style="font-size: 30px; margin-left: 10%; margin-bottom: 2%"
				type="Submit" value="Update" name="submit">
				
		</form>
	</div>
</body>
<script type="text/javascript">

</script>
</html>