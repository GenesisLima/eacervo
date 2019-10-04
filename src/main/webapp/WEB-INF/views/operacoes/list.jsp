<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">


<head>



<jsp:include page="../templates/head.jsp" ></jsp:include>

</head>

<body>
<div class="container">

     <jsp:include page="../templates/menu.jsp" ></jsp:include>
     
      <!-- Main component for a primary view or call to action -->
      <div class="jumbotron">
         <form role="form" class="group">
              <div class="form-inline">
<label id="labelDate" >Data de Exibição:</label><label id="labelDate-value"></label>
<input  type="date" class="form-control" name="exhibitionDate" id="exhibitionDate" />
  </div>
<div class="panel panel-default">
 <div class="panel-heading">Programação</div>
  <div class="panel-body">

  <table id="scheduleTable">
      <thead>
        <tr>
        <th>Código</th>        
        <th>Episódio</th>
        <th>Tipo</th>
        <th>Produto</th>                
        <th>Duracao</th>
        <th>Ação</th>            
        </tr>
    </thead>   
    </table> 
   </form>
  </div>
  </div> <!-- /container -->
  <!-- Modal -->
<div id="modalReport" class="modal fade" role="dialog">
  <div class="modal-dialog">
 <form role="form" class="report">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Reportar Incidente</h4>
      </div>
      <div class="modal-body">
           <div class="form-group">                     
              <label for="name">Descrição:</label>
              <textarea class="form-control"  rows="4" cols="50" name="report" id="report"></textarea> 
              <input type="hidden" id="scheduleId" name="scheduleId"></input>            
              <input type="hidden" id="scheduleItemId" name="scheduleItemId"></input>            
              
           </div>
          
    
  </form><!-- /end form-->
      </div>
      <div class="modal-footer">
        <button id="submit" class="btn btn-default" data-dismiss="modal">Salvar</button>
        <a href="#" class="btn btn-default" data-dismiss="modal">Close</a>
      </div>
    
    </div><!-- /end modal -->
  
  
        <script type="text/javascript">
        $(document).ready(function()
        		{
        	//Init date picker with current date
             setCurrentDate("exhibitionDate");

        	 fillTable("2019-08-20");
        	// fillTable($('#exhibitionDate').val());

         
          //var modal = $(this);

    });
        
    function setCurrentDate(elementId){
    	var today = moment().format('YYYY-MM-DD');
    	$("#"+elementId).val(today);
    	

    }
    
    function fillTable(data, redirectIfAjaxReturnEmpty){
    	
    	 var scheduleItemId; 
    	
        table =  $('#scheduleTable').DataTable( {
        	retrieve: true,            	
            "ajax":{url: '/eacervo/api/v1/schedule/item?type=json&data='+data, dataSrc:""},
            error: function (xhr, textStatus, error){
               // if (typeof console == "object") {
                    console.log("ERRO "+xhr.status + "," + xhr.responseText + "," + textStatus + "," + error); 
               // }
            },  
              "columns":[
            	 {data:"scheduleItems",            
                  render:function(data,type,row){
                	  var result ='';
                	  data.forEach(function(item){
                		  result = item.scheduleItemCode
                		  scheduleItemId = result;
                	  });
                	   return result;
                   }}, 
                   {data:"scheduleItems",
                       render:function(data,type,row){
                     	  var result ='';
                     	  data.forEach(function(item){
                     		  result = item.episodeName
                     	  });
                     	   return result;
                        }},
                        {data:"scheduleItems",
                            render:function(data,type,row){
                          	  var result ='';
                          	  data.forEach(function(item){
                          		  result = item.productType
                          	  });
                          	   return result;
                             }},
                             {data:"scheduleItems",
                                 render:function(data,type,row){
                                 	  var result ='';
                                 	  data.forEach(function(item){
                                 		  result = item.productName
                                 	  });
                                 	   return result;
                                    }},
                                    {data:"scheduleItems",
                                        render:function(data,type,row){                                            
                                        	  var result ='';
                                        	  data.forEach(function(item){
                                        		  result = moment().startOf('day')
                                                  .seconds(item.episodeDuration)
                                                  .format('H:mm:ss');
                                        	  });
                                        	   return result;
                                           }},
            	 
            	 {render:function(data, type, full, meta){            		
            		 return '<a  href="#" id="editButton" class="btn btn-info" role="button" data-schedule-id='+full.id+' data-item-id='+scheduleItemId+' data-toggle="modal" data-target="#modalReport">Reportar</a>'            	 
               }}
            	 
             ]

        } );
    }

    
 
    $('#modalReport').on('show.bs.modal', function (e) {
    	var modal = $(this);
    	var button = $(e.relatedTarget);
    	modal.find("#scheduleId").val(button.data("schedule-id"));
    	modal.find("#scheduleItemId").val(button.data("item-id"));
    	console.log("HIDDEN VALUE "+modal.find("#scheduleId").val());
     	
    })
    
     //Sends the modal form data that contains the report
     $("button#submit").click(function(){
         $.ajax({
     type: "POST",
 url: "/eacervo/operacoes/incidente",
 data: $('form.report').serialize(),
         success: function(msg){
        	 console.log("REPORT RETURNS THE FOLLOWING MESSAGE: "+msg);
                 $("#thanks").html(msg)
        $("#form-content").modal('hide'); 
         }
       }).done(function(data){
    	   console.log("DADOS DO FORMULÁRIO "+$('form.report').serialize())
       }).fail(function(jqXHR, textStatus, errorThrown){
    	  // window.location.replace("/eacervo/"+jqXHR);
    	      	   console.log("DADOS DO FORMULÁRIO "+$('form.report').serialize())

    	   console.log("JQXHR "+JSON.stringify(jqXHR));
    	   console.log("textStatus "+textStatus);
    	   console.log("errorThrown "+errorThrown);

       });
 });
    
</script>
</body>
</html>