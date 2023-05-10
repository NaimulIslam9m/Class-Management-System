package course.management;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Registration")
public class Registration extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 	
		String db_url = "jdbc:mysql://localhost:3306/course_management_system";
	    String db_user = "root";
	    String db_pass = "helloworld69";
	    
	
	    try {
	    	Class.forName("com.mysql.jdbc.Driver");
	    	Connection conn = DriverManager.getConnection(db_url, db_user, db_pass);
	
	        String role = request.getParameter("role");
			String uname = request.getParameter("username");
			String email = request.getParameter("email");
			String pass = request.getParameter("password"); 
	        String conf_pass = request.getParameter("confirmPassword");
	        
	        if (!pass.equals(conf_pass)) {
	        	response.sendRedirect("registration.jsp");
	        	return;
	        }
	        
	        String sql = "INSERT INTO " + role + " (";
	        
	        if (role.equals("Student")) {
	        	sql += "reg_no";
	        } else {
	        	sql += "uname";
	        }
	        
	        sql += ", email, pass) VALUES (?, ?, ?)";
	        
	        PreparedStatement pstmt = conn.prepareStatement(sql);
	        
	        pstmt.setString(1, uname);
	        pstmt.setString(2, email);
	        pstmt.setString(3, pass);
	
	        // Execute the SQL statement
	        int rowsInserted = pstmt.executeUpdate();
	        
	        if (rowsInserted > 0) {
	        	response.sendRedirect("login.jsp");
	        }
	        
	    } catch (SQLException | ClassNotFoundException ex) {
	        System.out.println("An error occurred while inserting a new user: " + ex.getMessage());
	        response.sendRedirect("404.jsp");
	    }
	}

}
