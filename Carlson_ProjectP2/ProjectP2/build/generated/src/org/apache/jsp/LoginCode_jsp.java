package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Connection.ConnectionFactory;
import java.sql.*;

public final class LoginCode_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    String userEmail = request.getParameter("Email");  
    String title = request.getParameter("title");
    Class.forName("com.mysql.jdbc.Driver");
    ConnectionFactory connect = new ConnectionFactory(true);
    
        try 
                {
        	connect.load();
		} 
        catch (Exception e) 
		{
			e.printStackTrace();
		}
    
    
    //Statement state = connect.createStatement();
    
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/project_db", "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    if (title.equals("student")){
        rs = st.executeQuery("select email_address from student where email_address='" + userEmail + "'");
        if (rs.next()) {
            session.setAttribute("userEmail", userEmail);
            //out.println("welcome " + userEmail);
            //out.println("<a href='logout.jsp'>Log out</a>");
            response.sendRedirect("StudentPage.jsp");
        } else {
            out.println("Invalid password <a href='index.jsp'>try again</a>");
        }
    }
    else if (title.equals("faculty")){
        rs = st.executeQuery("select email_address from faculty where email_address='" + userEmail + "'");
        if (rs.next()) {
            session.setAttribute("userEmail", userEmail);
            //out.println("welcome " + userEmail);
            //out.println("<a href='logout.jsp'>Log out</a>");
            response.sendRedirect("FacultyPage.jsp");
        } else {
            out.println("Invalid password <a href='index.jsp'>try again</a>");
        }
    }
    else {
        rs = st.executeQuery("select email_address from staff where email_address='" + userEmail + "'");
        if (rs.next()) {
            session.setAttribute("userEmail", userEmail);
            //out.println("welcome " + userEmail);
            //out.println("<a href='logout.jsp'>Log out</a>");
            response.sendRedirect("StaffPage.jsp");
        } else {
            out.println("Invalid password <a href='index.jsp'>try again</a>");
        }
    }

    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
