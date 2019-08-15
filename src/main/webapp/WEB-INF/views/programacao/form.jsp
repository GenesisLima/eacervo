  
    <div class="container">

          <jsp:include page="../templates/menu.jsp" ></jsp:include>
      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
      <!--  <h2>Cadastro de Servidor.</h2>-->
<div class="panel panel-default">
  <div class="panel-heading">Programação</div>
  <div class="panel-body">
  
  
                
        <form class="input-append" role="form" method="post" action="/eacervo/programacoes">
           <div class="form-inline">
<label id="labelDate" >Data de Exibição:</label><label id="labelDate-value"></label>
<input type="date" class="form-control" name="exhibitionDate" id="exhibitionDate" />
  </div>
           <div class="form-group">
          <table >
        <thead>
            <tr>
               
                <th>Episódio</th>
<!--                 <th>Tipo</th> -->
                <th>Tipo</th>
                <th>Produto</th>                
                <th>Duracao</th>
                 <th>Código</th>
            </tr>
        </thead>
        <tbody>	
            <tr>
            <td><div class="input-group"><input type="text" class="form-control" name="productepisode" id="productepisode" > 
<!--             <input type="hidden"  > -->
                                <span class="input-group-btn">
                                              <a  class="btn btn-default" role="button" data-productepisode="" data-programgroup=""  data-productname="" data-programduration="" data-scheduleid="" data-toggle="modal" id="openModalEpisode" ><span class="glyphicon glyphicon-search"></span>&nbsp;</a>
                          
                                </span></div></td>
<!--             <td>               -->
               
<!--     <select  class="form-control" id="programtype" name="programtype"> -->
<!--       <option ng-repeat="type in productTypes" ng-value={{type.initials}} ng-model="type">{{type.initials}}</option> -->
    
<!-- </select>   </td>   -->
                <td><input  type="text" class="form-control" name="programgroup" id="programgroup" ng-model="initials" readonly></td>

                                <td>
                                <div class="input-group">                                                        
              <input type="text" class="form-control" name="productname" id="productname" readonly="readonly" value="0">
              <input type="hidden" id="productid" name="productid" />
<!--               <span class="input-group-btn"> -->
<!--               <a  class="btn btn-default" role="button" data-toggle="modal"  data-target="#modalProduct" ><span class="glyphicon glyphicon-search"></span>&nbsp;</a> -->
<!--             </span> -->
            </div><!--end input-group-->
                                </td>
                
                                
                                <td><input type="text" class="form-control" name="programduration" id="programduration"></td>
                                <td><div class="input-group"><input type="text" class="form-control" name="scheduleid" id="scheduleid" readonly></div></td>
                                
                                <td>    <button type="button" class="btn btn-success btn-add" >
                        <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span> Inserir Linha  <!-- Add -->
                    </button></td>
                
            </tr>
        </tbody>
    </table>
 
              </div>
           </div>


          <!-- Trigger the modal with a button -->

 <button type="submit" id="submitform" class="btn btn-default">Salvar</button><br/><br/> 
</form>
  </form><!-- /end form -->
  </div>
      </div>
<!--       </div> -->

    </div> <!-- /container -->
    
        <!-- Modal episódio-->
<div id="modalEpisode" class="modal fade" role="dialog" >

  <div class="modal-dialog">
 <form role="form" class="episode">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Buscar Episodio</h4>
      </div>
      <div class="modal-body">
    <table id="productEpisodeTable">
      <thead>
        <tr>
            <th>ID</th>
            <th>NAME</th>
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
    
    
    
    <script type="text/javascript">
   
     
    
   
    $(document).ready(function()
    		{
    	
    	
    	 $('#programduration').mask('00:00:00');
    	
    	var next = 1;
    	//creates the add button
        $(document).on('click', '.btn-add', function(e)
        {
        	
            e.preventDefault();
            var formGroup = '.form-group';
        
            var controlForm = $('.panel-body form:first'), currentEntry = $(formGroup).last();
             cloneEntry = currentEntry.clone();
             $(cloneEntry).find(':input[type="text"]').each(function(index, element){
             	$(this).val('')
             });
            newEntry = $(cloneEntry).appendTo(controlForm);
           // adjustProgramDuration(newEntry);
            incrementElementIndex('.form-group',':input[type="text"]');
//             renameElementNameAfterDefineIndex('.form-group',':input[type="text"]');
                controlForm.find('.btn-add:not(:last)')
                .removeClass('btn-default').addClass('btn-danger')
                .removeClass('btn-add').addClass('btn-remove')                
                .html('<span class="glyphicon glyphicon-minus" aria-hidden="true"></span> Remover Linha.');
                
              //calculates the total schedule time by gathering the amount of time for each product
               //updateScheduleTime('.form-group',':input[type="text"]');
                
              //creates the remove button               
        }).on('click', '.btn-remove', function(e)
        {
    		$(this).parents('.form-group:first').remove();
    		 incrementElementIndex('.form-group',':input[type="text"]');
//     		 renameElementNameAfterDefineIndex('.form-group',':input[type="text"]');
    		e.preventDefault();
    		return false;
    	}).on('click', '#submitform', function(e){
    		console.log("FORM SUBMIT ");
    		renameElementNameAfterDefineIndex('.form-group',':input[type="text"]');
    		adjustProgramDuration('.form-group',':input[type="text"]');
    	})
    	;
        //
     
        
        
    });
    
    function incrementElementIndex(elementClass, controlType){
        $(elementClass).each(function(index, element){
            formIndex = index           	
     	 $(this).find(controlType).each(function(index, element){      		 
        	  $(element).attr("id", function(){            		  
        		  return $(element).attr("name")+formIndex
        	  })
        	 
	           
        });
     	
     });
    }
    

    
    function renameElementNameAfterDefineIndex(elementClass, controlType){
        $(elementClass).each(function(index, element){                     	
     	 $(this).find(controlType).each(function(index, element){     		 
     		 $(element).prop("name", element.id);
        });
     	
     });
    }

