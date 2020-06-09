package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class profile_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->\r\n");
      out.write("        <meta name=\"description\" content=\"\">\r\n");
      out.write("        <meta name=\"author\" content=\"\">\r\n");
      out.write("        <link rel=\"icon\" href=\"../../favicon.ico\">\r\n");
      out.write("        <link rel=\"canonical\" href=\"https://getbootstrap.com/docs/3.4/examples/navbar/\">\r\n");
      out.write("\r\n");
      out.write("        <title>My Profile</title>\r\n");
      out.write("\r\n");
      out.write("        <!-- Bootstrap core CSS -->\r\n");
      out.write("        <link href=\"http://localhost/css/bootstrap.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- Custom styles for this template -->\r\n");
      out.write("        <link href=\"http://localhost/css/navbar.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("    <body>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/menu.jsp", out, false);
      out.write("\r\n");
      out.write("            <ol class=\"breadcrumb\">\r\n");
      out.write("                <li class=\"breadcrumb-item\"><a href=\"#\">Fish</a></li>\r\n");
      out.write("                <li class=\"breadcrumb-item active\">Fish List</li>\r\n");
      out.write("            </ol>\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-md-12 p-3\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        </div> <!-- /container -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- Bootstrap core JavaScript\r\n");
      out.write("        ================================================== -->\r\n");
      out.write("        <!-- Placed at the end of the document so the pages load faster -->\r\n");
      out.write("\r\n");
      out.write("        <script src=\"static/js/jquery/dist/jquery.min.js\"></script>\r\n");
      out.write("        <script src=\"static/js/bootstrap.min.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"https://cdn.datatables.net/v/bs/dt-1.10.21/datatables.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>");
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
