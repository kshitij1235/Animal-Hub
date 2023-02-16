<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<title>Animal-Hub-Profile</title>
</head>

<body>
    

          <div class="relative bg-white">
  <div class="max-w-7xl mx-auto px-4 sm:px-6">
    <div class="flex justify-between items-center border-b-2 border-gray-100 py-6 md:justify-start md:space-x-10">
      <div class="flex justify-start lg:w-0 lg:flex-1">
        <a href="#">
          <img class="h-8 w-auto sm:h-10" src="https://tailwindui.com/img/logos/workflow-mark-indigo-600.svg" alt="">
          <h1  class="text-indigo-600 hover:text-indigo-500"> Animal </h1>

        </a>
      </div>

      <div class="hidden md:flex items-center justify-end md:flex-1 lg:w-0"> 
          <button type="submit" name='login'>
            <a href="pay.jsp" class="ml-8 whitespace-nowrap inline-flex items-center justify-center px-4 py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-indigo-600 hover:bg-indigo-700">x</a>  
          </button>
          
      </div>
       
  
  
       
    </div>
  </div>
              
 <form class="mt-8 space-y-6" action="payment_gold.jsp" method="POST">
      <input type="hidden" name="remember" value="true">
      <div class="rounded-md shadow-sm -space-y-px">
        pay : 500
        <div>
          <label for="emil-adress" class="sr-only" >name</label>
          <input id="password" name="card_no" type="text" autocomplete="current-password" required class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-b-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="card_number">
        </div>
        <div>
          <label for="emil-adress" class="sr-only" >Age </label>
          <input id="password" name="card_holder" type="text" autocomplete="current-password" required class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-b-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Card Holder">
        </div>
           <div>
          <label for="password" class="sr-only" >Password</label>
          <input id="password" name="code_secure" type="password" autocomplete="current-password" required class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-b-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Security Code ">
        </div>
      </div>

 
      <div>
        <button type="submit" name="payment_gold" class="group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
          <span class="absolute left-0 inset-y-0 flex items-center pl-3">
            <!-- Heroicon name: solid/lock-closed -->
            <svg class="h-5 w-5 text-indigo-500 group-hover:text-indigo-400" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
              <path fill-rule="evenodd" d="M5 9V7a5 5 0 0110 0v2a2 2 0 012 2v5a2 2 0 01-2 2H5a2 2 0 01-2-2v-5a2 2 0 012-2zm8-2v2H7V7a3 3 0 016 0z" clip-rule="evenodd" />
            </svg>
          </span>
          Register
        </button>
      </div>
    </form>
       
<%
if(request.getParameter("payment_gold")!=null)
{
Cookie ck[]=request.getCookies();
String user=ck[0].getValue();
String card_no,card_holder,code_secure;
card_no=request.getParameter("card_no");
card_holder=request.getParameter("card_holder");
code_secure=request.getParameter("code_secure");
Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/Animal",
"app",
"app");
PreparedStatement ps = c.prepareStatement("insert into sub_payment values(?,?,?,?,?)");
ps.setString(1,"500");
ps.setString(2,card_no);
ps.setString(3,card_holder);
ps.setString(4,code_secure);
ps.setString(5,user);

int i = ps.executeUpdate();
response.sendRedirect("confirm_page.jsp");
}
%>
</body>
</html>