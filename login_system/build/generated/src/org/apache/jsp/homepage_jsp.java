package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class homepage_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <!DOCTYPE html>\n");
      out.write("    <html>\n");
      out.write("        <head>\n");
      out.write("            <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("            <title>JSP Page</title>\n");
      out.write("        </head>\n");
      out.write("        <body>\n");
      out.write("               \"<html> \n");
      out.write("    <head> \n");
      out.write("        <title>TODO supply a title</title> \n");
      out.write("        <meta charset=\\\"UTF-8\\\"> \n");
      out.write("        <meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\"> \n");
      out.write("        <link href=\\\"https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css\\\" rel=\\\"stylesheet\\\"> \n");
      out.write("\n");
      out.write("    </head> \n");
      out.write("    <body> \n");
      out.write("         \n");
      out.write("        <div class=\"relative bg-white\\\"> \n");
      out.write("  <div class=\"max-w-7xl mx-auto px-4 sm:px-6\\\"> \n");
      out.write("    <div class=\"flex justify-between items-center border-b-2 border-gray-100 py-6 md:justify-start md:space-x-10\\\"> \n");
      out.write("      <div class=\"flex justify-start lg:w-0 lg:flex-1\\\"> \n");
      out.write("        <a href=\"#\"> \n");
      out.write("          <img class=\"h-8 w-auto sm:h-10\\\" src=\\\"https://tailwindui.com/img/logos/workflow-mark-indigo-600.svg\\\" alt=\\\"\\\"> \n");
      out.write("          <h1  class=\"text-indigo-600 hover:text-indigo-500\\\"> Animal </h1> \n");
      out.write("\n");
      out.write("        </a> \n");
      out.write("      </div> \n");
      out.write("         <h2 class=\\\"mt-6 text-center text-3xl font-extrabold text-gray-900\\\">GOOD MORNING , \"ck[0].getValue()\"</h2> \n");
      out.write("\n");
      out.write("      <div class=\"hidden md:flex items-center justify-end md:flex-1 lg:w-0\\\">  \n");
      out.write("          <button type=\"submit\" name='login'> \n");
      out.write("            <a href='index.html' class=\\\"ml-8 whitespace-nowrap inline-flex items-center justify-center px-4 py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-indigo-600 hover:bg-indigo-700\\\"> Logout</a>   \n");
      out.write("          </button> \n");
      out.write("\n");
      out.write("      </div> \n");
      out.write("    </div> \n");
      out.write("  </div> \n");
      out.write("\n");
      out.write("  <div class=\\\"absolute top-0 inset-x-0 p-2 transition transform origin-top-right md:hidden\\\"> \n");
      out.write("    <div class=\\\"rounded-lg shadow-lg ring-1 ring-black ring-opacity-5 bg-white divide-y-2 divide-gray-50\\\"> \n");
      out.write("      <div class=\\\"pt-5 pb-6 px-5\\\"> \n");
      out.write("        <div class=\\\"flex items-center justify-between\\\"> \n");
      out.write("          <div> \n");
      out.write("            <img class=\\\"h-8 w-auto\\\" src=\\\"https://tailwindui.com/img/logos/workflow-mark-indigo-600.svg\\\" alt=\\\"Workflow\\\"> \n");
      out.write("          </div> \n");
      out.write("          <div class=\\\"-mr-2\\\"> \n");
      out.write("          </div> \n");
      out.write("        </div> \n");
      out.write("           \n");
      out.write("           \n");
      out.write("       \n");
      out.write("           \n");
      out.write("           \n");
      out.write("      <div class=\\\"py-6 px-5 space-y-6\\\"> \n");
      out.write("  \n");
      out.write("        <div> \n");
      out.write("             \n");
      out.write("          <a href=\\\"#\\\" class=\\\"w-full flex items-center justify-center px-4 py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-indigo-600 hover:bg-indigo-700\\\"> Sign up </a> \n");
      out.write("          <p class=\\\"mt-6 text-center text-base font-medium text-gray-500\\\"> \n");
      out.write("            Existing customer? \n");
      out.write("            <a href=\\\"user_page\\\" class=\\\"text-indigo-600 hover:text-indigo-500\\\"> Sign in </a> \n");
      out.write("          </p> \n");
      out.write("        </div> \n");
      out.write("      </div> \n");
      out.write("    </div> \n");
      out.write("  </div> \n");
      out.write("</div> \n");
      out.write("\n");
      out.write("    <form class=\\\"mt-8 space-y-6\\\" action=\\\"homepage\\\" method=\\\"POST\\\"> \n");
      out.write("               \n");
      out.write("        <button type=\\\"submit\\\" name=\\\"reg\\\" class=\\\"group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500\\\"> \n");
      out.write("                make  \n");
      out.write("        </button> \n");
      out.write("          </form> \n");
      out.write("\n");
      out.write("   \n");
      out.write("    </body> \n");
      out.write("</html>\n");
      out.write("        </body>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
