<%-- 
    Document   : newjsp
    Created on : 9.10.2018, 10:37:49
    Author     : Petr
--%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Entities.Deliverable"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <title>ShowDeliverables</title>
    </head>  
   
    <jsp:include page="/WEB-INF/menu.jsp" />
  
    <body style="background-color: powderblue;">
        
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
        
    <div class="container justify-content-center">
        <div class="col-12">
        <h1>Show deliverable</h1>
        <table class="table">
            <thead>
                <tr>
                  <th scope="col">deliverable_Id</th>
                  <th scope="col">student_Id</th>
                  <th scope="col">module_Id</th>
                  <th scope="col">teacher_Id</th>
                  <th scope="col">datetime_Of_Submit</th>
                  <th scope="col">status</th>
                  <th scope="col">points</th>
                 <th scope="col">feedback</th>
                 <th scope="col">progression</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${deliverable}" var="deliverable">
                    <tr>
                        <td>${deliverable.getDeliverable_Id()}</td>
                           <td>${deliverable.getStudent_Id()}</td>
                           <td>${deliverable.getModule_Id()}</td>
                              <td>${deliverable.getTeacher_Id()}</td>
                        <td>${deliverable.getDatetime_Of_Submit()}</td>
                        <td>${deliverable.getStatus()}</td>
                         <td>${deliverable.getPoints()}</td>
                        <td>${deliverable.getFeedback()}</td>
                        <td>${deliverable.getProgression()}</td>
                     
                       
                   

                    </tr>
                </c:forEach>
           </tbody>
         </table>
        </div>
    </div>
    </body>
</html>