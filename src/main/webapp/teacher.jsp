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
	
	<%
		out.println("<h1>Welcome Back Professor " + (String) session.getAttribute("username") + "</h1>");
	%>
	
	<div>
		<h2>Your Assigned Courses</h2>
		<%
		 	String db_url = "jdbc:mysql://localhost:3306/course_management_system";
		    String db_user = "root";
		    String db_pass = "helloworld69";
		    
	        try {
	            Class.forName("com.mysql.jdbc.Driver");
	            Connection conn = DriverManager.getConnection(db_url, db_user, db_pass);
	
				String t_uname = (String) session.getAttribute("username");
				
	            // Execute SQL query to fetch names
	            String sql = "SELECT course_id FROM Assigned_Course WHERE teacher_uname = '" + t_uname + "'";
	            PreparedStatement pstmt = conn.prepareStatement(sql);
				
	            ResultSet rs = pstmt.executeQuery();
		        
				out.println("<ul>");
	            while (rs.next()) {
	                String c_id = rs.getString("course_id");
	                out.println("<li><a href='registered_students.jsp?course_id=" + c_id + "'>" + c_id + "</a></li>");
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