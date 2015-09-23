import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.*;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Chrysostomos Chatzigeorgiou
 * hrhatzig@gmail.com
 * Hum Call 2014-2015
 */

public class ReadFile extends HttpServlet {
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
            response.setContentType("text/html");

            //read the file
            String filename = "/img/lastheard.log";
            
            ServletContext context = getServletContext();

            //
            // First get the file InputStream using ServletContext.getResourceAsStream()
            // method.
            //
            InputStream is = context.getResourceAsStream(filename);
            if (is != null) {
                InputStreamReader isr = new InputStreamReader(is);
                BufferedReader reader = new BufferedReader(isr);
                PrintWriter writer = response.getWriter();
                String text = "";
                String text_2 = "";
                String DBa = "";
                String[][] DB = new String[22][5];
                int j=0;
                //
                // We read the file line by line and later will be displayed on the 
                // browser page.
                //
                while ((text = reader.readLine()) != null) {
//                    writer.println(text);
                    text_2 = text;
                    StringTokenizer Tok = new StringTokenizer(text_2);
                    int n=0, i=0;

                    while (Tok.hasMoreElements()){
                            //writer.println("" + ++n +": "+Tok.nextElement()+"\n");
                            //System.out.println(": "+Tok.nextElement());
                            //break;
                            DB[i][j] = Tok.nextElement().toString();
                            writer.println(j+": "+DB[i][j]);
                            //writer.println("\n");
                            System.out.println("\n "+DB[i][j]+"\n");
                            i++;
                    } 
                    
                    try{
                        /**
                         * Endiktikh ulopoihsh me Data Base!
                         */

//                        //loading driver 
//                        Class.forName("com.mysql.jdbc.Driver");
//
//                        //creating connection with the database 
//                        Connection  con=DriverManager.getConnection
//                                     ("jdbc:mysql://localhost:3306/hum_call","hrhatzig","1234");
//                        System.out.println("Ok with the connection\n");
//
//                        PreparedStatement ps=con.prepareStatement
//                                  ("insert into lastheard values(?,?,?,?,?)");
//
//                        ps.setString(1, DB[6][j]);
//                        System.out.println(j+" :EDW:  "+DB[6][j]);
//                        ps.setString(2, DB[6][j]);
//                        ps.setString(3, DB[6][j]);
//                        ps.setString(4, DB[1][j]);
//                        ps.setString(5, DB[1][j]);
                        

                    }
                    catch(Exception se) {
                        se.printStackTrace();
                    }
                    j++;
                }
                request.setAttribute("DB", DB);
                RequestDispatcher view = request.getRequestDispatcher("humCall.jsp");
                view.forward(request, response);
            }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
}