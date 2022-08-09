
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
        <title>Animal-Hub-Home</title>
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
        
        <%       
            Cookie ck[]=request.getCookies();  
            String user=ck[0].getValue();
           
             GregorianCalendar time = new GregorianCalendar();
  int hour = time.get(Calendar.HOUR_OF_DAY);
  int min = time.get(Calendar.MINUTE);
  int day = time.get(Calendar.DAY_OF_MONTH);
  int month = time.get(Calendar.MONTH) + 1;
  int year = time.get(Calendar.YEAR);

  System.out.println("The current time is \t" + hour + ":" + min);
  System.out.println("Today's date is \t" + month + "/" + day + "/"
    + year);

  if (hour < 12)
   out.print("<h2 class='mt-6 text-center text-3xl font-extrabold text-gray-900'> GOOD MORNING , "+user+"</h2>");
  else if (hour < 17 && !(hour == 12))
   out.print("<h2 class='mt-6 text-center text-3xl font-extrabold text-gray-900'> GOOD AFTERNOON , "+user+"</h2>");
  else if (hour == 12)
   out.print("<h2 class='mt-6 text-center text-3xl font-extrabold text-gray-900'> GOOD NOON , "+user+"</h2>");
  else
   out.print("<h2 class='mt-6 text-center text-3xl font-extrabold text-gray-900'> GOOD EVENING , "+user+"</h2>");
 
       %>  
        


      <div class="hidden md:flex items-center justify-end md:flex-1 lg:w-0"> 
          <button type="submit" name='login'>
            <a href="index.html" class="ml-8 whitespace-nowrap inline-flex items-center justify-center px-4 py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-indigo-600 hover:bg-indigo-700"> Logout</a>  
          </button>
          <button type="submit" name='login'>
            <a href="settings.jsp" class="ml-8 whitespace-nowrap inline-flex items-center justify-center px-4 py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-indigo-600 hover:bg-indigo-700">Settings</a>  
          </button>
      </div>
       
  
       
     <div>     
         
          <a href="profile.jsp" class="w-full flex items-center justify-center px-4 py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-indigo-600 hover:bg-indigo-700">Profile</a>
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
          <a href="#" class="w-full flex items-center justify-center px-4 py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-indigo-600 hover:bg-indigo-700">Profile</a>
          <p class="mt-6 text-center text-base font-medium text-gray-500">
            Existing customer?
            <a href="user_page" class="text-indigo-600 hover:text-indigo-500"> Sign in </a>
          </p>
        </div>
          
        <div>        
          <a href="#" class="w-full flex items-center justify-center px-4 py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-indigo-600 hover:bg-indigo-700"> Sign up </a>
          <p class="mt-6 text-center text-base font-medium text-gray-500">
            Existing customer?
            <a href="user_page" class="text-indigo-600 hover:text-indigo-500"> Sign in </a>
          </p>
        </div>
      </div>
    </div>
  </div>
</div>

  
    </body>
</html>
