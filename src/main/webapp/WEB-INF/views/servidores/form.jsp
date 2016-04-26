<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

<!-- JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">

      <!-- Static navbar -->
      <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/eacervo">E-Acervo</a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"></li>
              <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Cadastro <span class="caret"></span></a></a>
                <ul class="dropdown-menu">
                	<li><a href="#">Servidor</a></li>
                  <li><a href="/eacervo/produtos/form">Produto</a></li>
                  <li><a href="areas/form">&Aacute;rea</a></li>
                  <li><a href="#">Solicitante</a></li>
                  <li><a href="#">Respons&aacute;vel</a></li>
                  <li><a href="../temas/form">Tema</a></li>
                  <li><a href="../procedimentos/form">Procedimento</a></li>
                  <li><a href="../tiposmidia/form">Tipo de M&iacute;dia</a></li>
                  <li><a href="#">Sistem&aacute;tica de  Produ&ccedil;&atilde;o</a></li>

                </ul><!-- /. ul dropdown-menu-->
              </li><!-- /.li dropdown-->
              <li class="dropdown"><a href="#" class="dropdown-toglle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Listar <span class="caret"></span></a>
                 <ul class="dropdown-menu">
                 	<li><a href="">Pessoas</a></li>
                 	<li><a href="">Produtos</a></li>
                	<li><a href="">Solicitantes</a></li>
                	<li><a href="">Temas</a></li>
                	<li><a href="">Procedimentos</a></li>
                	<li><a href="">Tipo de M&iacute;dias</a></li>
                 </ul>

              </li><!-- /.li dropdown-->

              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">A&ccedil;&otilde;es <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Montar Equipe</a></li>
                  <li><a href="#">Montar Programa&ccedil;&atilde;o</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li role="separator" class="divider"></li>
                  <li class="dropdown-header">Nav header</li>
                  <li><a href="#">Separated link</a></li>
                  <li><a href="#">One more separated link</a></li>
                </ul>
              </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li class="active"><a href="./">Contato <span class="sr-only">(current)</span></a></li>
              <li><a href="../navbar-static-top/">Ajuda</a></li>
              <li><a href="../navbar-fixed-top/">Sair</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
      <!--  <h2>Cadastro de Servidor.</h2>-->
<div class="panel panel-default">
  <div class="panel-heading">Cadastrar Servidor</div>
  <div class="panel-body">
        <form role="form" method="post" action="/eacervo/servidores">
           <div class="form-group">
    <label for="matricula">Matricula:</label>
    <input type="text" name="code" class="form-control" id="matricula">
  </div>
           <div class="form-group">
              <label for="nome">Nome:</label>
              <input type="text" name="name" class="form-control" id="nome">
           </div>
           <div class="form-group">
              <label for="vinculo">Vinculo:</label>
              <input type="text" name="bound" class="form-control" id="vinculo">
           </div>
           <div class="form-group">
            <label for="funcao">Fun&ccedil;&atilde;o:</label>
            <div class="input-group">                            
              <input type="text" class="form-control" id="funcao" disabled>
              <span class="input-group-btn">
              <a  class="btn btn-default" role="button" data-toggle="modal"  data-target="#modalFuncao" ><span class="glyphicon glyphicon-search"></span>&nbsp;</a>
            </span>
            </div><!--end input-group-->

           </div>
           <div class="form-group">
              <label for="lotacao">Lota&ccedil;&atilde;o:</label>
              <div class="input-group">                            
              <input type="text" class="form-control" id="lotacao">
              <span class="input-group-btn">
              <a  class="btn btn-default" role="button" data-toggle="modal" data-target="#modalLotacao"><span class="glyphicon glyphicon-search"></span>&nbsp;</a>
            </span>
           </div>
           <div class="form-group">
              <label for="ramal">Ramal:</label>
              <input type="number" name="branchLine" class="form-control" id="ramal">
           </div>
           <div class="form-group">
              <label for="email">Email:</label>
              <input type="email" name="email" class="form-control" id="email">
           </div>
           <div class="form-group">
              <label for="responsavel">Respons&aacute;vel:</label>
             <div class="input-group">                            
              <input type="text" class="form-control" id="responsavel">
              <span class="input-group-btn">
              <a  class="btn btn-default" role="button" name="responsible" data-toggle="modal" data-target="#modalResponsavel"><span class="glyphicon glyphicon-search"></span>&nbsp;</a>
            </span>
           </div> 
  
  <button type="submit" class="btn btn-default">Salvar</button>
  </form><!-- /end form -->
  </div>
      </div>
      </div>

    </div> <!-- /container -->
    <!-- Modal função-->
