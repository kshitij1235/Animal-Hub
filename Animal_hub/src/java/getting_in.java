import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;


@WebServlet(urlPatterns = {"/getting_in"})
public class getting_in extends HttpServlet {


    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("tid doPost(HttpServletRequest request, HttpServletResponse response)\n" +
"            text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
    
        if (request.getParameter("login")!=null){
        response.sendRedirect("userpage");
        }
            
        try
        {        
            String user,pass;
            user=request.getParameter("user");
            pass=request.getParameter("pass");
            
            if (user=="admin" && pass=="admin")
            {
                response.sendRedirect("admin.jsp");
            }
            
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/Animal",
                    "app", 
                    "app");
             Statement stmt = c.createStatement();  

             ResultSet rs = stmt.executeQuery("SELECT EMAIL, PASSWORD FROM USERS WHERE EMAIL ='"+user+"' AND PASSWORD='"+pass+"'");  
             if (rs.next())
             {

                Cookie ck=new Cookie("user",user);
                response.addCookie(ck);
                stmt.close();
                c.close();
                response.sendRedirect("main_page.jsp");
             }
             else{
                 response.sendRedirect("userpage.html");
             }
             
        }
        catch(Exception e){
            out.print(e);
        }
    }
}
