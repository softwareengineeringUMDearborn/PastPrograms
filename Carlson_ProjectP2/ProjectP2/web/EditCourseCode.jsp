<%-- 
    Document   : EditCourseCode
    Created on : Nov 19, 2014, 10:47:41 PM
    Author     : Cody
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Connect.EditJavaCourse"%>
<!DOCTYPE html>
<%
    String currentID = (String) session.getAttribute("currentID");
    int currentIntID = Integer.parseInt(currentID);
    int newID = Integer.parseInt(request.getParameter("IDZ"));
    String newTitle = request.getParameter("TITLE");
    String newDays = request.getParameter("DAYS");
    int newMax_Capacity = Integer.parseInt(request.getParameter("MAX_CAPACITY"));
    int newCredit = Integer.parseInt(request.getParameter("CREDIT"));
    
    
    EditJavaCourse.changecourse(currentIntID, newID, newTitle, newDays, newMax_Capacity, newCredit);
    response.sendRedirect("StaffPage.jsp");
    %>

