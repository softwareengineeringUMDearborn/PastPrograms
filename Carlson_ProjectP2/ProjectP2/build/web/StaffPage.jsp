<%-- 
    Document   : StaffPage
    Created on : Nov 18, 2014, 11:18:08 PM
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
STAFF
Welcome <%=session.getAttribute("userEmail")%>
<br>
<a href='logout.jsp'>Log out</a>


<FORM NAME="AddS" ACTION="AddStudent.jsp" METHOD="POST">
    <input type="submit" value="Add Student" />
</form>
<FORM NAME="AddF" ACTION="AddFaculty.jsp" METHOD="POST">
    <input type="submit" value="Add Faculty" />
</form>
<FORM NAME="AddC" ACTION="AddCourse.jsp" METHOD="POST">
    <input type="submit" value="Add Course" />
</form>
<FORM NAME="FindC" ACTION="FindCourse.jsp" METHOD="POST">
    <input type="submit" value="Edit Course" />
</form>
<%
    }
%>