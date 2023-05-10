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
		out.println("<h2>Registered Students on " + request.getParameter("course_id") + "</h2>");
	%>

	
	<div>
	<%
	 	String db_url = "jdbc:mysql://localhost:3306/course_management_system";
	    String db_user = "root";
	    String db_pass = "helloworld69";
	    
	    try {
	        Class.forName("com.mysql.jdbc.Driver");
	        Connection conn = DriverManager.getConnection(db_url, db_user, db_pass);
	
			String c_id = request.getParameter("course_id");

			// Execute SQL query to fetch names
	        String sql = "SELECT reg_no FROM Registered_Course WHERE course_id = '" + c_id + "'";
	        PreparedStatement pstmt = conn.prepareStatement(sql);
			
	        ResultSet rs = pstmt.executeQuery();
	        
	        out.println("<ul>");
	        while (rs.next()) {
	            String reg_no = rs.getString("reg_no");
	            out.println("<li>" + reg_no + "</li>");
	        }
	        out.println("</ul>");
	        
	    } catch (Exception e) {
	        System.out.println("Error: " + e.getMessage());
	        response.sendRedirect("404.jsp");
	    }
	%>
	</div>

</body>
</html>