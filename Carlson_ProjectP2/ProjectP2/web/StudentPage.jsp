<%-- 
    Document   : StudentPage
    Created on : Nov 18, 2014, 11:20:27 PM
    Author     : Cody
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if ((session.getAttribute("userEmail") == null) || (session.getAttribute("userEmail") == "")) {
%>
You are not logged in<br/>
<a href="Start.jsp">Please Login</a>
<%} else {
%>
STUDENT
Welcome <%=session.getAttribute("userEmail")%>
<br>
<a href='logout.jsp'>Log out</a>

<FORM NAME="EditS" ACTION="StudentInfo.jsp" METHOD="POST">
    <input type="submit" value="Edit Information" />
</form>
<FORM NAME="CheckS" ACTION="StudentClasses.jsp" METHOD="POST">
    <input type="submit" value="Enrolled Classes" />
</form>
<%
    }
%>