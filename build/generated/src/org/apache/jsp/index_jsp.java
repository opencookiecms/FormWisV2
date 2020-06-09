package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("<!doctype html>\r\n");
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
      out.write("        <title>Navbar Template for Bootstrap</title>\r\n");
      out.write("\r\n");
      out.write("        <!-- Bootstrap core CSS -->\r\n");
      out.write("        <link href=\"http://localhost/css/bootstrap.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- Custom styles for this template -->\r\n");
      out.write("        <link href=\"http://localhost/css/navbar.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("    <body style=\"background:url(static/bg/bg.jpeg)\">\r\n");
      out.write("\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            <!-- Main component for a primary marketing message or call to action -->\r\n");
      out.write("            <div class=\"jumbotron bg-white\">\r\n");
      out.write("                <h2 class=\"display-3\">Fish Information System of Malaysia Water</h2>\r\n");
      out.write("                <a href=\"/FormWisV2/homepage\" class=\"btn btn-primary\">HOME</a>\r\n");
      out.write("                <hr class=\"my-4\">\r\n");
      out.write("                <p>Not yet become members, come and join us....</p>\r\n");
      out.write("                <p class=\"lead\">\r\n");
      out.write("                    <a class=\"btn btn-primary btn-lg\" href=\"AddResearcher.jsp\" role=\"button\">Register</a>\r\n");
      out.write("                </p>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-md-12\">\r\n");
      out.write("                    <div class=\"card border-primary mb-3\">\r\n");
      out.write("                        <div class=\"card-header\">Login</div>\r\n");
      out.write("                        <div class=\"card-body\">\r\n");
      out.write("                            <form action=\"controller/validator.jsp\" method=\"post\">\r\n");
      out.write("                            <div class=\"row\">\r\n");
      out.write("                               \r\n");
      out.write("                                    <div class=\"col-md-6\">\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <label>Username</label>\r\n");
      out.write("                                            <input type=\"text\" class=\"form-control\" name=\"username\" aria-describedby=\"emailHelp\" placeholder=\"Enter Username\">\r\n");
      out.write("                                            <small id=\"emailHelp\" class=\"form-text text-muted\">Please insert you username.</small>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-md-6\">\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <label>Password</label>\r\n");
      out.write("                                            <input type=\"password\" class=\"form-control\" name=\"password\" aria-describedby=\"emailHelp\" placeholder=\"Enter Password\">\r\n");
      out.write("                                            <small id=\"emailHelp\" class=\"form-text text-muted\">Please enter your password.</small>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                               \r\n");
      out.write("                              \r\n");
      out.write("                            </div>\r\n");
      out.write("                                 <div class=\"row\">\r\n");
      out.write("                                          <div class=\"col-md-4\">\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <button type=\"submit\" name=\"submit\" class=\"btn btn-success\">Login</button>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                 </div>\r\n");
      out.write("                              </form>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                    </div> \r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        </div> <!-- /container -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- Bootstrap core JavaScript\r\n");
      out.write("        ================================================== -->\r\n");
      out.write("        <!-- Placed at the end of the document so the pages load faster -->\r\n");
      out.write("\r\n");
      out.write("        <script>window.jQuery || document.write('<script src=\"static/js/jquery.min.js\"><\\/script>')</script>\r\n");
      out.write("        <script src=\"static/js/bootstrap.min.js\"></script>\r\n");
      out.write("        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
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
