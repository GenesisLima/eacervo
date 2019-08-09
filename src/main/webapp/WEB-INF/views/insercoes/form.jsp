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
    <label for="schedule_id">ID:</label>
    <input type="text" class="form-control" id="schedule_id" name="schedule_id" readonly="readonly" value="0">
  </div>
           <div class="form-group">
              <label for="episodeName">Episódio:</label>
              <div class="input-group">
              <input type="text" class="form-control" id="episodeName" name="episodeName">
              <span class="input-group-btn">
                <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-search" data-productepisode="" data-programgroup=""  data-productname="" data-scheduleid="" data-toggle="modal" id="openModalEpisode"></span>&nbsp;</button>
              </span>
              </div>
           </div>
              <div class="form-group">
              <label for="name">Grupo:</label>
              <div class="input-group">
              <input type="text" class="form-control" id="name" name="name">
              <span class="input-group-btn">
                <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-search"></span>&nbsp;</button>
              </span>
              </div>
           </div>
           <div class="form-group">
              <label for="description">Descri&ccedil;&atilde;o:</label>
              <textarea type="text" class="form-control" id="description" name="description"></textarea>
           </div>

          <!-- Trigger the modal with a button -->

 <button type="submit" class="btn btn-default">Salvar</button><br/><br/> 
</form>


      </div>
      
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

    </div> <!-- /container -->
    <script>
    
    $(document).on("click", "#openModalEpisode",function(e){
 	   modalCaller = $(this)

 	 //TODO refactor this approach. It is iterating over all divs.
 	// var element = $(this).parent('.form-group');
 	  // modalCaller = $(this)

 		 var button = $(e.relatedTarget) // Button that triggered the modal
   	
   	  var name = button.data('episodeName')
   	  
   	  // Extract info from data-* attributes
   	  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
   	  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
   	 
   	// modal.find('#nome').val(document.getElementById("tema_name").value)        	 
   	  //modalCaller.find('#area').val(recipient)
   	  modalCaller.find('#episodeName').val(episodeName)
   	  //modalCaller.find('#description').val(desc)

 	$("#modalEpisode").modal();

 	
 });

    
    $('#modalEpisode').on('show.bs.modal', function (e) {
    	console.log("RUN MODAL")
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