<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

</head>
<body>
<div class="container">

      <jsp:include page="../templates/menu.jsp" ></jsp:include>
      
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
              <input type="hidden" id="funcaoId" name="funcaoId" value="1"/>
              <span class="input-group-btn">
              <a  class="btn btn-default" role="button" data-toggle="modal"  data-target="#modalFuncao" ><span class="glyphicon glyphicon-search"></span>&nbsp;</a>
            </span>
            </div><!--end input-group-->

           </div>
           <div class="form-group">
              <label for="lotacao">Lota&ccedil;&atilde;o:</label>
              <div class="input-group">                            
              <input type="text" class="form-control" id="lotacao" disabled>
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
              <input type="text" class="form-control" id="responsavel" disabled>
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
	//  console.log(full.id)
	//  console.log(full.description)
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