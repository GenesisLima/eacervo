<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >


<head>
<script src="/eacervo/resources/js/angular.min.js"></script>
<script src="/eacervo/resources/js/angular-route.min.js"></script>
<script src="/eacervo/resources/js/angular-resource.min.js"></script>
<script src="/eacervo/resources/js/angular-ui.min.js"></script>



<script src="/eacervo/resources/js/app.js"></script>

<script src="/eacervo/resources/js/productgroup_controller.js"></script>


<jsp:include page="../templates/head.jsp" ></jsp:include>

</head>

<body>
<div class="container" >

     <jsp:include page="../templates/menu.jsp" ></jsp:include>
     
      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron" >
<div class="panel panel-default">
 <div id="productDiv" class="panel-heading">Produtos</div>
  <div class="panel-body">
   <form role="form" class="group">
  <table id="productTable">
      <thead>
        <tr>
            <th>ID</th>
            <th>NOME</th>
            <th>TIPO</th>                         
            <th>AÇÃO</th>
            
        </tr>
    </thead>   
    </table> 
   </form>
  </div>
  </div>
</div>
      </div>

     
     <!-- /Begin modal Group-->
 <div id="modalGroup" class="modal fade" role="dialog" >
  <div class="modal-dialog">
 <form role="form" class="group">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Buscar Grupo</h4>
      </div>
      </div>
      <div class="modal-body">
    <table id="productGroupTable">
      <thead>
        <tr>
            <th>ID</th>          
            <th>NOME</th>
              <th>TIPO</th>             
            <th>AÇÃO</th>
            
        </tr>
    </thead>   
    </table> 
  </form><!-- /end form-->
      </div>
      <div class="modal-footer">
<!--         <button id="submit" class="btn btn-default" data-dismiss="modal">Salvar</button> -->
        <a href="#" class="btn btn-default" data-dismiss="modal">Close</a>
      </div>
    
    </div>

  </div>
</div><br/><br/><!-- /end modal Group-->     

<!-- Modal -->
<div id="modalProduct" class="modal fade" role="dialog" ng-app="eacervo" ng-controller="ProductGroupController">
  <div class="modal-dialog">
 <form id="formProdutos" role="form" class="produtos">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Produto</h4>
      </div>
      <div class="modal-body">
        <p>Fun&ccedil;&atilde;o</p>
        
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
              <label for="name">Produto</label>
              <input type="text" class="form-control"  name="name" id="name"></input>             
           </div>
           
           <div class="form-group">                     
    <label for="sel1">Grupo:</label>
      <select class="form-control" id="productGroupId" name="productGroupId" ng-model="selectedType">
       <option ng-repeat="type in productTypes | unique:type" value="{{type.id}}" >{{type.name}}</option>
      </select>
           </div>

           <div class="form-group">
              <label for="description">Descri&ccedil;&atilde;o:</label>
              <textarea type="text"  class="form-control" name="description" id="description"></textarea>
           </div>
<!--                <div class="form-group"> -->
<!--               <label for="partner">Parceiro:</label> -->
<!--               <textarea type="text"  class="form-control" name="partner" id="partner"></textarea> -->
<!--            </div> -->
<!--            <div class="form-group"> -->
<!--               <label for="productionCost">Custo de Produção:</label> -->
<!--               <textarea type="text"  class="form-control" name="productionCost" id="productionCost"></textarea> -->
<!--            </div> -->
  </form><!-- /end form-->
      </div>
      <div class="modal-footer">
        <button id="modalSubmit" class="btn btn-default" data-dismiss="modal"onclick="refreshModal()" >Salvar</button>
        <a href="#" class="btn btn-default" data-dismiss="modal" onclick="refreshModal()">Close</a>
      </div>
    
    </div>

  </div>
</div><br/><br/><!-- /end modal -->
    </div> <!-- /container -->
        <script type="text/javascript">
        
        
        $(document).ready(function()
        		{
         
         table =  $('#productTable').DataTable( {
            	retrieve: true,            	
                "ajax":{url: '/eacervo/api/v1/product?type=json', dataSrc:""},
                 "columns":[
                	 {"data":"id"},
                	 {"data":"name"},                	
                	 {"data":"productGroupName"},
                	 {render:function(data, type, full, meta){     
                		// console.log("FULL "+JSON.stringify(full));
                		 return '<a  href="#" id="editButton" class="btn btn-info" role="button" data-id="'+full.id+'" data-name="'+full.name+'" data-product="'+full.productGroupId+'" data-product-name="'+full.productGroupName+'" data-description="'+full.description+'" data-toggle="modal" data-target="#modalProduct" onclick="setProductValues(this)" >Editar</a> <a href="/eacervo/produtos/remove/'+full.id+'" class="btn btn-info" >Remover</a>';
                	 }}
                	 ]              
            } );
         
          //var modal = $(this);

    });
        
        
       function setProductValues(){
    	   console.log('Set product values');    	   
    	   console.log('Table: '+table.row(this).data());
        $('#modalProduct').on('show.bs.modal', function (e) {
        	console.log('Modal Opened');   
        	var button = $(e.relatedTarget)
      	  console.log('Botao: '+button.data('product'))
      	  // Button that triggered the modal
      	  var recipient = button.data('id')      	
      	  var name = button.data('name')      	 
      	  var productGroupId= button.data('product')
      	  var productGroupName= button.data('product-name')
          var description= button.data('description')

      	  
      	  // Extract info from data-* attributes
      	  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
      	  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
      	  var modal = $(this);
      	      	 
      	  modal.find('#id').val(recipient)
      	  modal.find('#name').val(name)
      	  modal.find('#description').val(description)
      	  
//       	  console.log("PRODUCT GROUP ID "+productGroupId);
      	 modal.find('#productGroupId option[value="'+productGroupId+'"]').children('option').val(productGroupId);
      	 modal.find('#productGroupId option[value="'+productGroupId+'"]').children('option').text(productGroupName);
       	 modal.find('#productGroupId option[value="'+productGroupId+'"]').attr('selected','selected');
//        	$(function(){
//        	    $('#productGroupId option').filter(function(){
//        	        return ($(this).val().trim()=="" && $(this).text().trim()=="");
//        	    }).remove();
//        	});
        	})
        	
       }
       
       
 //$(function() {
//twitter bootstrap script
 $("#modalSubmit").click(function(event){
	 event.preventDefault();
	 console.log("ALTERANDO PRODUTO");

         $.ajax({
     type: "POST",
 url: "/eacervo/produtos",
 data: $('#formProdutos').serialize(),
         success: function(msg){
                 $("#thanks").html(msg)
        $("#form-content").modal('hide'); 
         },
//  error: function(xhr, status, errorThrown){
// 	 alert($('#produtos').serialize())
//  //alert("failure");
//  }
       })
       .done(function(data){
//     	   console.log("DADOS DO FORMULÁRIO "+data)
       }).fail(function(jqXHR, textStatus, errorThrown){
    	   window.location.replace("/eacervo/"+jqXHR);
//     	   console.log("JQXHR "+JSON.stringify(jqXHR));
//     	   console.log("textStatus "+textStatus);
//     	   console.log("errorThrown "+errorThrown);

       });
        
 });
 //});
        
       
        
       function refreshModal(){ 
         console.log("REFRESH MODAL");
        $("#modalProduct").on('hidden.bs.modal', function (e) {
     	  // $("#productGroupColumn").load(location.href + " #productGroupColumn");
        	window.location.reload();
        });
       }
        
        $("#search").keyup(function(e){
        	if(e.which == 13){        		
          		$.ajax({url:"/eacervo/funcoes",
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