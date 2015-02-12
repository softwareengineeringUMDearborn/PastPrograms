<%-- 
    Document   : StudentClasses
    Created on : Nov 22, 2014, 1:27:37 PM
    Author     : Cody2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import="Connect.ConnectionFactory"%>
<!DOCTYPE html>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/project_db", "root", "");
    

    String email = (String) session.getAttribute("userEmail");            
    
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select ID from student where email_address='" + email + "'");
     if (!rs.next()) {
        response.sendRedirect("NotRegisteredS.jsp");
    }
    else{
        String studentID = rs.getString(1);
        session.setAttribute("studentID", studentID);
        
        
        Statement stReg = con.createStatement();
        ResultSet rsReg;
        rsReg = stReg.executeQuery("select * from registration where registration_id='" + studentID + "'");
        if (!rsReg.next()) {
            response.sendRedirect("NotRegisteredS.jsp");
        }
        else{
            String Term = rsReg.getString(2);
            String courseID = rsReg.getString(4);
            String Grade = rsReg.getString(6);
            session.setAttribute("Term", Term);
            session.setAttribute("courseID", courseID);
            session.setAttribute("Grade", Grade);
            
            
            Statement stCour = con.createStatement();
            ResultSet rsCour;
            rsCour = stCour.executeQuery("select * from course where ID='" + courseID + "'");
            if (!rsCour.next()) {
                response.sendRedirect("NotRegisteredS.jsp");
            }
            else{
                String courseTitle = rsCour.getString(2);
                String courseDays = rsCour.getString(3);
                String courseCapacity = rsCour.getString(4);
                String courseCredit = rsCour.getString(5);
                
                
                
                Statement stPro = con.createStatement();
                ResultSet rsPro;
                rsPro = stPro.executeQuery("select registration_id from registration where course_id='" + courseID + "' and enrolled_as ='teacher'");
                if (!rsPro.next()) {
                    response.sendRedirect("NotRegisteredS.jsp");
                 }
                else{
                    String teacherID = rsPro.getString(1);
                    
                    
                    Statement stName = con.createStatement();
                    ResultSet rsName;
                    rsName = stName.executeQuery("select name from faculty where ID='" + teacherID + "'");
                    if (!rsName.next()) {
                        response.sendRedirect("NotRegisteredS.jsp");
                    }
                    else{
                        String teacherName = rsName.getString(1);
              
 
    
    
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Courses</title>
    </head>
    <body>
        Student ID: <%=studentID%>,
        
        Instructor: <%=teacherName%>,
        Course ID: <%=courseID%>,
        Title: <%=courseTitle%>,
        Days: <%=courseDays%>,
        Capacity: <%=courseCapacity%>,
        Credits: <%=courseCredit%>,
        
        
        Grade: <%=Grade%>
        <br>
    </body>
    <%  }
       }
      }
        }
}
%>
</html>
