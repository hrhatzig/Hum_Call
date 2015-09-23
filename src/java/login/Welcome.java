import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

/**
 * @author Chrysostomos Chatzigeorgiou
 * hrhatzig@gmail.com
 * Hum Call 2014-2015
 */

public class Welcome extends HttpServlet {

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();  
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        //out.println("Welcome user");
        RequestDispatcher rd = request.getRequestDispatcher("login_success.jsp");
        rd.include(request, response);
        
      }  
}