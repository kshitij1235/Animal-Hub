<%@ page import="java.sql.*" %>

<% Class.forName("org.apache.derby.jdbc.ClientDriver"); %>

<HTML>
	<head>
    	<title>users</title>
    	<meta charset="UTF-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    	<link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	</head>

    <BODY>
<div style="background-color: rgb(67 56 202);" >
  <div class="max-w-7xl mx-auto px-4 sm:px-6 bg-cyan-700">
	<div class="flex justify-between items-center border-b-2 border-gray-100 py-6 md:justify-start md:space-x-10">
  	<div class="flex justify-start lg:w-0 lg:flex-1">
    	<a href="#">
      	<h1  class="text-indigo-600 hover:text-indigo-500"> Admin</h1>

    	</a>
  	</div>

  	<div class="hidden md:flex items-center justify-end md:flex-1 lg:w-0">
 
    
            <button type="submit" name='login'>
        	<a href="admin.jsp" class="ml-8 whitespace-nowrap inline-flex items-center justify-center px-4 py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-indigo-600 hover:bg-indigo-700">x</a>  
      	</button>
    
  	</div>
	</div>
  </div>
</DIV>
        
            <form class="mt-8 space-y-6" action="remove_users.jsp" method="POST">
      <input type="hidden" name="remember" value="true">
      <div class="rounded-md shadow-sm -space-y-px">
        <div>
          <label for="email-address" class="sr-only">Email address</label>
          <input id="email-address" name="user" type="text" autocomplete="email" required class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-t-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Username">
        </div>

 
      <div>
        <button type="submit" name="remove" class="group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
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
            
    if(request.getParameter("delete")!=null){

        Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/Animal",
                    "app", 
                    "app");
             Statement stmt = c.createStatement();    
           PreparedStatement ps = c.prepareStatement("delete from USERS WHERE EMAIL ='"+ request.getParameter("user") +"'");
            int i =ps.executeUpdate();
    }
    %>
        
    </body>
</html>