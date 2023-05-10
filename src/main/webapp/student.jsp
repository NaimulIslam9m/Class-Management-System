<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		if (session.getAttribute("username") == null) {
			response.sendRedirect("login.jsp");
		}
	%>
	
	<h1>THIS IS STUDENT PAGE</h1>
	
	<div>
	    
	    <h2>Register a new course</h2>
	    
		<form action="RegisterCourse" method="post">
			<label for="course_id">Course ID:</label>
			<input type="text" name="course_id" required><br><br>
			
			<input type="submit" value="Register">
		</form>

	</div>
	
	<div>
		<h2>Registered Courses</h2>
		<%
		 	String db_url = "jdbc:mysql://localhost:3306/course_management_system";
		    String db_user = "root";
		    String db_pass = "helloworld69";
		    
	        try {
	            Class.forName("com.mysql.jdbc.Driver");
	            Connection conn = DriverManager.getConnection(db_url, db_user, db_pass);

				String reg_no = (String) session.getAttribute("username");
				
	            // Execute SQL query to fetch names
	            String sql = "SELECT course_id FROM Registered_Course WHERE reg_no = " + reg_no;
	            PreparedStatement pstmt = conn.prepareStatement(sql);
				
	            ResultSet rs = pstmt.executeQuery();
		        
	            out.println("<ul>");
	            while (rs.next()) {
	                String c_id = rs.getString("course_id");
	                out.println("<li>" + c_id + "</li>");
	            }
	            out.println("</ul>");
	            
	        } catch (Exception e) {
	            System.out.println("Error: " + e.getMessage());
	            response.sendRedirect("404.jsp");
	        }
		%>
	</div>
	
	<br><br>
	<form action="Logout">
		<input type="submit" value="logout">
	</form>
</body>
</html>