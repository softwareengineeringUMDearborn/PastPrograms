<%-- 
    Document   : EditFacultyCode
    Created on : Nov 21, 2014, 6:27:54 PM
    Author     : Cody2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Connect.EditFacultyInfo"%>
<!DOCTYPE html>
<%
    String currentID = (String) session.getAttribute("currentID");
    int currentIntID = Integer.parseInt(currentID);
    String newName = request.getParameter("NAME");
    String newAddress = request.getParameter("ADDRESS");
    String newPhone = request.getParameter("PHONE");
    String newEmail = request.getParameter("EMAIL");
    
    
    EditFacultyInfo.changeFacultyInfo(currentIntID, newName, newAddress, newPhone, newEmail);
    response.sendRedirect("FacultyPage.jsp");
    %>