import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

/**
 * @author Chrysostomos Chatzigeorgiou
 * hrhatzig@gmail.com
 * Hum Call 2014-2015
 */

public class Login extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        String remember = request.getParameter("remember");
        
        if(Validate.checkUser(email, pass))
        {
            HttpSession session = request.getSession();
//            if (session.isNew()) {
//                /*No session available*/
//                System.out.println("No session avlb");
//            } else {
//                /*Sesion already exists*/
//                System.out.println("welcome back");
//            }
            
            boolean rememberMe = false;
            if (remember != null && remember.equalsIgnoreCase("on")) {
                rememberMe = true;
            }

            if (rememberMe) {           //If checkbox value is true
                Cookie cookieUsername = new Cookie("cookieLoginUser", email);
                Cookie cookiePassword = new Cookie("cookieLoginPassword",pass);
                // Make the cookie last 2 days
                cookieUsername.setMaxAge(60 * 60 * 24 * 2);
                cookiePassword.setMaxAge(60 * 60 * 24 * 2);
                response.addCookie(cookieUsername);
                response.addCookie(cookiePassword);
            }

            request.setAttribute("Name", email);
            RequestDispatcher view = request.getRequestDispatcher("homeNew.jsp");
            
            
            /*Set Attribute to session client's username*/
            session.setAttribute("email", email);
            RequestDispatcher rs = request.getRequestDispatcher("Welcome");
            rs.forward(request, response);

        }
        else
        {
           //out.println("Username or Password incorrect");
           HttpSession session = request.getSession();
           RequestDispatcher rs = request.getRequestDispatcher("login_error.jsp");
           rs.include(request, response);
        }
    }  
}
