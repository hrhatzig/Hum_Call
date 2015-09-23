import java.io.IOException;  
import java.io.PrintWriter;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession; 

/**
 * @author Chrysostomos Chatzigeorgiou
 * hrhatzig@gmail.com
 * Hum Call 2014-2015
 */

public class Logout extends HttpServlet {  
        protected void doGet(HttpServletRequest request, HttpServletResponse response)  
                                throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out=response.getWriter();  
            
//            out.print("You are successfully logged out!"); 
            request.getRequestDispatcher("logout.jsp").include(request, response);  
              
            HttpSession session=request.getSession();
      
            session.invalidate();   
              
            out.close();  
    }  
}  