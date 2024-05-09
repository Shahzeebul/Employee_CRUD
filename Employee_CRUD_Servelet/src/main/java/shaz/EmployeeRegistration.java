package shaz;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/employeeRegistration")
public class EmployeeRegistration extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        
        String name = req.getParameter("name");
        int age = Integer.parseInt(req.getParameter("age"));
        String position = req.getParameter("position");
        double salary = Double.parseDouble(req.getParameter("salary"));
        String email = req.getParameter("email");
        String password = req.getParameter("password"); // Add password parameter
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/EmployeeDB", "root", "root");
            
            PreparedStatement ps = con.prepareStatement("insert into Employee (Name, Age, Position, Salary, Email, Password) values(?, ?, ?, ?, ?, ?)");
            ps.setString(1, name);
            ps.setInt(2, age);
            ps.setString(3, position);
            ps.setDouble(4, salary);
            ps.setString(5, email);
            ps.setString(6, password); // Set password parameter
            
            int count = ps.executeUpdate();
            if(count > 0) {
                resp.setContentType("text/html");
                out.print("<h3 style='color:green'>Employee registered successfully</h3>");
                
                RequestDispatcher rd = req.getRequestDispatcher("/create_employee.jsp");
                rd.include(req, resp);
            } else {
                resp.setContentType("text/html");
                out.print("<h3 style='color:red'>Employee not registered due to some error</h3>");
                
                RequestDispatcher rd = req.getRequestDispatcher("/create_employee.jsp");
                rd.include(req, resp);
            }
        } catch (Exception e) {
            e.printStackTrace();
            
            resp.setContentType("text/html");
            out.print("<h3 style='color:red'>Exception occurred: " + e.getMessage() + "</h3>");
            
            RequestDispatcher rd = req.getRequestDispatcher("/create_employee.jsp");
            rd.include(req, resp);
        }
    }
}
