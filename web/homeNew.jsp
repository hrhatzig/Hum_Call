<%-- 
    Document   : home
    Created on : 6 Ιαν 2015, 4:45:37 μμ
    Author     : Chrysostomos
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home | Hum Call</title>
    </head>
    <body>
        <div id="menu-container">
            <div id="menu-1" class="homepage home-section container">
                <div class="home-intro text-center">
                    <% String Name = (String) request.getAttribute("Name"); %>
                    <h2 class="animated fadeInRight">Welcome to  
                        <span class="blue">Hum </span><span class="green">Call</span></h2>
                        
                    <p class="animated fadeInRight">You are successfully logged in!
                        <br>Welcome <%=Name %>!
                    </p>    
                </div>
            </div>	  
        </div>
    </body>
</html>
