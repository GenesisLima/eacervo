<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>

<jsp:include page="../templates/head.jsp" ></jsp:include>
</head>
<body>
 
<div class="container">

     
      <jsp:include page="../templates/menu.jsp" ></jsp:include>
      
      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
      <!--  <h2>Cadastro de Servidor.</h2>-->
<div class="panel panel-default">
  <div class="panel-heading">Cadastrar Produto</div>
  <div class="panel-body">
        <form role="form">
           <div class="form-group">
    <label for="id_produto">ID:</label>
    <input type="text" class="form-control" id="id_produto" disabled>
  </div>
           <div class="form-group">
              <label for="nome">Nome:</label>
              <input type="text" class="form-control" id="nome">
           </div>
           <div class="form-group">
              <label for="tema">Tema:</label>
              <div class="input-group">
              <input type="text" class="form-control" id="tema">
              <span class="input-group-btn">
                <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-search"></span>&nbsp;</button>
              </span>
            </div>
           </div>
           <div class="form-group">
            <label for="obtencao">Forma de Obten&ccedil;&atilde;o:</label>                                       
              <input type="text" class="form-control" id="obtencao">           
             </div><!--end input-group-->

         
           <div class="form-group">
              <label for="parceiro">Parceiro/Produtora:</label>
              <input type="text" class="form-control" id="parceiro">
             
           </div>
           <div class="form-group">
              <label for="custo_producao">Custo de Produ&ccedil;&atilde;o:</label>
              <input type="number" class="form-control" id="custo_producao">
           </div>
          
           <div class="form-group">
              <label for="equipe">Equipe:</label>
             <div class="input-group">                            
              <input type="text" class="form-control" id="equipe">
              <span class="input-group-btn">
              <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-search"></span>&nbsp;</button>
            </span>
           </div> 
           <br>

           <div class="panel panel-default">
               <div class="panel-body"> 
                  <strong>Obten&ccedil;&atilde;o: </strong>
                   <label class="radio-inline"> <input type="radio" name="sistematica_radio">Produ&ccedil;&atilde;o</label>
                   <label class="radio-inline"> <input type="radio" name="sistematica_radio">Aquisi&ccedil;&atilde;o</label>    
                   <label class="radio-inline"> <input type="radio" name="sistematica_radio">Licenciamento</label>    

               </div>
           </div>
  
  <button type="submit" class="btn btn-default">Salvar</button>
  </form><!-- /end form -->
  </div>
      </div>
      </div>

    </div> <!-- /container -->

</body>
</html>