<%-- 
    Document   : Module_List
    Created on : Oct 21, 2018, 10:24:31 PM
    Author     : Muhammad Ali
--%>

<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Entities.Module"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
    <%-- setting libraries for the web-page --%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
                
        <title>Total Modules</title>
    </head> 
    
<jsp:include page="/WEB-INF/menu.jsp" />

    <body>
        <%-- table formatting part --%>
        <style> 
        body {
                background-color: powderblue;
            }
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
            }
            th, td {
                padding: 5px;
            }
            th, td {
                text-align: center;
            }
            table tr:nth-child(even) {
                background-color: #eee;
            }
            table tr:nth-child(odd) {
                background-color: #fff;
            }
            
        </style> 
        
        <%-- setting alert when click to remove the module --%>
        <script type="text/javascript">
            function alertName(){
            alert("Module will be deleted!");
            } 
        </script>
        
        <%-- creating table format to show modules list --%>
        <div class="container"> 
            <div class="row justify-content-md-center">
        <h1 align="center">List of Modules!</h1>
       <div class="col-10"> 
                      
              <div class="table-responsive">
            <table class="table" style="width:100%">
              
        <tr>
            <th> Module Name</th>
            <th> Module ID</th>
            <th> Teacher ID</th>
            <th> Teacher Name</th>
            <th> Module Deadline</th>
            <th> Learning Goals</th>
            <th> Want Remove!</th>
        </tr>
        <c:forEach items="${module}" var="module">
        <tr>
              <td><p><a href="/MO-POMA_Tech/Show_Module_Detail/${module.getID().intValue()}"/>${module.getName()}</td>
              <td>${module.getID().intValue()}</td>
              <td>${module.getTeacherID().intValue()}</td>
              <td>${module.getTeachName()}</td>
              <td>${module.getDeadline()}</td>
              <td>${module.getGoals()}</p></td>
              <td> <form action="/MO-POMA_Tech/Delete_ModulePost/${module.getID().intValue()}" type="POST">
                      <input type="submit" class="btn btn-danger" value="remove">
                  </form></td>
        </tr>
        </c:forEach>
    </table> 
              </div>
           </div>
      </div>
            <%-- pop up alert message --%>
            <script type="text/javascript"> window.onsubmit = alertName; </script>
    </body>
</html>
