
<script type="text/javascript" src="/eacervo/resources/js/jquery.mask.js"> </script>
<script type="text/javascript" src="/eacervo/resources/js/jquery.mask.min.js"> </script>
<!-- MomentJS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.js"> </script>


<div class="container">

          <jsp:include page="../templates/menu.jsp" ></jsp:include>
    

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
      <!--  <h2>Cadastro de Servidor.</h2>-->
<div class="panel panel-default">
  <div class="panel-heading">Cadastrar Epis&oacute;dio</div>
  <div class="panel-body">
        <form role="form" method="post" action="/eacervo/episodios">
           <div class="form-group">
    <label for="episode_id">ID:</label>
    <input type="text" class="form-control" id="id" name="episode_id" readonly="readonly" >
  </div>
           <div class="form-group">
              <label for="name">Nome:</label>
              <input type="text" class="form-control" id="name" name="name" >
           </div>
              <div class="form-group">
              <label for="name">Produto:</label>
              <div class="input-group">
              <input type="text" class="form-control" id="productName" name="productName">
               <input type="hidden" class="form-control" id="productId" name="productId">
              <span class="input-group-btn">
                <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modalProduct" data-productName="" data-productId=""><span class="glyphicon glyphicon-search"></span>&nbsp;</button>
              </span>
              </div>              
           </div>
              <div class="form-group">
              <label for="name">Dura&ccedil;&atilde;o:</label>
              <div class="input-group">
              <input type="text" class="form-control" id="duration" name="duration" >              
              </div>              
           </div>
           <div class="form-group">
              <label for="description">Descri&ccedil;&atilde;o:</label>
              <textarea  class="form-control" id="description" name="description"></textarea>
           </div>

          <!-- Trigger the modal with a button -->

 <button id="formSubmit" type="submit" class="btn btn-default">Salvar</button><br/><br/> 
</form>


  </div>
      </div>
      </div>

    </div> <!-- /container -->
            <!-- Modal episódio-->
<div id="modalProduct" class="modal fade" role="dialog" >

  <div class="modal-dialog">
 <form role="form" class="episode">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Buscar Produto</h4>
      </div>
<!--       </div> -->
      <div class="modal-body">
    <table id="productTable">
      <thead>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>AÇÃO</th>
            
        </tr>
    </thead>   
    </table>
<!--      </div>  -->
      

  </form><!-- /end form-->
      </div>
      <div class="modal-footer">
<!--         <button id="submit" class="btn btn-default" data-dismiss="modal">Salvar</button> -->
        <a href="#" class="btn btn-default" data-dismiss="modal">Close</a>
      </div>
    
    </div>
    
    <script type="text/javascript">
    
    $('#modalProduct').on('show.bs.modal', function (e) {
        $('#productTable').DataTable( {
     	   language:{
     		   "search":"Buscar ",
     		   "zeroRecords": "Nenhum registro disponível.",
                "lengthMenu": "Mostrando _MENU_ registros",        		         		   
     		   "infoEmpty": "Mostrando _START_ de _END_ do total de  _TOTAL_ registros",
                "infoFiltered": "(filtered from _MAX_ total records)",
                paginate:{
             	next: "próximo",
             	previous: "anterior"
                }
     	   },
     	   
    
            
        	retrieve: true,
            "ajax":{url: '/eacervo/api/v1/product?type=json', dataSrc:""},
             "columns":[
            	 {"data":"id"},
            	 {"data":"name"},               
            	 {"defaultContent":'<a class="btn btn-mini" data-dismiss="modal" onclick="setProductValue(this)" >Escolher</a>'}
            	 
             ]
            
        } );
      
      var modal = $(this);

});
    
    
    
    
    $(document).ready(function()
    		{
    $('#duration').mask('00:00:00');
    		});
    
    $(document).on('click', '#formSubmit', function(e)
            {
    	var seconds = moment.duration($("#duration").val()).asSeconds();
    	console.log(seconds);
   	 $("#duration").val(seconds);
            })
            
             function setProductValue(element){
    	   
    	   table = $('#productTable').DataTable( { retrieve: true} );
       	$('#productTable tbody').on( 'click', 'tr', function () {
      	   var row_data = table.row(this).data();
             console.log("ROW DATA "+row_data)
        	$("#productId").val(row_data.id);
             $("#productName").val(row_data.name);
//            	 $("#productName").val(row_data.product.productGroup.name);
       		
       		
     	   

       	});
    	   
        	$('#modalEpisode.in').modal('hide');
      
        }      
    
    </script>