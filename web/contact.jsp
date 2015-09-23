<%-- 
    Document   : contact
    Created on : 6 Ιαν 2015, 5:21:46 μμ
    Author     : Chrysostomos
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hum Call | Contact</title>
    </head>

    <body>
        <div class="contact-header text-center">
            <h2 class="animated fadeInLeft">Get in Touch</h2>
            <p class="animated fadeInRight">Feel free to talk to us about anything.</p>
        </div>
        <div class="contact-holder">
            <div class="row">
                <div class="col-md-6 col-sm-12">
<!--                    <div class="googlemap-wrapper animated fadeInLeft">
                        <div id="map_canvas" class="map-canvas">
                        </div>
                    </div>-->
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="contact-form animated fadeInUp">
                        <h4>Send us a Message</h4>
                        <div class="row">
                            <fieldset class="col-md-6">
                                <input type="text" name="name" placeholder="Your name">
                            </fieldset>
                            <fieldset class="col-md-6">
                                <input type="email" name="email" placeholder="Your email">
                            </fieldset>
                            <fieldset class="col-md-12">
                                <input type="text" name="subject" placeholder="Subject">
                            </fieldset>
                            <fieldset class="col-md-12">
                                <textarea name="message" id="message" cols="30" rows="10" placeholder="Describe your Project"></textarea>
                            </fieldset>
                            <fieldset class="col-md-12">
                                <a href="#" class="message-button">Submit Message</a>
                            </fieldset>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>