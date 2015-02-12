<%-- 
    Document   : logout
    Created on : Nov 19, 2014, 6:00:54 PM
    Author     : Cody
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("Start.jsp");
%>