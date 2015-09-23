<%-- 
    Document   : login
    Created on : 6 Ιαν 2015, 8:20:49 μμ
    Author     : Chrysostomos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Hum Call | login form</title>
    </head>
    <body>
        
        <%Cookie[] cookies = request.getCookies();
            String name = "", pass = "";
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("cookieLoginUser")) {
                        name = cookie.getValue();
                    }
                    if (cookie.getName().equals("cookieLoginPassword")) {
                        pass = cookie.getValue();
                    }
                }
            }
        %>
        
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="inner-story animated fadeInRight text-center">
                    <center><h2 class="animated fadeInRight">Login Page</h2></center>    
                    <div align="center" style="border:1px solid grey" ><br>
                        <form method="post" action="login">
                            Email:<br><input type="text" name="email" id="login" placeholder="Email" value="<%=name%>" required/><br/>
                            Password:<br><input type="password" name="pass" id="password" placeholder="Password" value="<%=pass%>" required/><br/><br>
                            <input type="checkbox" name="remember" id="remember">
                            <label for="remember">Remember me</label><br><br>
                            
                            <input type="submit" value="login" /><br><br>
                        </form><br>
                    </div>            
                </div>
            </div>
        </div>
    </body>
</html>