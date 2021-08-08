<%-- 
    Document   : SaveCar
    Created on : Jul 2, 2021, 4:39:25 AM
    Author     : User
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="Domain.Car"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PRINCE 20933</title>
    </head>
    <body>
         <%
            Car caa = new Car();

            caa.setPlate_No(request.getParameter("a"));
            Date d = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("b"));
            caa.setManufacturing_Date(d);
            caa.setCost(request.getParameter("c"));
            caa.setInstitution(request.getParameter("d"));
            new Domain.RegisterCar().registerCar(caa);
            session.setAttribute("Message", " SUCCEDED  " + request.getParameter("a") + " " + request.getParameter("b") + " ");
            response.sendRedirect("RegisteredCarList.jsp");

        %>
    </body>
</html>
