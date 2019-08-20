<div class="container">

      <jsp:include page="../templates/menu.jsp" ></jsp:include>
     

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
      <!--  <h2>Cadastro de Servidor.</h2>-->
<div class="panel panel-default">
  <div class="panel-heading">Cadastrar Inserção</div>
  <div class="panel-body">
        <form role="form" method="post" action="/eacervo/insercoes">
           <div class="form-group">
    <label for="insertion_id">ID:</label>
    <input type="text" class="form-control" id="insertion_id" name="insertion_id" readonly="readonly" value="0">
  </div>
        
           <div class="form-group">
            <label for="episodeName">Episódio:</label>
            <div class="input-group">                            
              <input type="text" class="form-control" id="episodeName" name="episodeName" readonly="readonly" >
              <input type="hidden" id="episodeId" name="episodeId" value="1"/>
              <span class="input-group-btn">
              <a  class="btn btn-default" role="button" data-toggle="modal"  data-target="#modalEpisode" data-episodeName="" data-episodeId=""><span class="glyphicon glyphicon-search"></span>&nbsp;</a>
            </span>
            </div>

             </div>
             
                <div class="form-group">
              <label for="name">Produto:</label>
              <div class="input-group">
              <input type="text" class="form-control" id="productName" name="productName">
              <span class="input-group-btn">
                <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-search"></span>&nbsp;</button>
              </span>
              </div>
           </div>
             
               <div class="form-group">
              <label for="description">Descri&ccedil;&atilde;o:</label>
              <textarea  class="form-control" id="description" name="description"></textarea>
           </div>
          <!-- Trigger the modal with a button -->

 <button type="submit" class="btn btn-default">Salvar</button><br/><br/> 

  </form><!-- /end form -->
  </div>
      </div>
      </div>

    </div> <!-- /container -->
    <!-- /Begin modal Episode-->
 <div id="modalEpisode" class="modal fade" role="dialog" >
  <div class="modal-dialog">
 <form role="form" class="group">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Buscar Episódio</h4>
      </div>
      <div class="modal-body">
    <table id="episodeTable">
      <thead>
        <tr>
            <th>ID</th>
            <th>NOME</th>             
            <th>AÇ‡ÃƒO</th>
            
        </tr>
    </thead>   
    </table> 
  </form><!-- /end form-->
      </div>
      <div class="modal-footer">
<!--         <button id="submit" class="btn btn-default" data-dismiss="modal">Salvar</button> -->
        <a href="#" class="btn btn-default" data-dismiss="modal">Fechar</a>
      </div>
    
    </div>

    
    
       <script type="text/javascript">
       
       $('#modalEpisode').on('show.bs.modal', function (e) {
           $('#episodeTable').DataTable( {
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
               "ajax":{url: '/eacervo/api/v1/episode/all?type=json', dataSrc:""},
                "columns":[
               	 {"data":"id"},
               	 {"data":"name"},               
               	 {"defaultContent":'<a class="btn btn-mini" data-dismiss="modal" onclick="setEpisodeValue(this)" >Escolher</a>'}
               	 
                ]
               
           } );
         
         var modal = $(this);

   });
       

       function setEpisodeValue(element){
    	   
    	   table = $('#episodeTable').DataTable( { retrieve: true} );
       	$('#episodeTable tbody').on( 'click', 'tr', function () {
      	   var row_data = table.row(this).data();
             console.log("ROW DATA "+row_data)
       		$("#episodeId").val(row_data.id);
             $("#episodeName").val(row_data.name);
           	 $("#productName").val(row_data.product.productGroup.name);
       		
       		
     	   

       	});
    	   
        	$('#modalEpisode.in').modal('hide');
      
        }
  
    
  
       
       
       
      
</script>