//     function getElementsIDs(elementClass, controlType){
//     	$( this ).closest('.form-group').each(function(index,element){
//   		  $(this).find(':input:text').each(function(index, element){
//   			  console.log("DATA "+element.id)
//   		  })
//   	})
//     }

     var modalCaller;
    $(document).on("click", "#openModalEpisode",function(){
    	   modalCaller = $(this)

    	 //TODO refactor this approach. It is iterating over all divs.
    	// var element = $(this).parent('.form-group');
    	  // modalCaller = $(this)

    	  $( this ).closest('.form-group').each(function(index,element){    	    		
  		  $(this).find(':input:text').each(function(index, element){  		
  		  $(element).prop('id',element.id); 
  	
  		         if(element.id.includes('scheduleid')){
        	       $(modalCaller).data('scheduleid',element.id)                   
  		         } if(element.id.includes('productepisode')){
                	$(modalCaller).data('productepisode',element.id)                	
                 } if(element.id.includes('programgroup')){
                	 $(modalCaller).data('programgroup',element.id)
                 }if(element.id.includes('productname')){  
                	 $(modalCaller).data('productname',element.id)
                 }if(element.id.includes('programduration')){
                	 $(modalCaller).data('programduration',element.id)

                 }
           

  	})

    	$("#modalEpisode").modal();

    	
    });
    });
    
    function adjustProgramDuration(elementClass, controlType){
        $(elementClass).each(function(index, element){                     	
        	 $(this).find(controlType).each(function(index, element){     		 
        		 if(element.id.includes('programduration')){        		
	 var seconds = moment.duration($(element).val()).asSeconds();
	 $(element).val(seconds); 
        		 }
           });
        	
        });
    	
    	
    	
    	 	    		
     		 
     			 
//      				var convertedDuration = moment().startOf('day')
//      			    .seconds($(element).val())
//      			    .format('H:mm:ss');
//      				$(element).val(convertedDuration);
//      				console.log("CONVERTED "+convertedDuration);
         			 //$(element).val(moment(future).format("HH:mm:ss"));
         			          			 

 }
//      		  })
//      		  })
//     	 }
   
  
    
    
    function setEpisodeValue(element){	 

    	console.log("EPISODE ID "+$(element));
    
    	table = $('#productEpisodeTable').DataTable( { retrieve: true} );
    	$('#productEpisodeTable tbody').on( 'click', 'tr', function () {
  		
  	
    	var row_data = table.row(this).data();
    	   
   	 $('#'+ $(modalCaller).data('productepisode')).val(row_data.name);
   	 $('#'+$(modalCaller).data('programgroup')).val(row_data.product.productGroup.initials);
   	 $('#'+$(modalCaller).data('productname')).val(row_data.product.name);
//    	 console.log("DURATION "+row_data.product.duration);
//    	$('#'+$(modalCaller).data('programduration')).val(row_data.product.duration);
//    	console.log("C  "+convertTimeToSeconds($('#'+$(modalCaller).data('programduration')).val()));
//    	console.log("SETTING SCHEDULE ID "+row_data.product.productGroup.initials+row_data.id+row_data.product.id);
	$('#'+$(modalCaller).data('scheduleid')).val(row_data.product.productGroup.initials+row_data.id+row_data.product.id);
   	
	//adjustProgramDuration($(element));
	
	var convertedDuration = moment().startOf('day')
    .seconds(row_data.duration)
    .format('H:mm:ss');
	console.log("CONVERT DURATION "+moment.duration(convertedDuration).asSeconds());
	$('#'+$(modalCaller).data('programduration')).val(convertedDuration);
//    	 $('#programduration').val(convertedDuration);

   	$('#modalEpisode.in').modal('hide');
    	} );
   	
    	//$("#labelID-value").html(row_data.product.productGroup.initials+)
    	
     }
    
    $('#modalEpisode').on('show.bs.modal', function (e) {
        $('#productEpisodeTable').DataTable( {
        	retrieve: true,
            "ajax":{url: '/eacervo/api/v1/episode/all?type=json', dataSrc:""},
             "columns":[
            	 {"data":"id"},
            	 {"data":"name"},            	
            	 {"defaultContent":'<a class="btn btn-mini" data-dismiss="modal" onclick="setEpisodeValue(this)" >Escolher</a>'}
            	 
             ]
            
        } );
      
      var modal = $(this);

});

    
    



    </script>