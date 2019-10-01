<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >


<head>


<jsp:include page="../../templates/head.jsp" ></jsp:include>

</head>

<body>
<div class="container">

     <jsp:include page="../../templates/menu.jsp" ></jsp:include>
     
      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
<div class="panel panel-default">
 <div class="panel-heading">Usuários Cadastrados</div>
  <div class="panel-body">
   <form role="form" class="group">
  <table id="usersTable">
      <thead>
        <tr>
            <th>LOGIN</th>
            <th>NOME</th>
            <th>STATUS</th>                                     
            <th>AÇÃO</th>
            
        </tr>
    </thead>   
    </table> 
   </form>
  </div>
  </div>
</div>
      </div>

     
      

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
 <form role="form" class="episode">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">&Aacute;rea</h4>
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
              <label for="name">Episodio</label>
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
        
        
        $(document).ready(function()
        		{
         table =  $('#usersTable').DataTable( {
            	retrieve: true,            	
                "ajax":{url: '/eacervo/admin/users/api/v1/list', dataSrc:""},
                 "columns":[
                	 {"data":"username"},
                	 {data:"name"},
                	 {data:"status",
                	   render:function(data){
                   	  var result =  (data == 1) ? 'habilitado' : 'desabilitado';
                	   return result;
                   }},                 	 
                	 {"defaultContent":'<a  href="#" id="editButton" class="btn btn-info" role="button" data-toggle="modal" data-target="myModal" onclick="setUserValues(this)" >Editar</a> <a href="/eacervo/admin/users/remove/${user.id}" class="btn btn-info" role="button">Remover</a>'}
                	 
                 ]              
            } );
         
          //var modal = $(this);

    });
        
        
       function setUserValues(v){
    	   console.log('Set User values');    	   
    	   console.log('Table: '+table.row(this).data());
        $('#myModal').on('show.bs.modal', function (e) {
        	console.log('Modal Opened');    
        	})
        	
       }
       
       
 $(function() {
//twitter bootstrap script
 $("button#submit").click(function(){
         $.ajax({
     type: "POST",
 url: "/eacervo/areas",
 data: $('form.area').serialize(),
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
        
       
        
       function refreshModal(){ 
        
        $("#myModal").on('hidden.bs.modal', function (e) {
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