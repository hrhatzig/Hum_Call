import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

/**
 * @author Chrysostomos Chatzigeorgiou
 * hrhatzig@gmail.com
 * Hum Call 2014-2015
 */

public class Register extends HttpServlet {

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
	
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        try{
        
        //loading driver 
        Class.forName("com.mysql.jdbc.Driver");

	//creating connection with the database 
          Connection  con=DriverManager.getConnection
                     ("jdbc:mysql://localhost:3306/hum_call","hrhatzig","1234");

        PreparedStatement ps=con.prepareStatement
                  ("insert into Student values(?,?,?)");

        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, pass);
        int i=ps.executeUpdate();
        String msg = " ";
        if(i>0)
        {
            HttpSession session = request.getSession();
            session.setAttribute("msg", "You are sucessfully register");
            
            msg = "You are sucessfully register";
            RequestDispatcher rd = request.getRequestDispatcher("register_success.jsp");
            rd.include(request, response);
            
        }else {
            msg = "You are not register";
        }
        
        }catch(Exception se)
        {
            se.printStackTrace();
        }
	
      }
  }