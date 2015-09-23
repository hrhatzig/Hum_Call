<%-- 
    Document   : index
    Created on : 6 Ιαν 2015, 3:31:05 μμ
    Author     : Chrysostomos
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
        <link rel="icon" href="img/favicon.ico" type="image/x-icon">
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
            <c:import url="_headerNew.jsp"></c:import>
        </header>

        <div id="menu-container">
            
            <div id="menu-1" class="homepage home-section container">
                <c:import url="homeNew.jsp"></c:import>
            </div>
            
            <div id="menu-2" class="content about-section container">
                <c:import url="about.jsp"></c:import>
            </div>
            
            <div id="menu-5" class="content contact-section container">
                <c:import url="contact.jsp"></c:import>
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