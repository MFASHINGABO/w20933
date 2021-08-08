<%-- 
    Document   : RegisteredCarList
    Created on : Jul 2, 2021, 4:41:41 AM
    Author     : User
--%>

<%@page import="java.util.List"%>
<%@page import="DAO.CarDao"%>
<%@page import="Domain.RegisterCar"%>
<%@page import="Domain.Car"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>20933List</title>
        <style>
            th{
                background-color:black;
                text-align:center;
                color:white;

            }

        </style>

    </head>
    <body>
        <h2>CAR LIST</h2>
        <%

            RegisterCar reg = (RegisterCar) session.getAttribute("RegisterCar");
            if (reg == null) {
                reg = new RegisterCar();
                session.setAttribute("RegisterCar", reg);
            }

        %>        
        <table border="1">
            <thead>
                <tr>
                    <th>PLATE-NO</th>
                    <th>MANUFACTURING DATE</th>
                    <th>COST</th>
                    <th>INSTITUTION</th>
                    <th>BUTTON</th>



                </tr>
            </thead>
            <%                for (Car caa : new Domain.RegisterCar().getCars()) {


            %>
            <tbody>

                <tr>
                    <td><%=caa.getPlate_No()%></td>
                    <td><%=caa.getManufacturing_Date()%></td>
                    <td><%=caa.getCost()%></td>
                    <td><%=caa.getInstitution()%></td>
                    <td><a href="UpdateCar.jsp?a=<%= caa.getPlate_No()%>">Edit</a></td>
                    <td><a href="Deletereq.jsp?a=<%= caa.getPlate_No()%>">Remove</a> </td>
                </tr>
                <% }%>

        </table>

    </body>
</html>
