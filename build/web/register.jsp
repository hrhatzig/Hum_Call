<%-- 
    Document   : register
    Created on : 6 Ιαν 2015, 9:27:12 μμ
    Author     : Chrysostomos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Hum Call | Register form</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="inner-story animated fadeInRight text-center">
                    <center><h2 class="animated fadeInRight">Registration Form</h2></center>    
                    <div align="center" style="border:1px solid grey" ><br>
                        <form method="post" action="register">
                            Name:<br><input type="text" name="name" id="name" placeholder="Your name" required/><br/>
                            Email:<br><input type="text" name="email" id="email" placeholder="Your email" required/><br/>
                            Password:<br><input type="password" name="pass" id="pass" placeholder="Your password" required/><br/><br>
                            <input type="submit" value="register" /><br>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
