<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
<div class="flex justify-between items-center border-b-2 border-gray-100 py-6 md:justify-start
md:space-x-10">
<div class="flex justify-start lg:w-0 lg:flex-1">
<a href="#">
<img class="h-8 w-auto sm:h-10"
src="https://tailwindui.com/img/logos/workflow-mark-indigo-600.svg" alt="">
<h1 class="text-indigo-600 hover:text-indigo-500"> Animal </h1>
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
System.out.println("Today's date is \t" + month + "/" + day + "/" + year);
if (hour < 12)
out.print("<h2 class='mt-6 text-center text-3xl font-extrabold text-gray-900'> GOOD MORNING , "+user+"</h2>");
else if (hour < 17 && !(hour == 12)) out.print("<h2 class='mt-6 text-center text-3xl font-extrabold text-gray-900'> GOOD AFTERNOON , "+user+"</h2>");
else if (hour == 12) out.print("<h2 class='mt-6 text-center text-3xl font-extrabold text-gray-900'> GOOD NOON , "+user+"</h2>");
else out.print("<h2 class='mt-6 text-center text-3xl font-extrabold text-gray-900'> GOOD EVENING , "+user+"</h2>");
%>

<div class="hidden md:flex items-center justify-end md:flex-1 lg:w-0">
<button type="submit" name='login'>
<a href="index.html" class="ml-8 whitespace-nowrap inline-flex items-center justify-center px-4
py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-indigo-600
hover:bg-indigo-700"> Logout</a>
</button>
<button type="submit" name='login'>
<a href="settings.jsp" class="ml-8 whitespace-nowrap inline-flex items-center justify-center px-4
py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-indigo-600
hover:bg-indigo-700">Settings</a>
</button>
<button type="submit" name='login'>
<a href="post.jsp" class="ml-8 whitespace-nowrap inline-flex items-center justify-center px-4 py-2
border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-indigo-600
hover:bg-indigo-700">post</a>
</button>
<button type="submit" name='login'>
<a href="pay.jsp" class="ml-8 whitespace-nowrap inline-flex items-center justify-center px-4 py-2
border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-indigo-600
hover:bg-indigo-700">Subscription</a>
</button>
</div>

<div>
<a href="profile.jsp" class="w-full flex items-center justify-center px-4 py-2 border
border-transparent rounded-md shadow-sm text-base font-medium text-white bg-indigo-600
hover:bg-indigo-700">Profile</a>
</div>
</div>
</div>
<div class="absolute top-0 inset-x-0 p-2 transition transform origin-top-right md:hidden">
<div class="rounded-lg shadow-lg ring-1 ring-black ring-opacity-5 bg-white divide-y-2
divide-gray-50">
<div class="pt-5 pb-6 px-5">
<div class="flex items-center justify-between">
<div>
<img class="h-8 w-auto" src="https://tailwindui.com/img/logos/workflow-mark-indigo-600.svg"
alt="Workflow">
</div>
<div class="-mr-2">
</div>

</div>
<div class="py-6 px-5 space-y-6">
<div>
<a href="#" class="w-full flex items-center justify-center px-4 py-2 border border-transparent
rounded-md shadow-sm text-base font-medium text-white bg-indigo-600
hover:bg-indigo-700">Profile</a>
<p class="mt-6 text-center text-base font-medium text-gray-500">
Existing customer?
<a href="user_page" class="text-indigo-600 hover:text-indigo-500"> Sign in </a>
</p>
</div>
<div>
<a href="#" class="w-full flex items-center justify-center px-4 py-2 border border-transparent
rounded-md shadow-sm text-base font-medium text-white bg-indigo-600 hover:bg-indigo-700"> Sign up
</a>
<p class="mt-6 text-center text-base font-medium text-gray-500">
Existing customer?
<a href="user_page" class="text-indigo-600 hover:text-indigo-500"> Sign in </a>
</p>
</div>
</div>
</div>
</div>
</div>
<div>
<h2 class="mt-6 text-center text-3xl font-extrabold text-black-900">posts</h2>
</div>
<br>


<%
Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/Animal",
"app",
"app");
Statement stmt = c.createStatement();
ResultSet rs = stmt.executeQuery("SELECT USERNAME,CONTENT FROM USER_POST ");
while (rs.next())
{
out.println("<div class='bg-white'>");
out.println("<div class='max-w-2xl mx-auto py-4 px-4 grid items-center grid-cols-1 gap-y-16 gap-x-2 sm:px-2 sm:py-3 lg:max-w-7xl lg:px-8 lg:grid-cols-2'>");
out.println("<div>");
out.println("<img class='inline-block h-6 w-6 rounded-full ring-2 ring-white' src='https://images.unsplash.com/photo-1491528323818-fdd1faba62cc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQi OjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80' alt=''>");
out.println("<h2 class='text-3xl font-extrabold tracking-tight text-gray-90 sm:text-3xl'>"+rs.getString(1)+"</h2>");
out.println("<p class='mt-4 text-gray-500'>"+rs.getString(2)+"</p>");
out.println("</div></div></div><br>");
}
%>


<div class="split left">
  <div class="centered">
      
<h2 class="mt-6  text-3xl font-extrabold text-black-900">categories</h2>   
    <%
Class.forName("org.apache.derby.jdbc.ClientDriver");
c = DriverManager.getConnection("jdbc:derby://localhost:1527/Animal",
"app",
"app");
stmt = c.createStatement();
rs = stmt.executeQuery("SELECT DISTINCT Tag FROM USER_POST");
while (rs.next())
{
out.println("<button type='submit' name='login'>");
out.println("<a href='' class='ml-8 whitespace-nowrap inline-flex items-center justify-center px-4 py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-indigo-600 hover:bg-indigo-700'>"+rs.getString(1)+"</a>");
out.println("</button></div>");

}
%>  
    


      
  </div>
</div>

</body>
</html>