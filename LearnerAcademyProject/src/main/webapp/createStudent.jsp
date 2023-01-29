<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
		style="margin-left: 35%; margin-top: 5%;background-color:yellow; border: 2px solid black; width: 30%; height: 100%;">
		<br>
		<table>
			<form action="createStudentImpl.jsp">
				<tr>
					<td><label style="font-size: 30px" for="name"> Student
							Name </label></td>
					<td><input style="height: 30px; font-size: 14pt;" type="text"
						name="name" required/></td>
				</tr>

				<tr>


					<td style="padding-bottom: 5%"><br> <input
						style="margin-left: 150%; height: 40px; width: 100px; font-size: 14pt;"
						type="Submit" value="Submit"></td>

				</tr>
			</form>
		</table>
	</div>
</body>
<script type="text/javascript">
$(document).ready(function() { 
    setTimeout(function() { 
        $('.wrap').fadeOut(); 
 }, 400); 
});

</script>
</html>