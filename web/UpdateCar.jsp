<%-- 
    Document   : UpdateCar
    Created on : Jul 2, 2021, 4:42:28 AM
    Author     : User
--%>

<%@page import="DAO.CarDao"%>
<%@page import="Domain.Car"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prince20933</title>
    </head>
    <body>
        <h2>UPDATE FORM</h2>
        <%
            Car c = new CarDao().findBYID(request.getParameter("a"));
        %>
        <form action="updatereq.jsp" method="POST">
            <table border="1">

                <tbody>
                    <tr>
                        <td>PLATE-NO</td>
                        <td><input type="text"  value="<%= c.getPlate_No()%>" name="a" required="true" pattern="GR[0-9]{3}[A-Z]"/></td>
                    </tr>
                    <tr>
                        <td>MANUFACTURING-DATE</td>
                        <td><input type="text" value="<%= c.getManufacturing_Date()%>" name="b" /></td>
                    </tr>
                    <tr>
                        <td>COST</td>
                        <td><input type="text" value="<%= c.getCost()%>" name="c" required="true" min="15000000" max="16000000" title="please don't enter cost are not between 1500000 and 16000000  "/></td>
                    </tr>

                    <tr>
                        <td>INSTITUTION</td>
                        <td>
                            <select name="d">
                                <option value="RNP">RNP</option>
                                <option value="RIB">RIB</option>
                                <option value="RRA">RRA</option>

                            </select>
                        </td>
                    </tr>

                    <tr>

                        <td><input type="submit" value="UPDATE"/></td>
                    </tr> 
                </tbody>
            </table>
        </form>
    </body>
</html>
