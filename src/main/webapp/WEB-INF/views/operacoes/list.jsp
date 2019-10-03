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
  </div>
      </div>


    </div> <!-- /container -->
        <script type="text/javascript">
        $(document).ready(function()
        		{
        	//Init date picker with current date
             setCurrentDate("exhibitionDate");

        	// fillTable("2019-08-20");
        	 fillTable($('#exhibitionDate').val());

         
          //var modal = $(this);

    });
        
    function setCurrentDate(elementId){
    	var today = moment().format('YYYY-MM-DD');
    	$("#"+elementId).val(today);
    	

    }
    
    function fillTable(data, redirectIfAjaxReturnEmpty){
    	
    	
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
            	 
            	 //{"data":"group"},
            	 {"defaultContent":'<a  href="#" id="editButton" class="btn btn-info" role="button" data-toggle="modal" data-target="modalSchedule" onclick="setProductValues(this)" >Reportar</a>'}
            	 
             ]
//              fnDrawCallback: function () {
//              	var rows = this.fnGetData();
//              	if ( rows.length === 0 ) {
//              		$.ajax({
//                  		"datatype":'json',
//                  		"type":'GET',
//                  		 "url":"/api/v1/schedule/nodata"
// //                  		  data: {
// //                  			 "sEcho": 1,
// //                  		    "iTotalRecords": "0",
// //                  		    "iTotalDisplayRecords": "0",
// //                  		    "aaData": []
// //                  		  }
//                  			 }
//                  			 ) 
//              	}
//              	},
        } );
    }
    
    function redirectIfAjaxReturnEmpty(sSource, oSettings){
      	 oSettings.jqXHR = $.ajax(
      			 {
      		"datatype":'json',
      		"type":'GET',
      		 "url":"/eacervo/api/v1/schedule/nodata"
      		 //"data":aoData,
      		 //"success":fnCallback
      			 }
      			 )
       }
</script>
</body>
</html>