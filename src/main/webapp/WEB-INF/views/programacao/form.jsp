  
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
            <td><div class="input-group"><input type="text" class="form-control" name="productepisode" id="productepisode" > <input type="hidden" name="elementid" id="elementid" >
                                <span class="input-group-btn">
                                              <a  class="btn btn-default" role="button" data-toggle="modal" id="openModalEpisode" ><span class="glyphicon glyphicon-search"></span>&nbsp;</a>
                                
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
    
    $(document).on("click", "#openModalEpisode",function(){
    	 var element = $(this);
    	 element.data('element', $(element).parent().closest('div').parent().closest('div'));
    	// console.log("SOURCE "+$(element));
         //console.log("DIV "+$(element).parent().closest('div').parent().closest('div').find('input[type=hidden]').attr('id'));

    	$("#modalEpisode").modal();
    	//console.log("TARGET "+$("#modalEpisode .modal-body"));
    	$("#modalEpisode .modal-body").attr("id",function(){
    		//console.log("ELEMENT ID "+element.attr("id"));
    		            return element.id;
    	})
    	 $(".modal-body ").val(element);
    	
    });
     
    $(document).ready(function()
    		{
    	var next = 1;
        $(document).on('click', '.btn-add', function(e)
        {
        	
            e.preventDefault();
            console.log("DIV "+$(e).parent().closest('div'));
            $('#elementid').val(next);
            var controlForm = $('.panel-body form:first'),
                currentEntry = $(this).parents('.form-group:first');
            
            newEntry = $(currentEntry.clone()).appendTo(controlForm);
            //console.log("NEW ENTRY "+currentEntry.html());
            
            newEntry.each(function(index,element){
          	  console.log("ELEMENT "+$(element).attr("name"))
          	    $(element).attr("id", function(){
            		  return $(element).attr("name")+index
            	  })
              
            })
            
            
            var textinputs = newEntry.find(':input[type="text"]').each(function(index, element){
            	
            	  $(element).attr("id", function(){
            		  return $(element).attr("name")+index
            	  })
            	
            });
            
            var hiddeninputs = currentEntry.clone().find(':input[type="hidden"]');
            
            //var modifiedclone =currentEntry.clone();

            console.log(textinputs.length+"\n"+hiddeninputs.length);
            
              for(i=0; textinputs.length >i;i++){
            	  var id = textinputs[i].id;            	
                  newEntry.each(function(index,element){
                  	  console.log("ELEMENT "+$(element).attr("name"))
                  	    $(element).attr("id", function(){
                    		  return textinputs[i].name+next
                    	  })
                      
                    })
            	  console.log("TI "+textinputs[i].id+next);
              }
              
             

              
              
            var episodeinput = newEntry.find('input')
                       episodeinput.val('');
            var idvalue = episodeinput.attr( "id");
         
            episodeinput.attr( "id", function() {            	             
                    	    return episodeinput.attr("name")+next;
                    	  });
            
                controlForm.find('.btn-add:not(:last)')
                .removeClass('btn-default').addClass('btn-danger')
                .removeClass('btn-add').addClass('btn-remove')
                
                .html('<span class="glyphicon glyphicon-minus" aria-hidden="true"></span> Remover Linha   ');
                next = next+1;
        }).on('click', '.btn-remove', function(e)
        {
    		$(this).parents('.form-group:first').remove();

    		e.preventDefault();
    		return false;
    	});
    });
    

    
    function setEpisodeValue(e){
    	 
    	
        
    	var allInputHidden = $("#openModalEpisode").data('element').find('input[type=hidden]').attr('id');
    	    
    	var allInputTexts = $("#openModalEpisode").data('element').find(':input[type=text]');
    	 
//     	console.log(allInputTexts[0].id)
//     	    	console.log(allInputTexts[1].id)
//     	    	    	console.log(allInputTexts[2].id)
//     	    	    	    	console.log(allInputTexts.length)
    	    	    	    	
    	    	    	    	
//     	    	    	    	    	    	    	    	console.log(allInputHidden)




    	
    	console.log("RELATED "+$("#openModalEpisode").data('element').find(':input'));
    	
    	table = $('#productEpisodeTable').DataTable( { retrieve: true} );
       

    	 var row_data = table.rows( { selected: true } ).data()[0];
    	   
   	 $('#productepisode').val(row_data.name);
   	 $('#programgroup').val(row_data.product.productGroup.initials);
   	 $('#productname').val(row_data.product.name);
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
      
      	//console.log(modal);
      	
//     $('#productEpisodeTable').on('search.dt',function(){
//     	 var value = $('.dataTables_filter input').val();
//     	 console.log(value); // <-- the value
//     }); 	
      	  

    
});

//Add row dynamically
// $(function()
// {
	
//     $(document).on('click', '.btn-add', function(e)
//     {
//         e.preventDefault();           
//         var controlForm = $('.panel-body form:first'),
//             currentEntry = $(this).parents('.form-group:first'),
//             newEntry = $(currentEntry.clone()).appendTo(controlForm);

//         var episodeinput = newEntry.find('input')
//                    episodeinput.val('');
//         var idvalue = episodeinput.attr( "id");
//         //console.log(next++);
       
//         console.log("NEXT "+ (++next));
//         console.log("ID VALUE "+idvalue);
//         episodeinput.attr( "id", function() {
        	             
//                 	    return idvalue;
//                 	  });
        
//         controlForm.find('.btn-add:not(:last)')
//             .removeClass('btn-default').addClass('btn-danger')
//             .removeClass('btn-add').addClass('btn-remove')
            
//             .html('<span class="glyphicon glyphicon-minus" aria-hidden="true"></span> Remover Linha   ');
//     }).on('click', '.btn-remove', function(e)
//     {
// 		$(this).parents('.form-group:first').remove();

// 		e.preventDefault();
// 		return false;
// 	});
// });

    
    


function action_product(data, type, full) {

	var  description = full.description;
	  console.log(description)
	 
// 	'<a class="btn btn-mini" data-id='+ full.id +' data-description='+ full.description + '>Escolher</a>'
	   return '<a class="btn btn-mini" data-dismiss="modal" onclick="setEpisodeValue(\''+ description +'\',\''+ full.id +'\')" data-id='+ full.id +' data-description='.concat(full.description).concat('>Escolher</a>') ;
	}
	

    </script>