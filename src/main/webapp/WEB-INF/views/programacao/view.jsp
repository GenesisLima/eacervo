<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%--          <%@ taglib prefix="c" uri="http://xmlns.jcp.org/jsp/jstl/core" %>     --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html ng-app="eacervo">
<head>
<style type="text/css">
* {
  .border-radius(0) !important;
}

#field {
    margin-bottom:20px;
}
</style>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">


<!-- Datatable stylesheet -->
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">




<!-- AngularJS -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script> -->
          <script src="/eacervo/resources/js/angular.min.js"></script>  
          <script src="/eacervo/resources/js/angular-animate.min.js"></script> 
          <script src="/eacervo/resources/js/angular-route.min.js"></script>
          <script  src="/eacervo/resources/js/angular-resource.min.js"></script>   
          <script src="/eacervo/resources/js/app.js" type="text/javascript" > </script>
          <script  src="/eacervo/resources/js/product_controller.js" type="text/javascript"> </script> 
          
<!-- JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- JQuery Datatable Library-->
<!-- <script src="https://code.jquery.com/jquery-3.3.1.js"></script> -->

<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>


<!-- MomentJS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.js"> </script>



<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>


<%-- <script type="text/javascript" src="<c:url value="/resources/js/jquery.inputmask.js" />"> --%>
<script type="text/javascript" src="/eacervo/resources/js/jquery.mask.js"> </script>
<script type="text/javascript" src="/eacervo/resources/js/jquery.mask.min.js"> </script>




 
  </head>
<body ng-controller="ProductController">

      
     <jsp:include page="../programacao/form.jsp" ></jsp:include>


</body>

</html>