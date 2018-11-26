<%-- 
    Document   : deliverableDetail
    Created on : 23.11.2018, 10:57:58
    Author     : Petr
--%>


<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Entities.Deliverable"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show deliverable</title>
    </head>
    <body>
    <div class="container justify-content-center">
        <div class="col-12">
        <h1>Show individual deliverable</h1>
        <table class="table">
            <thead>
                <tr>
                  <th scope="col">deliverable_Id</th>     
                  <th scope="col">status</th>
                   <th scope="col">feedback</th>
                   <th scope="col">progression</th>
                  <th scope="col">points</th>
                 
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${deliverable}" var="deliverable">
                    <tr>
                        <td>${deliverable.getDeliverable_Id().intValue()}</td>
                        <td>${deliverable.getStatus()}</td>
                        <td>${deliverable.getPoints().intValue()}</td>
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