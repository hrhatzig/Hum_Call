<%-- 
    Document   : humCall
    Created on : 9 Ιαν 2015, 4:16:30 μμ
    Author     : Chrysostomos
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml"xmlns:v="urn:schemas-microsoft-com:vml">
    
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
                
                
            <style>
                table {
                    /*width:100%;*/
                }
                table, th, td {
                    border: 1px solid black;
                    border-collapse: collapse;
                }
                th, td {
                    padding: 5px;
                    text-align: left;
                }
                table#t01 tr:nth-child(even) {
                    background-color: #eee;
                }
                table#t01 tr:nth-child(odd) {
                   background-color:#fff;
                }
                table#t01 th	{
                    background-color: black;
                    color: white;
                }
            </style>
    </head>
    <body>
        <header class="site-header container animated fadeInDown">
            <c:import url="_headerNew.jsp"></c:import>
        </header>
        <center>
        <div class="Hum Call">
            <% String[][] DB = (String[][]) request.getAttribute("DB"); %>
<!--            <div class="Gateway SV4J">
                <h2><b>Gateway SV4J</b></h2>
                    <table id="t01">
                        <tr>
                            <th>IRC </th>
                            <th>Ctry</th>
                            <th>Gateway</th>
                            <th>Last In (UTC)</th>
                            <th>Last Out (UTC)</th>
                            <th>Last Act (UTC)</th>
                            <th>QTH</th>
                            <th>Software-Rev</th>
                            <th>Package-Rev</th>
                            <th>Upd Err</th>
                            <th>WD</th>
                            <th>IRC Srv</th>
                        </tr>
                            
                        <tr>
                            <td><%=DB[0][0] %> <%=DB[1][0] %></td>
                            <td><%=DB[6][0] %></td>
                            <td><%=DB[9][0] %></td>
                            <td><%=DB[11][0] %></td>
                            <td><%=DB[14][0] %></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </table>
            </div>
            <div class="Repeater">
                <h2><b>Repeater</b></h2>
                <table id="t01">
                    <tr>
                        <th>Nr.</th>
                        <th>RPT</th>		
                        <th>Repeater</th>
                        <th>Last Act (UTC)</th>
                        <th>QTH</th>
                        <th>URL</th>
                        <th>CCS DTMF</th>
                        <th>Latitude Longitude</th>
                        <th>QRG/offset (MHz)</th>
                        <th>Range AGL</th>
                        <th>Software version</th>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
            </div>
            
            <div class="Configuration">
                <h2><b>Configuration</b></h2>
                <table id="t01">
                    <tr>
                        <th>ircDDB-Net</th>
                        <th>APRS-Host</th>		
                        <th>CCS</th>
                        <th>DCS</th>
                        <th>DExtra</th>
                        <th>DPlus</th>
                        <th>D-Rats</th>
                        <th>Info</th>
                        <th>ircDDB</th>
                        <th>Echo</th>
                        <th>Log</th>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
            </div>
             
            <div class="Reflection Links">
                <h2><b>Reflector Links</b></h2>
                <table id="t01">
                    <tr>
                        <th>Repeater</th>
                        <th>Default</th>		
                        <th>Auto</th>
                        <th>Timer</th>
                        <th>Link</th>
                        <th>Linked to</th>
                        <th>Protocol</th>
                        <th>Direction</th>
                        <th>Last Change (UTC)</th>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
            </div>
            
            <div class="CCS Connects">
                <h2><b>CCS Connects</b></h2>
                <table id="t01">
                    <tr>
                        <th>Repeater</th>
                        <th>Linked to</th>		
                        <th>Protocol</th>
                        <th>Direction</th>
                        <th>Last Change (UTC)</th>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
            </div>
            
            <div class="Dongle Connects">
                <h2><b>Dongle Connects</b></h2>
                <table id="t01">
                    <tr>
                        <th>Repeater</th>
                        <th>Linked to</th>		
                        <th>Protocol</th>
                        <th>Direction</th>
                        <th>Last Change (UTC)</th>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
            </div>-->
            <p>Only results for <span class="blue">Gateway SV4J</span> are available now.</p>
            <div class="animated fadeInRight" >
                <h2><span class="blue">LastHeard</span></h2>
                <table id="t01">
                    <tr>
                        <th><span class="green">Nr.</span></th>
                        <th><span class="green">Date/Time (UTC)</span></th>		
                        <th><span class="green">Callsign</span></th>
                        <th><span class="green">ID</span></th>
                        <th><span class="green">Rptr1</span></th>
                        <th><span class="green">Rptr2</span></th>
                        <th><span class="green">UrCall</span></th>
                    </tr>
                    <% for(int j=0; j<5 ; j++) { %>
                        <tr>
                            <td bgcolor="#FF0000"><%=j %></td>
                            <td bgcolor="#FFFFCC"><%=DB[0][j] %> <%=DB[1][0] %></td>
                            <td bgcolor="#FFFFCC"><%=DB[6][j] %></td>
                            <td bgcolor="#FFFFCC"><%=DB[7][j] %></td>
                            <td bgcolor="#FFFFCC"><%=DB[11][j] %></td>
                            <td bgcolor="#FFFFCC"><%=DB[14][j] %></td>
                            <td bgcolor="#FFFFCC"><%=DB[9][j] %></td>
                        </tr>
                    <%} %>
                </table>
            </div>
        </div>
                            </center>
        
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