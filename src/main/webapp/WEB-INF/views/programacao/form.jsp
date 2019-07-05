  
    <div class="container">

          <jsp:include page="../templates/menu.jsp" ></jsp:include>
      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
      <!--  <h2>Cadastro de Servidor.</h2>-->
<div class="panel panel-default">
  <div class="panel-heading">Programação</div>
  <div class="panel-body">
  
  
                
        <form class="input-append" role="form" method="post" action="/eacervo/programacoes">
           <div class="form-group">
    <label for="id">ID:</label>
<!--     <input type="text" class="form-control" id="id" name="id" readonly="readonly" value="0"> -->
<!--         	<input type="button" class="add-row" value="Add Row"> -->
    
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
            </tr>
        </thead>
        <tbody>	
            <tr>
            <td><div class="input-group"><input type="text" class="form-control" name="productepisode" id="productepisode" > <input type="hidden"  >
                                <span class="input-group-btn">
                                              <a  class="btn btn-default" role="button" data-productepisode="" data-programgroup=""  data-productname=""  data-toggle="modal" id="openModalEpisode" ><span class="glyphicon glyphicon-search"></span>&nbsp;</a>
                                
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
                
                                
                                <td><input type="text" class="form-control" name="programDuration" id="programDuration" ></td>
                                <td>    <button type="button" class="btn btn-success btn-add" >
                        <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span> Inserir Linha  <!-- Add -->
                    </button></td>
                
            </tr>
        </tbody>
    </table>
 
              </div>
           </div>


          <!-- Trigger the modal with a button -->

 <button type="submit" class="btn btn-default">Salvar</button><br/><br/> 
</form>
  </form><!-- /end form -->
  </div>
      </div>
      </div>

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
    	var next = 1;
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
            
            incrementElementIndex('.form-group',':input[type="text"]');
 
                controlForm.find('.btn-add:not(:last)')
                .removeClass('btn-default').addClass('btn-danger')
                .removeClass('btn-add').addClass('btn-remove')
                
                .html('<span class="glyphicon glyphicon-minus" aria-hidden="true"></span> Remover Linha   ');
             
        }).on('click', '.btn-remove', function(e)
        {
    		$(this).parents('.form-group:first').remove();
    		 incrementElementIndex('.form-group',':input[type="text"]');
    		e.preventDefault();
    		return false;
    	});
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
    	  $( this ).closest('.form-group').each(function(index,element){    	    		
  		  $(this).find(':input:text').each(function(index, element){  		
  		  $(element).prop('id',element.id); 
  	
  		         if(element.id.includes('productepisode')){
                	$(modalCaller).data('productepisode',element.id)                	
                 } if(element.id.includes('programgroup')){
                	 $(modalCaller).data('programgroup',element.id)
                 }if(element.id.includes('productname')){
                	 $(modalCaller).data('productname',element.id)
                 }
           

  		  })
  	})

    	$("#modalEpisode").modal();

    	
    });
    function setEpisodeValue(element){
    	 
	
    	
    	table = $('#productEpisodeTable').DataTable( { retrieve: true} );


    	 var row_data = table.rows( { selected: true } ).data()[0];


   	 $('#'+ $(modalCaller).data('productepisode')).val(row_data.name);
   	 $('#'+$(modalCaller).data('programgroup')).val(row_data.product.productGroup.initials);
   	 $('#'+$(modalCaller).data('productname')).val(row_data.product.name);
   	var convertedDuration= moment().startOf('day')
    .seconds(row_data.duration)
    .format('H:mm:ss');
   	 $('#programDuration').val(convertedDuration);

   	$('#modalEpisode.in').modal('hide');
   	
   	
     }
    
    $('#modalEpisode').on('show.bs.modal', function (e) { 	  

    	var episodeName = $('#programepisode').val();
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

    
    


function action_product(data, type, full) {

	var  description = full.description;
	  console.log(description)
	 
// 	'<a class="btn btn-mini" data-id='+ full.id +' data-description='+ full.description + '>Escolher</a>'
	   return '<a class="btn btn-mini" data-dismiss="modal" onclick="setEpisodeValue(\''+ description +'\',\''+ full.id +'\')" data-id='+ full.id +' data-description='.concat(full.description).concat('>Escolher</a>') ;
	}
	

    </script>