<div id="modalFuncao" class="modal fade" role="dialog" >
  <div class="modal-dialog">
 <form role="form" class="funcao">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Buscar Fun&ccedil;&atilde;o</h4>
      </div>
      <div class="modal-body">
<!--         <p>Fun&ccedil;&atilde;o</p> -->
<datatables:table id="employeeFunctionTable" row="funcao"  url="/eacervo/funcoes/functionsJSON"  theme="bootstrap3" cssClass="table table-striped"  paginationType="full_numbers" displayLength="5">
        
        <datatables:column title="ID" property="id" id="funcao_id"    />
        <datatables:column title="NAME" property="function" id="funcao_nome" />
          <datatables:column  title="AÇÃO" renderFunction='actions' >
          
          

      </datatables:column>
    </datatables:table>
  </form><!-- /end form-->
      </div>
      <div class="modal-footer">
<!--         <button id="submit" class="btn btn-default" data-dismiss="modal">Salvar</button> -->
        <a href="#" class="btn btn-default" data-dismiss="modal">Close</a>
      </div>
    
    </div>

  </div>
</div><br/><br/><!-- /end modal função-->
    <!-- Modal lotação-->
<div id="modalLotacao" class="modal fade" role="dialog">
  <div class="modal-dialog">
 <form role="form" class="lotacao">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Buscar Lota&ccedil;&atilde;o</h4>
      </div>
      <div class="modal-body">
<!--         <p>Fun&ccedil;&atilde;o</p> -->
        <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>#</th>
        <th>Setor</th>
        <th>Descri&ccedil;&atilde;o</th>
      
      </tr>
    </thead>
    <tbody>
     <c:forEach items="${departments}" var="setor" varStatus="status">
      <tr>
    <td>${setor.id}</td>             
    <td >${setor.name}</td>  
    <td >${setor.description}</td>    
    <td><a href="#" class="btn btn-info" role="button" data-toggle="modal" data-id="${setor.id}" data-name="${setor.name}" data-description="${setor.description}" data-target="#myModal">Escolher</a>
<%--     <a href="/eacervo/temas/remove/${tema.id}" class="btn btn-info" role="button">Remover</a></td> --%>
    
      </tr>
       </c:forEach>
    </tbody>
  </table>
  </div>
        
  </form><!-- /end form-->
      </div>
      <div class="modal-footer">
<!--         <button id="submit" class="btn btn-default" data-dismiss="modal">Salvar</button> -->
        <a href="#" class="btn btn-default" data-dismiss="modal">Close</a>
      </div>
    
    </div>

  </div>
</div><br/><br/><!-- /end modal locação-->
 <!-- Modal Responsável-->
<div id="modalResponsavel" class="modal fade" role="dialog">
  <div class="modal-dialog">
 <form role="form" class="lotacao">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Buscar Respons&aacute;vel</h4>
      </div>
      <div class="modal-body">
<!--         <p>Fun&ccedil;&atilde;o</p> -->
        <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>#</th>
        <th>Nome</th>
        <th>Descri&ccedil;&atilde;o</th>
      
      </tr>
    </thead>
    <tbody>
     <c:forEach items="${departments}" var="setor" varStatus="status">
      <tr>
    <td>${setor.id}</td>             
    <td >${setor.name}</td>  
    <td >${setor.description}</td>    
    <td><a  href="#" class="btn btn-info" role="button" data-toggle="modal" data-id="${setor.id}" data-name="${setor.name}" data-description="${setor.description}" data-target="#myModal">Escolher</a>
<%--     <a href="/eacervo/temas/remove/${tema.id}" class="btn btn-info" role="button">Remover</a></td> --%>
    
      </tr>
       </c:forEach>
    </tbody>
  </table>
  </div>
        
  </form><!-- /end form-->
      </div>
      <div class="modal-footer">
