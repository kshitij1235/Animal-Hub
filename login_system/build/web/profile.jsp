<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
        <title>Animal-Hub-Profile</title>
    </head>
    <body>
        
        <div class="relative bg-white">
  <div class="max-w-7xl mx-auto px-4 sm:px-6">
    <div class="flex justify-between items-center border-b-2 border-gray-100 py-6 md:justify-start md:space-x-10">
      <div class="flex justify-start lg:w-0 lg:flex-1">
        <a href="#">
          <img class="h-8 w-auto sm:h-10" src="https://tailwindui.com/img/logos/workflow-mark-indigo-600.svg" alt="">
          <h1  class="text-indigo-600 hover:text-indigo-500"> Animal Hub </h1>

        </a>
      </div>

      <div class="hidden md:flex items-center justify-end md:flex-1 lg:w-0">
        <a href="main_page.jsp" class="ml-8 whitespace-nowrap inline-flex items-center justify-center px-4 py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-indigo-600 hover:bg-indigo-700">x</a>
      </div>
    </div>
  </div>

  <div class="absolute top-0 inset-x-0 p-2 transition transform origin-top-right md:hidden">
    <div class="rounded-lg shadow-lg ring-1 ring-black ring-opacity-5 bg-white divide-y-2 divide-gray-50">
      <div class="pt-5 pb-6 px-5">
        <div class="flex items-center justify-between">
          <div>
            <img class="h-8 w-auto" src="https://tailwindui.com/img/logos/workflow-mark-indigo-600.svg" alt="Workflow">
          </div>
          <div class="-mr-2">
          </div>
        </div>
       
      <div class="py-6 px-5 space-y-6">
 
        <div>
          <a href="main_page.jsp" class="w-full flex items-center justify-center px-4 py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-indigo-600 hover:bg-indigo-700">x</a>
          <p class="mt-6 text-center text-base font-medium text-gray-500">
            Existing customer?
            <a href="#" class="text-indigo-600 hover:text-indigo-500">x</a>
          </p>
        </div>
      </div>
    </div>
  </div>
</div>

        
        <!-- This example requires Tailwind CSS v2.0+ -->
<div class="bg-white shadow overflow-hidden sm:rounded-lg">
  <div class="px-4 py-5 sm:px-6">
    <h3 class="text-lg leading-6 font-medium text-gray-900">Applicant Information</h3>
    <p class="mt-1 max-w-2xl text-sm text-gray-500">Personal details and application.</p>
  </div>
  <div class="border-t border-gray-200">
    <dl>
      <div class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
        <dt class="text-sm font-medium text-gray-500">Full name</dt>
        
        <%
            Cookie ck[]=request.getCookies();  
            String user=ck[0].getValue(); 
            
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/sample",
                    "app", 
                    "app");
             Statement stmt = c.createStatement();  
             ResultSet rs = stmt.executeQuery("SELECT NAME,PASSWORD FROM USERS WHERE USERNAME ='"+user+"'"); 
             if (rs.next())
             {
                 out.println("<dd class='mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2'>"+user+"</dd>");
                 out.println(" </div>");
                 out.println(" <div class='bg-white px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6'>");
                 out.println("<dt class='text-sm font-medium text-gray-500'>Username</dt>");
                 out.println("<dt class='text-sm font-medium text-gray-900'>"+rs.getString(1)+"</dt>");
                 out.println("</div>");
                 out.println(" <div class='bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6'>");
                 out.println("<dt class='text-sm font-medium text-gray-500'>password</dt>");
                 out.println("<dd class='mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2'>"+rs.getString(2)+"</dd>");
                 out.println(" </div>");


             }
            
         %>
        
      </div>
    </dl>
  </div>
</div>
    </body>
</html>
