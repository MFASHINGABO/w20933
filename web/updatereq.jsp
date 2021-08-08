<%-- 
    Document   : updatereq
    Created on : Jul 2, 2021, 8:44:22 AM
    Author     : User
--%>


<%@page import="java.lang.String"%>
<%@page import="java.lang.NullPointerException" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="DAO.CarDao"%>
<%@page import="java.util.Date"%>
<%@page import="Domain.Car"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1></h1>
        <%
            Car sooo = new Car();
            sooo.setPlate_No(request.getParameter("a"));
            Date d = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("b"));
            sooo.setManufacturing_Date(d);
            sooo.setCost(request.getParameter("c"));
            sooo.setInstitution(request.getParameter("d"));
            String msgee = new CarDao().update(sooo);
            session.setAttribute("message", msgee);
            response.sendRedirect("RegisteredCarList.jsp");
        %>
    </body>
</html>
