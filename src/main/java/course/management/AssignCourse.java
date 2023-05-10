package course.management;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AssignCourse")
public class AssignCourse extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String db_url = "jdbc:mysql://localhost:3306/course_management_system";
	    String db_user = "root";
	    String db_pass = "helloworld69";
	    
	    try {
	    	Class.forName("com.mysql.jdbc.Driver");
	    	Connection conn = DriverManager.getConnection(db_url, db_user, db_pass);

	    	String sql = "INSERT INTO Assigned_Course (teacher_uname, course_id) VALUES (?, ?)";
	    	
	    	PreparedStatement pstmt = conn.prepareStatement(sql);
	    	
			String c_id = request.getParameter("course_id");
			String t_name = request.getParameter("username");
			
			pstmt.setString(1, t_name);
			pstmt.setString(2, c_id);
	        
	        int rowsInserted = pstmt.executeUpdate();
	        
	        if (rowsInserted > 0) {
	        	System.out.println("Data Inserted");
	        	response.sendRedirect("admin.jsp");
	        }
	    } catch (SQLException | ClassNotFoundException ex) {
	        System.out.println("An error occurred while inserting a new user: " + ex.getMessage());
	        response.sendRedirect("404.jsp");
	    }
	}

}
