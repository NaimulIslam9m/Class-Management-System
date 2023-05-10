<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<title>Login</title>
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
			<h1 style="max-width: 480px; margin: auto">Login</h1>
			<br />

			<form
				style="max-width: 480px; margin: auto"
				action="Login"
				method="post"
				novalidate>
				<div class="form-floating">
					<input
						type="text"
						name="username"
						placeholder="random-habijabi"
						class="form-control"
						required />
					<label for="username" class="form-label">Username</label>
				</div>

				<br />

				<div class="form-floating">
					<input
						type="password"
						name="password"
						placeholder="random-habijabi"
						class="form-control"
						required />
					<label for="password" class="form-label">Password</label>
				</div>

				<br />

				<label for="roles">Role:</label>
				<select id="roles" name="role" class="form-select-sm">
					<option value="Student">Student</option>
					<option value="Teacher">Teacher</option>
					<option value="Admin">Admin</option>
				</select>

				<br /><br />

				<div class="mt-3">
					<input type="submit" value="Login" class="btn btn-outline-primary" />
					<button
						onclick="window.location.href='registration.jsp'"
						class="btn btn-outline-primary">
						Signup
					</button>
				</div>
			</form>
		</div>
		<script>
			const form = document.querySelector("form");
			form.addEventListener("submit", (e) => {
				if (!form.checkValidity()) {
					e.preventDefault();
				}

				form.classList.add("was-validated");
			});
		</script>
	</body>
</html>
