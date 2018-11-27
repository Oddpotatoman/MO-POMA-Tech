<%-- 
    Document   : showNotifications
    Created on : Nov 6, 2018, 11:17:10 AM
    Author     : Halim
--%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Entities.Notifications"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <div class="container"> 
            <div class="row justify-content-md-center">
        <h1 align="center">Notifications List!</h1>
       <div class="col-10"> 
                      
              <table class="table table-bordered">
              
        <tr>
            <th> Title</th>
            <th> Content</th>
            <th> Date</th>
            <th> Url</th>
        </tr>
        <c:forEach items="${notifications}" var="notification">
        <tr>
              <td>${notification.getTitle()}</td>
              <td>${notification.getContent()}</td>
              <td>${notification.getDate()}</td>
              <td>${notification.getUrl()}</td>
       
        </tr>
        </c:forEach>
    </table> 
        
           </div>
      </div>
            </div>
    </body>
</html>