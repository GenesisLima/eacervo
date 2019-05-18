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
           <div class="form-group">
              <label for="obtainment">Obten&ccedil;&atilde;o:</label>
              <textarea type="text" class="form-control" id="obtainment" name="obtainment"></textarea>
           </div>

          <div class="form-group">
              <label for="partner">Parceiro:</label>
             <input type="text" class="form-control" id="partner" name="partner">
             </div>
           
           
            <div class="form-group">
              <label for="productionCost">Custo de Produ&ccedil;&atilde;o:</label>
             <input type="text" class="form-control" id="productionCost" name="productionCost">
             </div>
          
           
           <div class="form-group">
            <label for="productGroup">Grupo de Produto:</label>
            <div class="input-group">                            
              <input type="text" class="form-control" id="productGroup" readonly="readonly" value="0">
              <input type="hidden" id="productGroupId" name="productGroupId" />
              <span class="input-group-btn">
              <a  class="btn btn-default" role="button" data-toggle="modal"  data-target="#modalGroup" ><span class="glyphicon glyphicon-search"></span>&nbsp;</a>
            </span>
            </div>
            
            <div class="form-group">
            <label for="productType">Tipo de Produto:</label>
            <div class="input-group">                            
              <input type="text" class="form-control" id="productType" readonly="readonly" value="0">
              <input type="hidden" id="productTypeId" name="productTypeId" />
              <span class="input-group-btn">
              <a  class="btn btn-default" role="button" data-toggle="modal"  data-target="#modalType" ><span class="glyphicon glyphicon-search"></span>&nbsp;</a>
            </span>
            </div>
             </div>
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
<!--         <p>Fun&ccedil;&atilde;o</p> -->
<datatables:table id="productGroupTable" row="group"  url="/eacervo/gruposprodutos/groupsJSON" deferRender="true" stateSave="true" theme="bootstrap3" cssClass="table table-striped"  paginationType="full_numbers" displayLength="5">
        
        <datatables:column title="ID" property="id" id="group_id"    />
        <datatables:column title="NAME" property="name" id="group_nome" />
          <datatables:column  title="AÇÃO" renderFunction='action_group' >
          
          

      </datatables:column>
    </datatables:table>
  </form><!-- /end form-->
      </div>
      <div class="modal-footer">
<!--         <button id="submit" class="btn btn-default" data-dismiss="modal">Salvar</button> -->
        <a href="#" class="btn btn-default" data-dismiss="modal">Close</a>
      </div>
    
    </div>

  </div>
</div><br/><br/><!-- /end modal Group-->
<!-- /Begin modal Type-->
<div id="modalType" class="modal fade" role="dialog" >
  <div class="modal-dialog">
 <form role="form" class="type">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Buscar Tipo</h4>
      </div>
      <div class="modal-body">
<!--         <p>Fun&ccedil;&atilde;o</p> -->
<datatables:table id="productTypeTable" row="type"  url="/eacervo/tiposprodutos/productTypesJSON" deferRender="true" stateSave="true" theme="bootstrap3" cssClass="table table-striped"  paginationType="full_numbers" displayLength="5">
        
        <datatables:column title="ID" property="id" id="type_id"    />
        <datatables:column title="NAME" property="name" id="type_nome" />
          <datatables:column  title="AÇÃO" renderFunction='action_type' >
          
          

      </datatables:column>
    </datatables:table>
  </form><!-- /end form-->
      </div>
      <div class="modal-footer">
<!--         <button id="submit" class="btn btn-default" data-dismiss="modal">Salvar</button> -->
        <a href="#" class="btn btn-default" data-dismiss="modal">Close</a>
      </div>
    
    </div>

  </div>
</div><br/><br/><!-- /end modal função-->
    
    
       <script type="text/javascript">
       
       function setGroupValue(value,id){
      	 $('#productGroup').val(value);
      	 $('#productGroupId').val(id);
      	$('#modalGroup.in').modal('hide');
      	//$('body').removeClass('modal-open');
      	//$('.modal-backdrop').remove();
        }
  
       function action_group(data, type, full) {
    	
    	var  name = full.name;
    	  console.log(name)
    	 
    	   return '<a class="btn btn-mini" data-dismiss="modal" onclick="setGroupValue(\''+ name +'\',\''+ full.id +'\')" data-id='+ full.id +' data-name='.concat(full.name).concat('>Escolher</a>') ;
    	}
  
       function setTypeValue(value,id){
        	 $('#productType').val(value);
        	 $('#productTypeId').val(id);
        	$('#modalType.in').modal('hide');
        	//$('body').removeClass('modal-open');
        	//$('.modal-backdrop').remove();
          }
       
       
       function action_type(data, type, full) {
       	
       	var  name = full.name;
       	  console.log(name)
       	 
       	   return '<a class="btn btn-mini" data-dismiss="modal" onclick="setTypeValue(\''+ name +'\',\''+ full.id +'\')" data-id='+ full.id +' data-name='.concat(full.name).concat('>Escolher</a>') ;
       	}
      
</script>