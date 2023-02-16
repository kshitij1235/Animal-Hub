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
            <a href="main_page.jsp" class="ml-8 whitespace-nowrap inline-flex items-center justify-center px-4 py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-indigo-600 hover:bg-indigo-700">x</a>  
          </button>
          
      </div>
       
  
  
       
    </div>
  </div>
              
<div class="row">
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Get gold </h5>
        <p class="card-text">get gold priority</p>
        <a href="payment_gold.jsp" class="btn btn-primary">pay</a>
      </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Get silver</h5>
        <p class="card-text">get silver priority</p>
        <a href="payment_silver.jsp" class="btn btn-primary">pay</a>
      </div>
    </div>
  </div>
</div>
       

</body>
</html>