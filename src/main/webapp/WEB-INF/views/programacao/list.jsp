<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">


<head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<jsp:include page="../templates/head.jsp" ></jsp:include>

</head>

<body>
<div class="container">

     <jsp:include page="../templates/menu.jsp" ></jsp:include>
     
      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">

 <!-- <a id="reload" href="">Click me to refresh the table!</a> -->
    <datatables:table id="productTypeTable" row="productType" data="${productTypes}"   theme="bootstrap3" cssClass="table table-striped"  paginationType="full_numbers" displayLength="5">
        
        <datatables:column title="ID" property="id"   />
        <datatables:column title="TIPO PRODUTO" property="name"/>
<%--        	<datatables:column title="DESCRIÇÃO" property="description" />  --%>
      <datatables:column title="AÇÃO" >
       
   <a href="#" id="editButton" class="btn btn-info" role="button" data-toggle="modal" data-id="${productType.id}" data-name="${productType.name}" data-description="${productType.description}" data-target="#myModal" onclick="setValues()">Editar</a>
   <a href="/eacervo/tiposprodutos/remove/${productType.id}" class="btn btn-info" role="button">Remover</a>
  
      </datatables:column>
    </datatables:table>
  <div class="pagination-centered">
   <ul class="pagination">
    <input type="hidden" id="selected_value" value="3"></input>
    <input type="hidden" id="max_value" value="10"></input>
   </ul> 
  </div>
      </div>

     
      

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
 <form role="form" class="tiposprodutos">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Tipo de Produto</h4>
      </div>
      <div class="modal-body">
<!--         <p>Fun&ccedil;&atilde;o</p> -->
        
        <div class="form-group">
              <label for="id">ID:</label>
              <div class="input-group">
              <input type="text" class="form-control" id="id" name="id" >
              <span class="input-group-btn">
                <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-search"></span>&nbsp;</button>
              </span>
              </div>
           </div>

           <div class="form-group">                     
              <label for="name">Tipo de Produto</label>
              <input type="text" class="form-control"  name="name" id="name"></input>             
           </div>

           <div class="form-group">
              <label for="description">Descri&ccedil;&atilde;o:</label>
              <textarea type="text"  class="form-control" name="description" id="description"></textarea>
           </div>
  </form><!-- /end form-->
      </div>
      <div class="modal-footer">
        <button id="submit" class="btn btn-default" data-dismiss="modal" onclick="refreshModal()">Salvar</button>
        <a href="#" class="btn btn-default" data-dismiss="modal" onclick="refreshModal()">Close</a>
      </div>
    
    </div>

  </div>
</div><br/><br/><!-- /end modal -->
    </div> <!-- /container -->
        <script type="text/javascript">
       function setValues(){
        $('#myModal').on('show.bs.modal', function (e) {
        	
        	  var button = $(e.relatedTarget)
        	  console.log('Botao: '+button)
        	  // Button that triggered the modal
        	  var recipient = button.data('id')
        	  var name = button.data('name')
        	   var description= button.data('description')
        	  
        	  // Extract info from data-* attributes
        	  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
        	  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
        	  var modal = $(this);
        	      	 
        	  modal.find('#id').val(recipient)
        	  modal.find('#name').val(name)
        	  modal.find('#description').val(description)
        	
        	  
        	  
        	})
        	
       }
 $(function() {
//twitter bootstrap script
 $("button#submit").click(function(){
         $.ajax({
     type: "POST",
 url: "/eacervo/tiposprodutos",
 data: $('form.tiposprodutos').serialize(),
         success: function(msg){
                 $("#thanks").html(msg)
        $("#form-content").modal('hide'); 
         },
 error: function(){
	 return;
 //alert("failure");
 }
       });
 });
 });
        
        $(function() {
        	//twitter bootstrap script
        	 $(".pagination").click(function(){
               alert('valor')
        	 });
        	});
        
       function refreshModal(){ 
        
        $("#myModal").on('hidden.bs.modal', function (e) {
        	window.location.reload();
        });
       }
        
        $("#search").keyup(function(e){
        	if(e.which == 13){        		
          		$.ajax({url:"/eacervo/tiposprodutos",
    		        type:"get",
    		        data:{},
    		        success: function(response){
    		         //  $('table#resultTable tbody').html(response);
    		         
    		          }
    		});
        	}
  
		});
        
        


</script>
</body>
</html>