<!--         <button id="submit" class="btn btn-default" data-dismiss="modal">Salvar</button> -->
        <a href="#" class="btn btn-default" data-dismiss="modal">Close</a>
      </div>
    
    </div>

  </div>
</div><br/><br/><!-- /end modal Responsável-->
  <script type="text/javascript">
  
 

  function actions(data, type, full) {
	//  console.log(full)
	  console.log(full.id)
	  console.log(full.description)
	var  description = full.description;
	  console.log(description)
	 
// 	'<a class="btn btn-mini" data-id='+ full.id +' data-description='+ full.description + '>Escolher</a>'
	   return '<a class="btn btn-mini" data-dismiss="modal" onclick="setFunctionValue(\''+ description +'\')" data-id='+ full.id +' data-description='.concat(full.description).concat('>Escolher</a>') ;
	}
  
  $('#choiceButton').on("click", ".getValues", function () {
	     var myBookId = $(this).data('id');
	     console.log(myBookId)
	  //   $(".modal-body #bookId").val( myBookId );
	    //$('#addBookDialog').modal('show');
	});
 
  
  function setFunctionValue(value){
	 $('#funcao').val(value);
	 
	$('#modalFuncao.in').modal('hide');
	//$('body').removeClass('modal-open');
	//$('.modal-backdrop').remove();
  }
	  
  $('#modalFuncao').on('show.bs.modal', function (e) {
      	//alert('testa js')
      
      var modal = $(this)
      
      	//console.log(modal);
      	;
      	
      	  
      //	});
    
});
	
 
  
	  
        
        	
        $('#modalLotacao').on('show.bs.modal', function (e) {
        	//alert('testa js')
        	  var button = $(e.relatedTarget) // Button that triggered the modal
        	  var recipient = button.data('id')
        	  var name = button.data('name')
        	  var desc = button.data('description')
        	  // Extract info from data-* attributes
        	  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
        	  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
        	  var modal = $(this);
        	// modal.find('#nome').val(document.getElementById("tema_name").value)        	 
        	  modal.find('#area').val(recipient)
        	  modal.find('#name').val(name)
        	  modal.find('#description').val(desc)
        	  
        	  
        	});
        	
        $('#modalResponsavel').on('show.bs.modal', function (e) {
        	//alert('testa js')
        	  var button = $(e.relatedTarget) // Button that triggered the modal
        	  var recipient = button.data('id')
        	  var name = button.data('name')
        	  var desc = button.data('description')
        	  // Extract info from data-* attributes
        	  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
        	  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
        	  var modal = $(this);
        	// modal.find('#nome').val(document.getElementById("tema_name").value)        	 
        	  modal.find('#area').val(recipient)
        	  modal.find('#name').val(name)
        	  modal.find('#description').val(desc)
        	  
        	  
        	});
        	
 $(function() {
//twitter bootstrap script
 $("button#submit").click(function(){
         $.ajax({
     type: "GET",
 url: "/eacervo/jobTitles",
 data: $('form.tema').serialize(),
         success: function(msg){
                 $("#thanks").html(msg)
        $("#form-content").modal('hide'); 
         },
 error: function(){
 alert("failure");
 }
       });
 });
});
//  $(function() {
// 	//twitter bootstrap script
// 	 $("a#ajaxFunction").click(function(){
// 	         $.ajax({
// 	     type: "GET",
// 	 url: "/eacervo/funcoes",
// 	 data: $('form.tema').serialize(),
// 	         success: function(msg){
// 	                 $("#thanks").html(msg)
// 	        $("#form-content").modal('hide'); 
// 	         },
// 	 error: function(){
// 	 alert("failure");
// 	 }
// 	       });
// 	 });
// 	});
        $('#modalFuncao').on('hidden.bs.modal', function (e) {
        	//window.location.reload();
        });
        
//    	 $(function() {
//    	//twitter bootstrap script
//    	 $("button#submit").click(function(){
//    	         $.ajax({
//    	     type: "POST",
//    	 url: "/eacervo/temas",
//    	 data: $('form.tema').serialize(),
//    	         success: function(msg){
//    	                 $("#thanks").html(msg)
//    	        $("#form-content").modal('hide'); 
//    	         },
//    	 error: function(){
//    	 alert("failure");
//    	 }
//    	       });
//    	 });
//    	});
</script>
</body>
</html>