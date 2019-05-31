<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
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
    <label for="employee_id">Matricula:</label>
    <input type="text" name="employee_id" class="form-control" id="employee_id">
  </div>
           <div class="form-group">
              <label for="name">Nome:</label>
              <input type="text" name="name" class="form-control" id="name">
           </div>
           <div class="form-group">
              <label for="bound">Vinculo:</label>
              <input type="text" name="bound" class="form-control" id="bound">
           </div>
           <div class="form-group">
            <label for="function">Fun&ccedil;&atilde;o:</label>
            <div class="input-group">                            
              <input type="text" class="form-control" id="function" readonly="readonly" value="0">
              <input type="hidden" id="functionId" name="functionId" />
              <span class="input-group-btn">
              <a  class="btn btn-default" role="button" data-toggle="modal"  data-target="#modalFuncao" ><span class="glyphicon glyphicon-search"></span>&nbsp;</a>
            </span>
            </div><!--end input-group-->

           </div>
           <div class="form-group">
              <label for="department">Lota&ccedil;&atilde;o:</label>
              <div class="input-group">                            
              <input type="text" class="form-control" id="department" readonly="readonly" value="0">
                 <input type="hidden" id="departmentId" name="departmentId" />
              <span class="input-group-btn">
              <a  class="btn btn-default" role="button" data-toggle="modal" data-target="#modalLotacao"><span class="glyphicon glyphicon-search"></span>&nbsp;</a>
            </span>
           </div>
           <div class="form-group">
              <label for="branchLine">Ramal:</label>
              <input type="number" name="branchLine" class="form-control" id="branchLine">
           </div>
           <div class="form-group">
              <label for="email">Email:</label>
              <input type="email" name="email" class="form-control" id="email">
           </div>
           <div class="form-group">
              <label for="employee">Respons&aacute;vel:</label>
             <div class="input-group">                            
              <input type="text" class="form-control" id="employee" readonly="readonly" value="0">
              <input type="hidden" id="employeeId" name="employeeId" />
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
 <form role="form" class=function>
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Buscar Fun&ccedil;&atilde;o</h4>
      </div>
      <div class="modal-body">
<!--         <p>Fun&ccedil;&atilde;o</p> -->
<datatables:table id="employeeFunctionTable" row="function"  url="/eacervo/funcoes/functionsJSON"  deferRender="true" stateSave="true" theme="bootstrap3" cssClass="table table-striped"  paginationType="full_numbers" displayLength="5">
        
        <datatables:column title="ID" property="id" id="function_id"    />
        <datatables:column title="NAME" property="function" id="function_nome" />
          <datatables:column  title="AÇÃO" renderFunction='action_function' >
          
          

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
<div id="modalLotacao" class="modal fade" role="dialog" >
  <div class="modal-dialog">
 <form role="form" class="department">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Buscar Lota&ccedil;&atilde;o</h4>
      </div>
      <div class="modal-body">
<!--         <p>Fun&ccedil;&atilde;o</p> -->
<datatables:table id="employeeDepartmentTable" row="departamento"  url="/eacervo/departamentos/departmentsJSON" deferRender="true" stateSave="true" theme="bootstrap3" cssClass="table table-striped"  paginationType="full_numbers" displayLength="5">
        
        <datatables:column title="ID" property="id" id="departamento_id"    />
        <datatables:column title="NAME" property="name" id="departamento_nome" />
          <datatables:column  title="AÇÃO" renderFunction='action_department' >
          
          

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
</div><br/><br/><!-- /end modal locação-->
 <!-- Modal Responsável-->
<div id="modalResponsavel" class="modal fade" role="dialog" >
  <div class="modal-dialog">
 <form role="form" class="employee">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Buscar Respons&aacute;vel</h4>
      </div>
      <div class="modal-body">
<!--         <p>Fun&ccedil;&atilde;o</p> -->
<datatables:table id="employeeResponsibleTable" row="responsavel"  url="/eacervo/servidores/employeesJSON" deferRender="true" stateSave="true" theme="bootstrap3" cssClass="table table-striped"  paginationType="full_numbers" displayLength="5">
        
        <datatables:column title="ID" property="id" id="responsavel_id"    />
        <datatables:column title="NAME" property="name" id="responsavel_nome" />
          <datatables:column  title="AÇÃO" renderFunction='action_employee' >
          
          

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
</div><br/><br/><!-- /end modal Responsável-->
  <script type="text/javascript">
  
 

  function action_function(data, type, full) {
	//  console.log(full)
	//  console.log(full.id)
	//  console.log(full.description)
	var  description = full.description;
	  console.log(description)
	 
// 	'<a class="btn btn-mini" data-id='+ full.id +' data-description='+ full.description + '>Escolher</a>'
	   return '<a class="btn btn-mini" data-dismiss="modal" onclick="setFunctionValue(\''+ description +'\',\''+ full.id +'\')" data-id='+ full.id +' data-description='.concat(full.description).concat('>Escolher</a>') ;
	}
  
  function action_department(data, type, full) {
		//  console.log(full)
		//  console.log(full.id)
		//  console.log(full.description)
		var  name = full.name;
		  console.log(name)
		 
//	 	'<a class="btn btn-mini" data-id='+ full.id +' data-description='+ full.description + '>Escolher</a>'
		   return '<a class="btn btn-mini" data-dismiss="modal" onclick="setDepartmentValue(\''+ name +'\',\''+ full.id +'\')" data-id='+ full.id +' data-name='.concat(full.name).concat('>Escolher</a>') ;
		}
  
  function action_employee(data, type, full) {
		//  console.log(full)
		//  console.log(full.id)
		//  console.log(full.description)
		var  name = full.name;
		  console.log(name)
		 
//	 	'<a class="btn btn-mini" data-id='+ full.id +' data-description='+ full.description + '>Escolher</a>'
		   return '<a class="btn btn-mini" data-dismiss="modal" onclick="setEmployeeValue(\''+ name +'\',\''+ full.id +'\')" data-id='+ full.id +' data-name='.concat(full.name).concat('>Escolher</a>') ;
		}
  
  $('#choiceButton').on("click", ".getValues", function () {
	     var myBookId = $(this).data('id');
	     console.log(myBookId)
	  //   $(".modal-body #bookId").val( myBookId );
	    //$('#addBookDialog').modal('show');
	});
 
  
  function setFunctionValue(value,id){
	 $('#function').val(value);
	 $('#functionId').val(id);
	$('#modalFuncao.in').modal('hide');
	//$('body').removeClass('modal-open');
	//$('.modal-backdrop').remove();
  }
	  
  function setDepartmentValue(value,id){
		 $('#department').val(value);
		 $('#departmentId').val(id);
		$('#modalLotacao.in').modal('hide');
		//$('body').removeClass('modal-open');
		//$('.modal-backdrop').remove();
	  }
  
  function setEmployeeValue(value,id){
		 $('#responsavel').val(value);
		 $('#responsavelId').val(id);
		$('#modalLotacao.in').modal('hide');
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
</html>