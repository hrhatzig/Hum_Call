<%-- 
    Document   : login_error
    Created on : 8 Ιαν 2015, 1:04:10 μμ
    Author     : Chrysostomos
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, minimal-ui">
        <title>Hum Call</title>

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/simple-line-icons.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/templatemo_style.css">
    </head>


    <body>
        <header class="site-header container animated fadeInDown">
            <c:import url="_header.jsp"></c:import>
        </header>
        <div id="menu-container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <div class="inner-story animated fadeInRight text-center">
                        <center><h2 class="animated fadeInRight">Login Page</h2></center>    
                        <div align="center" style="border:1px solid grey" ><br>
                            <form method="post" action="login">
                                Email ID:<br><input type="text" name="email" /><br/>
                                Password:<br><input type="password" name="pass" /><br/><br>
                                <input type="submit" value="login" /><br><br>
                                <a class="animated fadeInLeft" href="/neo_project/register.jsp">
                                    <p>Create an account now!</p></a>
                                
                                <p>Username or Password incorrect! Please try again.<br>
                                Do you have an account? Try Hum Call now! It's Free!</p>
                            </form><br>
                        </div>            
                    </div>
                </div>
            </div>
        </div>

        <!-- _footer.jsp -->
        <c:import url="_footer.jsp"></c:import>
        <!-- templatemo 421 raleway -->
        <span class="border-top"></span>
        <span class="border-left"></span>
        <span class="border-right"></span>
        <span class="border-bottom"></span>
        <span class="shape-1"></span>
        <span class="shape-2"></span>

        <script src="js/jquery.min.js"></script>
        <script src="js/templatemo_custom.js"></script>

    </body>
</html>
