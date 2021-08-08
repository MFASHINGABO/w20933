<%-- 
    Document   : Deletereq
    Created on : Jul 2, 2021, 10:07:45 AM
    Author     : User
--%>

<%@page import="DAO.CarDao"%>
<%@page import="Domain.Car"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
         <%
            Car st = new CarDao().findBYID(request.getParameter("a"));
              CarDao cd = new  CarDao();
            cd.delete(st);
            session.setAttribute("message", st);
            response.sendRedirect("RegisteredCarList.jsp");
        %>
    </body>
</html>
