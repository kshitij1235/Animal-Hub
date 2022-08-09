package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class update_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css\" rel=\"stylesheet\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("<div class=\"hidden sm:block\" aria-hidden=\"true\">\n");
      out.write("  <div class=\"py-5\">\n");
      out.write("    <div class=\"border-t border-gray-200\"></div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"mt-10 sm:mt-0\">\n");
      out.write("  <div class=\"md:grid md:grid-cols-3 md:gap-6\">\n");
      out.write("    <div class=\"md:col-span-1\">\n");
      out.write("      <div class=\"px-4 sm:px-0\">\n");
      out.write("        <h3 class=\"text-lg font-medium leading-6 text-gray-900\">Personal Information</h3>\n");
      out.write("        <p class=\"mt-1 text-sm text-gray-600\">Use a permanent address where you can receive mail.</p>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"mt-5 md:mt-0 md:col-span-2\">\n");
      out.write("      <form action=\"#\" method=\"POST\">\n");
      out.write("        <div class=\"shadow overflow-hidden sm:rounded-md\">\n");
      out.write("          <div class=\"px-4 py-5 bg-white sm:p-6\">\n");
      out.write("            <div class=\"grid grid-cols-6 gap-6\">\n");
      out.write("              <div class=\"col-span-6 sm:col-span-3\">\n");
      out.write("                <label for=\"first-name\" class=\"block text-sm font-medium text-gray-700\">First name</label>\n");
      out.write("                <input type=\"text\" name=\"first-name\" id=\"first-name\" autocomplete=\"given-name\" class=\"mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md\">\n");
      out.write("              </div>\n");
      out.write("\n");
      out.write("              <div class=\"col-span-6 sm:col-span-3\">\n");
      out.write("                <label for=\"last-name\" class=\"block text-sm font-medium text-gray-700\">Last name</label>\n");
      out.write("                <input type=\"text\" name=\"last-name\" id=\"last-name\" autocomplete=\"family-name\" class=\"mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md\">\n");
      out.write("              </div>\n");
      out.write("\n");
      out.write("              <div class=\"col-span-6 sm:col-span-4\">\n");
      out.write("                <label for=\"email-address\" class=\"block text-sm font-medium text-gray-700\">Email address</label>\n");
      out.write("                <input type=\"text\" name=\"email-address\" id=\"email-address\" autocomplete=\"email\" class=\"mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md\">\n");
      out.write("              </div>\n");
      out.write("\n");
      out.write("              <div class=\"col-span-6 sm:col-span-3\">\n");
      out.write("                <label for=\"country\" class=\"block text-sm font-medium text-gray-700\">Country</label>\n");
      out.write("                <select id=\"country\" name=\"country\" autocomplete=\"country-name\" class=\"mt-1 block w-full py-2 px-3 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm\">\n");
      out.write("                  <option>United States</option>\n");
      out.write("                  <option>Canada</option>\n");
      out.write("                  <option>Mexico</option>\n");
      out.write("                </select>\n");
      out.write("              </div>\n");
      out.write("\n");
      out.write("              <div class=\"col-span-6\">\n");
      out.write("                <label for=\"street-address\" class=\"block text-sm font-medium text-gray-700\">Street address</label>\n");
      out.write("                <input type=\"text\" name=\"street-address\" id=\"street-address\" autocomplete=\"street-address\" class=\"mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md\">\n");
      out.write("              </div>\n");
      out.write("\n");
      out.write("              <div class=\"col-span-6 sm:col-span-6 lg:col-span-2\">\n");
      out.write("                <label for=\"city\" class=\"block text-sm font-medium text-gray-700\">City</label>\n");
      out.write("                <input type=\"text\" name=\"city\" id=\"city\" autocomplete=\"address-level2\" class=\"mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md\">\n");
      out.write("              </div>\n");
      out.write("\n");
      out.write("              <div class=\"col-span-6 sm:col-span-3 lg:col-span-2\">\n");
      out.write("                <label for=\"region\" class=\"block text-sm font-medium text-gray-700\">State / Province</label>\n");
      out.write("                <input type=\"text\" name=\"region\" id=\"region\" autocomplete=\"address-level1\" class=\"mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md\">\n");
      out.write("              </div>\n");
      out.write("\n");
      out.write("              <div class=\"col-span-6 sm:col-span-3 lg:col-span-2\">\n");
      out.write("                <label for=\"postal-code\" class=\"block text-sm font-medium text-gray-700\">ZIP / Postal code</label>\n");
      out.write("                <input type=\"text\" name=\"postal-code\" id=\"postal-code\" autocomplete=\"postal-code\" class=\"mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md\">\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"px-4 py-3 bg-gray-50 text-right sm:px-6\">\n");
      out.write("            <button type=\"submit\" class=\"inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500\">Save</button>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </form>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
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
