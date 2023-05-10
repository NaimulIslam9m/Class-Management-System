<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<title>Admin</title>
		<link
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
			rel="stylesheet"
			integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
			crossorigin="anonymous" />
		<script
			defer
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
			crossorigin="anonymous"></script>
	</head>
	<body>
		<% if (session.getAttribute("username") == null) {
		response.sendRedirect("login.jsp"); } %>

		<center>
			<h1><u>ADMIN</u></h1>
		</center>

		<div class="row mx-auto p-2" style="width: 1300px;">

			<div class="col-sm-3">
				<h2>Add New Course</h2>
				<hr>
				<form action="AddNewCourse" method="post">
					<label for="course_id">Course ID</label>
					<input type="text" name="course_id" required /><br /><br />

					<label for="course_name">Course Name</label>
					<input type="text" name="course_name" required /><br /><br />

					<label for="course_desc">Course Description</label>
					<input type="text" name="course_desc" required /><br /><br />

					<input type="submit" value="submit" />
				</form>
			</div>


			<div class="me-3 col-sm-4">
				<h2>Assign Course</h2>
				<hr>
				<form action="AssignCourse" method="post">
					<label for="course_id">Course ID</label>
					<input type="text" name="course_id" required /><br /><br />

					<label for="username">Teacher's username</label>
					<input type="text" name="username" required /><br /><br />

					<input type="submit" value="submit" />
				</form>
			</div>
			
			<form action="Logout">
				<input type="submit" value="logout" style="margin-top: 10px;"/>
			</form>
		</div>


	</body>
</html>
