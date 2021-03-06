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
              
 
    
    /*I am working on showing the student being able to check the classes’ descriptions (timing, instructor, etc.) that he/she is enrolled in. The problem i am having is getting the instructors name of the course. What i am thinking is since i have the courses ID i can look up from the database what the instructors ID by the courses ID and being enrolled as 'teacher' from the registration. Then go to faculty and look up the Instructors Id and print the name. The trouble i am having is the syntax of getting the instructors ID from the two parameters.

I have been using code like this from a single parameter to get values from the database:
Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select registration_id from registration where course_id='" + courseID + "'");

But how do i add another parameter. Lets say i want to get registration_id from registration where course_id= courseID  AND enrolled
*/
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
