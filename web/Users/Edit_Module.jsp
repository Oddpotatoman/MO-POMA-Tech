<%-- 
    Document   : Create_Module
    Created on : Oct 11, 2018, 11:43:39 AM
    Author     : Muhammad Ali
--%>

<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Entities.Module"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Module</title>
    </head>
    
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="/MO-POMA_Tech">MO-POMA</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link" href="/MO-POMA_Tech/showStudents">Students</a>
      <a class="nav-item nav-link" href="/MO-POMA_Tech/Module_List">Modules</a>
      <a class="nav-item nav-link" href="#">Forum</a>
    </div>
  </div>
</nav>
    
    
    <body>
        <div class="container">
            <div class="row justify-content-md-center">
                <div class="col-10">
                    <h1>Edit /Update Module</h1>
                    <form action="/MO-POMA_Tech/Edit_ModulePost" method="POST">
                        <div class="form-row">
                          <div class="col-6">
                              <label for="Module_Name">Module Name</label>
                              <input type="text" name="Module_Name" id="Module_Name" value = "${module.getName()}" class="form-control" placeholder="String text">
                          </div>
                          <div class="col-6">
                              <label for="Module_ID">Module ID</label>
                              <input type="text" name="Module_ID" id="Module_ID" value = "${module.getID().intValue()}" class="form-control" placeholder="numeric number">
                          </div>
                        </div>
                        <div class="form-row">
                            <div class="col-9">
                              <label for="Teacher_ID">Teacher ID</label>
                              <input type="Teacher_ID" class="form-control" name="Teacher_ID" id="teacher_id" value="${module.getTeacherID().intValue()}" placeholder="numeric value">
                            </div>
                            <div class="col-3">
                                <label for="">Deadline</label>
                                <input type="text" name="Deadline" id="deadline" value = "${module.getDeadline()}" class="form-control" placeholder="YEAR-MONTH-DAY">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-9">
                              <label for="address">Goals</label>
                              <input type="text" class="form-control" name="learn_Goals" id="goals" value = "${module.getGoals()}" placeholder="string text">
                            </div>
                            
                            <button style="margin-top: 10px;" type="submit" class="btn btn-primary">Update Module</button><br>
                            <button style="margin-right: 10px;" type="reset" class="btn col-3">Clear</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
