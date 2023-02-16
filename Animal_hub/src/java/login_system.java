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

@WebServlet(urlPatterns = {"/login_system"})
public class login_system extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
    
        try
        {        
            String user,pass,name,age;
            user=request.getParameter("user");
            pass=request.getParameter("pass");
            age=request.getParameter("age");
            name = request.getParameter("name");
            if (pass.length()<7){
                
                out.println("The password too short");
            }
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/Animal", 
                    "app", 
                    "app");
            PreparedStatement ps = c.prepareStatement("insert into USERS values(?,?,?,?)");
            ps.setString(1,user);
            ps.setString(2,name);
            ps.setString(3,age);
            ps.setString(4,pass);

            if (request.getParameter("reg")!=null)
            {
               int i = ps.executeUpdate();
               
               response.sendRedirect(("userpage.html"));
            }

        }
        catch(Exception e){
            out.print(e);
        }
    }

  
 
}
