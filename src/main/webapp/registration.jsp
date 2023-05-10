<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<title>Registration</title>
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
		<div class="container mt-5">
			<h1 style="max-width: 480px; margin: auto">Registration</h1>
			<br />

			<form
				style="max-width: 480px; margin: auto"
				action="Registration"
				method="post">
				<div class="form-floating">
					<input
						type="text"
						name="username"
						placeholder="random-habijabi"
						class="form-control"
						required />
					<label for="username" class="form-label">
						Username/Registration No.
					</label>
				</div>

				<div class="form-floating mt-3">
					<input
						type="email"
						name="email"
						placeholder="random-habijabi"
						class="form-control"
						required />
					<label for="email" class="form-label">Email</label>
				</div>

				<div class="form-floating mt-3">
					<input
						type="password"
						name="password"
						placeholder="random-habijabi"
						class="form-control"
						required />
					<label for="password" class="form-label">Password</label>
				</div>

				<div class="form-floating mt-3">
					<input
						type="password"
						name="confirmPassword"
						placeholder="random-habijabi"
						class="form-control"
						required />
					<label for="confirmPassword" class="form-label">
						Confirm Password
					</label>
				</div>
				<div class="mt-3">
					<label for="role">Role:</label>
					<select id="roles" name="role" class="form-select-sm">
						<option value="Student">Student</option>
						<option value="Teacher">Teacher</option>
					</select>
				</div>

				<input type="submit" value="Register" class="mt-3" />
			</form>
		</div>
	</body>
</html>
