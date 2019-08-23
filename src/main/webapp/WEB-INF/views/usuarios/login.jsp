<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script> -->

<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>

<%-- <jsp:include page="../templates/head.jsp" ></jsp:include> --%>

</head>
<body>
<%-- <h1>${error}</h1> --%>
<div>
<c:if test="${not empty error}">
<div class="alert alert-warning" >
       <strong>Ops!</strong> Usuário e/ou senha incorreta.
</div>
 </c:if>
</div>

<div>
<c:if  test="${not empty logout}">
<div class="alert alert-info">
       <strong>Até logo!</strong> Usuário desconectado.
</div>
</c:if>
</div>

  
        <div class="container">        
        <form class="form-horizontal" role="form" method="post"  th:action="@{/login}">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <h2>GPROG - Login</h2>
                    <hr>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="form-group has-danger">
                        <label class="sr-only" for="username">Login</label>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-at"></i></div>
                            <input type="username" name="username" class="form-control" id="username"
                                   placeholder="Login" required autofocus>
                        </div>
                    </div>
                </div>
               
                <div class="col-md-3">
                    <div class="form-control-feedback">
                        <span class="text-danger align-middle">
                          <!--  <i class="fa fa-close"></i> -->   
                        <!-- Put login error message here -->   
                        </span>
                    </div>
                </div>    
                          
            </div>
           
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="sr-only" for="password">Senha</label>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-key"></i></div>
                            <input type="password" name="password" class="form-control" id="password"
                                   placeholder="Senha" required>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-control-feedback">
                        <span class="text-danger align-middle">
                        <!-- Put password error message here -->   
                       
                        </span>
                    </div>
                </div>
            </div>
<!--             <div class="row"> -->
<!--                 <div class="col-md-3"></div> -->
<!--                 <div class="col-md-6" style="padding-top: .35rem"> -->
<!--                     <div class="form-check mb-2 mr-sm-2 mb-sm-0"> -->
<!--                         <label class="form-check-label"> -->
<!--                             <input class="form-check-input" name="remember" -->
<!--                                    type="checkbox" > -->
<!--                             <span style="padding-bottom: .15rem">Remember me</span> -->
<!--                         </label> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
            <div class="row" style="padding-top: 1rem">
                <div class="col-md-3"></div>
                <div class="col-md-6">                    
                  <button type="submit" class="btn btn-info"><i class="fa fa-sign-in"></i> Entrar</button>                  
                  <span style="padding-left: 1rem"><label for="remember-me"><input type="checkbox" id="remember-me" name="remember-me">Lembrar</label></span>
                  <span style="padding-left: 12rem; padding-top: 2rem;"> <a class="btn btn-link" href="/password/reset">Esqueceu a Senha?</a>  </span>      
                                                          
                </div>  
               
            </div>
           
        </form>
    </div>
</body>
</html>