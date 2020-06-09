package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AddProject_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_rl_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_rl_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_rl_forEach_var_items.release();
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
      out.write("        <title>dfdf</title>\r\n");
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
      out.write("             ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/menu.jsp", out, false);
      out.write("\r\n");
      out.write("            <form action =\"AddProject\" enctype=\"multipart/form-data\" method=\"post\" >\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-md-12\">\r\n");
      out.write("                    <div class=\"card border-primary mb-3\">\r\n");
      out.write("                        <div class=\"card-header\">Please fill in you personal information</div>\r\n");
      out.write("                        <div class=\"card-body\">\r\n");
      out.write("                            <div class=\"row\">\r\n");
      out.write("                                <div class=\"col-md-12\">\r\n");
      out.write("                                     <div class=\"form-group\">\r\n");
      out.write("                                        <label>Project Name</label>\r\n");
      out.write("                                        <input type=\"text\" class=\"form-control\" name=\"project_name\" aria-describedby=\"emailHelp\" placeholder=\"Project Name\">\r\n");
      out.write("                                        <small id=\"emailHelp\" class=\"form-text text-muted\">Please the project name.</small>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"row\">\r\n");
      out.write("                                <div class=\"col-md-12\">\r\n");
      out.write("                                     <div class=\"form-group\">\r\n");
      out.write("                                        <label>Project Period</label>\r\n");
      out.write("                                        <input type=\"number\" class=\"form-control\" name=\"project_period\" aria-describedby=\"emailHelp\" placeholder=\"Project period\">\r\n");
      out.write("                                        <small id=\"emailHelp\" class=\"form-text text-muted\">Please insert day period.</small>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            \r\n");
      out.write("                             <div class=\"row\">\r\n");
      out.write("                                <div class=\"col-md-12\">\r\n");
      out.write("                                     <div class=\"form-group\">\r\n");
      out.write("                                        <label>Project Location</label>\r\n");
      out.write("                                        <input type=\"text\" class=\"form-control\" name=\"plocation\" aria-describedby=\"emailHelp\" placeholder=\"Location\">\r\n");
      out.write("                                        <small id=\"emailHelp\" class=\"form-text text-muted\">Please insert the location.</small>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                             </div>\r\n");
      out.write("                            <div class=\"row\">\r\n");
      out.write("                                  <div class=\"col-md-6\">\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                              \r\n");
      out.write("                                    <label>Document</label>\r\n");
      out.write("                                    <input type=\"file\" name=\"document\" class=\"form-control\">\r\n");
      out.write("                                </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                              <div class=\"row\">\r\n");
      out.write("                                    <div class=\"col-md-12\">\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <label>Belong to:</label>\r\n");
      out.write("                                             <select id=\"researcher\" name=\"rID\" class=\"form-control\">\r\n");
      out.write("                                                <option value=\"\">Please assign Reseacher</option>\r\n");
      out.write("                                               ");
      if (_jspx_meth_rl_forEach_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                                             </select>                          \r\n");
      out.write("                                            <small id=\"emailHelp\" class=\"form-text text-muted\">This project belong to ?.</small>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            \r\n");
      out.write("                            <div class=\"row\">\r\n");
      out.write("                                <div class=\"col-md-1\">\r\n");
      out.write("                                    <button type=\"submit\" name=\"submit\" class=\"btn btn-success\">Save</button>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"col-md-1\">\r\n");
      out.write("                                    <button type=\"reset\" name=\"reset\" class=\"btn btn-danger\">Reset</button>\r\n");
      out.write("                                </div>\r\n");
      out.write("                           \r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div> \r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("              </form>\r\n");
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

  private boolean _jspx_meth_rl_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  rl:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_rl_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_rl_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_rl_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_rl_forEach_0.setParent(null);
    _jspx_th_rl_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${GetR}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_rl_forEach_0.setVar("p");
    int[] _jspx_push_body_count_rl_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_rl_forEach_0 = _jspx_th_rl_forEach_0.doStartTag();
      if (_jspx_eval_rl_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                                <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.ID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\r\n");
          out.write("                                               ");
          int evalDoAfterBody = _jspx_th_rl_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_rl_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_rl_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_rl_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_rl_forEach_0.doFinally();
      _jspx_tagPool_rl_forEach_var_items.reuse(_jspx_th_rl_forEach_0);
    }
    return false;
  }
}
