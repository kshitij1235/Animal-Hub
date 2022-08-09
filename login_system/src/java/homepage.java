import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/homepage"})
public class homepage extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
     
            Cookie ck[]=request.getCookies();  
           
            
            out.println(
            "<html>\n" +
"    <head>\n" +
"        <title>TODO supply a title</title>\n" +
"        <meta charset=\"UTF-8\">\n" +
"        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n" +
"        <link href=\"https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css\" rel=\"stylesheet\">\n" +
"\n" +
"    </head>\n" +
"    <body>\n" +
"        \n" +
"        <div class=\"relative bg-white\">\n" +
"  <div class=\"max-w-7xl mx-auto px-4 sm:px-6\">\n" +
"    <div class=\"flex justify-between items-center border-b-2 border-gray-100 py-6 md:justify-start md:space-x-10\">\n" +
"      <div class=\"flex justify-start lg:w-0 lg:flex-1\">\n" +
"        <a href=\"#\">\n" +
"          <img class=\"h-8 w-auto sm:h-10\" src=\"https://tailwindui.com/img/logos/workflow-mark-indigo-600.svg\" alt=\"\">\n" +
"          <h1  class=\"text-indigo-600 hover:text-indigo-500\"> Animal </h1>\n" +
"\n" +
"        </a>\n" +
"      </div>\n" +
"         <h2 class=\"mt-6 text-center text-3xl font-extrabold text-gray-900\">GOOD MORNING , "+ck[0].getValue()+"</h2>\n" +
"\n" +
"      <div class=\"hidden md:flex items-center justify-end md:flex-1 lg:w-0\"> \n" +
"          <button type=\"submit\" name='login'>\n" +
"            <a href=\'index.html' class=\"ml-8 whitespace-nowrap inline-flex items-center justify-center px-4 py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-indigo-600 hover:bg-indigo-700\"> Logout</a>  \n" +
"          </button>\n" +
"\n" +
"      </div>\n" +
"    </div>\n" +
"  </div>\n" +
"\n" +
"  <div class=\"absolute top-0 inset-x-0 p-2 transition transform origin-top-right md:hidden\">\n" +
"    <div class=\"rounded-lg shadow-lg ring-1 ring-black ring-opacity-5 bg-white divide-y-2 divide-gray-50\">\n" +
"      <div class=\"pt-5 pb-6 px-5\">\n" +
"        <div class=\"flex items-center justify-between\">\n" +
"          <div>\n" +
"            <img class=\"h-8 w-auto\" src=\"https://tailwindui.com/img/logos/workflow-mark-indigo-600.svg\" alt=\"Workflow\">\n" +
"          </div>\n" +
"          <div class=\"-mr-2\">\n" +
"          </div>\n" +
"        </div>\n" +
"          \n" +
"          \n" +
"      \n" +
"          \n" +
"          \n" +
"      <div class=\"py-6 px-5 space-y-6\">\n" +
" \n" +
"        <div>\n" +
"            \n" +
"          <a href=\"#\" class=\"w-full flex items-center justify-center px-4 py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-indigo-600 hover:bg-indigo-700\"> Sign up </a>\n" +
"          <p class=\"mt-6 text-center text-base font-medium text-gray-500\">\n" +
"            Existing customer?\n" +
"            <a href=\"user_page\" class=\"text-indigo-600 hover:text-indigo-500\"> Sign in </a>\n" +
"          </p>\n" +
"        </div>\n" +
"      </div>\n" +
"    </div>\n" +
"  </div>\n" +
"</div>\n" +
"\n" +
"    <form class=\"mt-8 space-y-6\" action=\"homepage\" method=\"POST\">\n" +
"              \n" +
"        <button type=\"submit\" name=\"reg\" class=\"group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500\">\n" +
"                make \n" +
"        </button>\n" +
"          </form>\n" +
"\n" +
"  \n" +
"    </body>\n" +
"</html>");
            
        }
        catch(Exception e ){out.println(e);}
    }

   
}
