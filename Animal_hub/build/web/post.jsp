<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
<title>Animal-Hub-Post</title>
</head>
<body>
<body >
<div class="relative bg-white">
<div class="max-w-7xl mx-auto px-4 sm:px-6">
<div class="flex justify-between items-center border-b-2 border-gray-100 py-6 md:justify-start
md:space-x-10">
<div class="flex justify-start lg:w-0 lg:flex-1">
<a href="#">
<img class="h-8 w-auto sm:h-10"
src="https://tailwindui.com/img/logos/workflow-mark-indigo-600.svg" alt="">
<h1 class="text-indigo-600 hover:text-indigo-500"> Animal Hub </h1>
</a>
</div>
<div class="hidden md:flex items-center justify-end md:flex-1 lg:w-0">
<button type="submit" name='login'>
<a href="main_page.jsp" class="ml-8 whitespace-nowrap inline-flex items-center justify-center
px-4 py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white
bg-red-600 hover:bg-indigo-700">Discard</a>
</button>
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
rounded-md shadow-sm text-base font-medium text-white bg-indigo-600 hover:bg-indigo-700"> Sign up
</a>
<p class="mt-6 text-center text-base font-medium text-gray-500">
Existing customer?
<a href="user_page" class="text-indigo-600 hover:text-indigo-500">Discard</a>
</p>
</div>
</div>
</div>
</div>
</div>
<div>
<h2 class="mt-6 text-center text-3xl font-extrabold text-gray-900">Make a Post</h2>
</div>
<form class="mt-8 space-y-6" action="post.jsp" method="POST">
<input type="hidden" name="remember" value="true">
<div class="rounded-md shadow-sm -space-y-px">
<div>
<label for="email-address" class="sr-only">Username</label>
<input id="email-address" name="post" type="text" required class="appearance-none
rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500
text-gray-900 rounded-t-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10
sm:text-sm" placeholder="Content">
</div>
<div>
<label for="password" class="sr-only" >Tag</label>
<input id="password" name="tag" type="text" required class="appearance-none rounded-none
relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900
rounded-b-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm"
placeholder="Tag">
</div>
</div>
<div>
<button type="submit" name="post-button" value="posting" class="group relative w-full flex
justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white
bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2
focus:ring-indigo-500">
<span class="absolute left-0 inset-y-0 flex items-center pl-3">
<svg class="h-5 w-5 text-indigo-500 group-hover:text-indigo-400"
xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
</svg>
</span>
Post
</button>
</div>
</form>

<%
if(request.getParameter("post-button")!=null)
{
Cookie ck[]=request.getCookies();
String user=ck[0].getValue();
String content,tag;
content=request.getParameter("post");
tag=request.getParameter("tag");
Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/Animal",
"app",
"app");
PreparedStatement ps = c.prepareStatement("insert into USER_POST values(?,?,?)");
ps.setString(1,user);
ps.setString(2,content);
ps.setString(3,tag);
int i = ps.executeUpdate();
response.sendRedirect("main_page.jsp");
}
%>

</body>
</html>