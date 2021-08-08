<%-- 
    Document   : RegistrationCar
    Created on : Jul 2, 2021, 4:40:06 AM
    Author     : User
--%>

<%@page import="DAO.CarDao"%>
<%@page import="Domain.Car"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PRINCE 20933</title>
    </head>
    <body>

        <h2>CAR REG INFO</h2>
        <%
            String messa = (String) session.getAttribute("msq");
            if (messa != null) {

        %>  
        <h2><%= messa%></h2>
        <%
        } else {
        %>

        <% }%>


        <form action="SaveCar.jsp" method="POST">
            <table border="1">

                <tbody>
                    <tr>
                        <td>PLATE-NO</td>
                        <td><input type="text" editable="false" value="" name="a" required="true" pattern="GR[0-9]{3}[A-Z]" title="please write in write in right way example:GR123L"/></td>
                    </tr>
                    <tr>
                        <td>MANUFACTURING-DATE</td>
                        <td><input type="text" value="" name="b" required="true"/></td>
                    </tr>
                    <tr>
                        <td>COST</td>
                        <td><input type="text" value="" name="c" required="true" min="1500000" max="16000000" title="please cost must be between 1500000-16000000"/></td>
                    </tr>

                    <tr>
                        <td>INSTITUTION</td>
                        <td>
                            <select name="d">
                                <option value="RNP">RNP</option>
                                <option value="RIB">RIB</option>
                                <option value="RAA">RAA</option>

                            </select>
                        </td>
                    </tr>

                    <tr>

                        <td><input type="submit" value="SAVE"/></td>
                    </tr> 
                </tbody>
            </table>

        </form>
    </body>
</html>
