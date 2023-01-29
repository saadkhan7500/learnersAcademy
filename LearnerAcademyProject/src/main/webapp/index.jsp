<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.GFG {
	background-color: white;
	border: 2px solid black;
	color: green;
	padding: 5px 10px;
	text-align: center;
	display: inline-block;
	font-size: 20px;
	margin: 10px 30px;
	cursor: pointer;
}

#leftbox {
	margin-top: 3%;
	float: left;
	background: #3366CC; width : 25%;
	height: 400px;
	width: 33%;
}

#middlebox {
	margin-top: 3%;
	float: left;
	background: #00CC00;
	width: 34%;
	height: 400px;
}

#rightbox {
	margin-top: 3%;
	float: right;
	background: Crimson;
	width: 33%;
	height: 400px;
}

h2 {
	text-align: center;
}

button {
	position: relative;
}
</style>
<meta charset="ISO-8859-1">
<title>Learners Academy</title>
</head>
<body>

	<div
		style="margin-left: 27%; box-sizing: border-box; border: 3px solid black; height: 100%; width: 50%; margin-top: 10%; border-radius: 5px;">
		<h1 style="margin-left: 17%">Welcome to Learner's Academy</h1>

		<div id="leftbox">
			<h2>Create Records</h2>
			<button class="GFG">
				<a style="text-decoration: none" href="createSubject.jsp" /a>
					create Subject 
			</button>
			<br>

			<button class="GFG">
				<a style="text-decoration: none" href="createTeacher.jsp" /a>
					create Teacher 
			</button>
			<br>


			<button class="GFG">
				<a style="text-decoration: none" href="createClass.jsp" /a>
					create Class 
			</button>
			<br>
			<button class="GFG">
				<a style="text-decoration: none" href="createStudent.jsp" /a>
					create Student 
			</button>
			<br>
		</div>
		<div id="middlebox">
			<h2>Get Records</h2>
			<button class="GFG">
				<a style="text-decoration: none" href="getStudents.jsp" /a>
					Get All Student 
			</button>

			<button class="GFG">
				<a style="text-decoration: none" href="getSubjects.jsp" /a>
					Get All Subjects 
			</button>

			<button class="GFG">
				<a style="text-decoration: none" href="getTeachers.jsp" /a>
					Get All Teachers 
			</button>

			<br>

			<button style="position: relative;" class="GFG">
				<a style="text-decoration: none" href="getWholeData.jsp" /a> Get
					All Data 
			</button>
		</div>

		<div id="rightbox">
			<h2>Delete Records</h2>

			<button class="GFG">
				<a style="text-decoration: none" href="deleteStudent.jsp" /a>
					Delete Student 
			</button>

			<button class="GFG">
				<a style="text-decoration: none" href="deleteSubject.jsp" /a>
					Delete Subject 
			</button>


			<button class="GFG">
				<a style="text-decoration: none" href="deleteTeacher.jsp" /a>
					Delete Teacher 
			</button>

		</div>
		
		

	</div>




</body>
</html>