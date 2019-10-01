<div class="container">

      <jsp:include page="../templates/menu.jsp" ></jsp:include>
     

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
      <!--  <h2>Cadastro de Servidor.</h2>-->
<div class="panel panel-default">
  <div class="panel-heading">Cadastrar Produto</div>
  <div class="panel-body">
        <form role="form" method="post" action="/eacervo/produtos">
           <div class="form-group">
    <label for="product_id">ID:</label>
    <input type="text" class="form-control" id="product_id" name="product_id" readonly="readonly" value="0">
  </div>
           <div class="form-group">
              <label for="name">Nome:</label>
              <div class="input-group">
              <input type="text" class="form-control" id="name" name="name">
              <span class="input-group-btn">
                <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-search"></span>&nbsp;</button>
              </span>
              </div>
           </div>
<!--            <div class="form-group"> -->
<!--               <label for="obtainment">Obten&ccedil;&atilde;o:</label> -->
<!--               <textarea type="text" class="form-control" id="obtainment" name="obtainment"></textarea> -->
<!--            </div> -->

<!--           <div class="form-group"> -->
<!--               <label for="partner">Parceiro:</label> -->
<!--              <input type="text" class="form-control" id="partner" name="partner"> -->
<!--              </div> -->
           
           
<!--             <div class="form-group"> -->
<!--               <label for="productionCost">Custo de Produ&ccedil;&atilde;o:</label> -->
<!--              <input type="text" class="form-control" id="productionCost" name="productionCost"> -->
<!--              </div> -->
          
           
           <div class="form-group">
            <label for="productGroup">Grupo de Produto:</label>
            <div class="input-group">                            
              <input type="text" class="form-control" id="productGroup" readonly="readonly" >
              <input type="hidden" id="productGroupId" name="productGroupId" value="1"/>
              <span class="input-group-btn">
              <a  class="btn btn-default" role="button" data-toggle="modal"  data-target="#modalGroup" ><span class="glyphicon glyphicon-search"></span>&nbsp;</a>
            </span>
            </div>
            
<!--             <div class="form-group"> -->
<!--             <label for="productType">Tipo de Produto:</label> -->
<!--             <div class="input-group">                             -->
<!--               <input type="text" class="form-control" id="productType" readonly="readonly" value="0"> -->
<!--               <input type="hidden" id="productTypeId" name="productTypeId" /> -->
<!--               <span class="input-group-btn"> -->
<!--               <a  class="btn btn-default" role="button" data-toggle="modal"  data-target="#modalType" ><span class="glyphicon glyphicon-search"></span>&nbsp;</a> -->
<!--             </span> -->
<!--             </div> -->
<!--              </div> -->
             </div>
             
               <div class="form-group">
              <label for="description">Descri&ccedil;&atilde;o:</label>
              <textarea type="text" class="form-control" id="description" name="description"></textarea>
           </div>
          <!-- Trigger the modal with a button -->

 <button type="submit" class="btn btn-default">Salvar</button><br/><br/> 

  </form><!-- /end form -->
  </div>
      </div>
      </div>

    </div> <!-- /container -->
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
      <div class="modal-body">
    <table id="productGroupTable">
      <thead>
        <tr>
            <th>ID</th>
            <th>GRUPO</th>
            <th>NOME</th>             
            <th>A��O</th>
            
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

    
    
       <script type="text/javascript">
       
       $('#modalGroup').on('show.bs.modal', function (e) {
           $('#productGroupTable').DataTable( {
           	retrieve: true,
               "ajax":{url: '/eacervo/api/v1/productgroup?type=json', dataSrc:""},
                "columns":[
               	 {"data":"id"},
               	 {"data":"name"},
               	{"data":"initials"},
               	 {"defaultContent":'<a class="btn btn-mini" data-dismiss="modal" onclick="setGroupValue(this)" >Escolher</a>'}
               	 
                ]
               
           } );
         
         var modal = $(this);

   });
       

       function setGroupValue(element){
    	   
    	   table = $('#productGroupTable').DataTable( { retrieve: true} );
       	$('#productGroupTable tbody').on( 'click', 'tr', function () {
      	   var row_data = table.row(this).data();
             console.log("ROW DATA "+row_data)
       		$("#productGroupId").val(row_data.id);
       		$("#productGroup").val(row_data.initials+" - "+row_data.name);
       		
     	   

       	});
    	   
        	$('#modalGroup.in').modal('hide');
      
        }
  
    
  
       
       
       
      
</script>