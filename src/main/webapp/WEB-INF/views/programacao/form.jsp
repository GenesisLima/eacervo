    <div class="container">

          <jsp:include page="../templates/menu.jsp" ></jsp:include>
      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
      <!--  <h2>Cadastro de Servidor.</h2>-->
<div class="panel panel-default">
  <div class="panel-heading">Programação</div>
  <div class="panel-body">
  
  
<!--                     <div id="field"><input autocomplete="off" class="input" id="field1" name="prof1" type="text" placeholder="Type something" data-items="8"/><button id="b1" class="btn add-more" type="button">+</button></div> -->
                
        <form class="input-append" role="form" method="post" action="/eacervo/programacoes">
           <div class="form-group">
    <label for="id">ID:</label>
<!--     <input type="text" class="form-control" id="id" name="id" readonly="readonly" value="0"> -->
        	<input type="button" class="add-row" value="Add Row">
    
  </div>
           <div class="form-group">
          <table >
        <thead>
            <tr>
               
                <th>Tipo</th>
                <th>Grupo</th>
                <th>Produto</th>
                 <th>Episódio</th>
                <th>Duracao</th>
            </tr>
        </thead>
        <tbody>
            <tr>
            <td>              
               
    <select  class="form-control" id="programtype" name="programtype">
      <option ng-repeat="type in productTypes" ng-value={{type.initials}} ng-model="type">{{type.initials}}</option>
    
</select>   </td>  
                <td><input  type="text" class="form-control" name="programgroup" id="programgroup" ng-model="initials" readonly></td>
<!-- 
<td>              
               
    <select class="form-control" id="programorigin" name="programorigin">
       <option ng-repeat="origin in productOrigins">{{origin.name}}</option> 
    
 </select>   </td>         -->
                                <td>
                                <div class="input-group">                                                        
              <input type="text" class="form-control" name="productname" id="productname" readonly="readonly" value="0">
              <input type="hidden" id="productid" name="productid" />
              <span class="input-group-btn">
              <a  class="btn btn-default" role="button" data-toggle="modal"  data-target="#modalProduct" ><span class="glyphicon glyphicon-search"></span>&nbsp;</a>
            </span>
            </div><!--end input-group-->
                                </td>
                
                                <td><input type="text" class="form-control" name="programepisode" id="programepisode" ></td>
                                <td><input type="text" class="form-control" name="programDuration" id="programDuration" ></td>
                
            </tr>
        </tbody>
    </table>
              </div>
           </div>
<!--            <div class="form-group"> -->
<!--               <label for="description">Descri&ccedil;&atilde;o:</label> -->
<!--               <textarea type="text" class="form-control" id="description" name="description"></textarea> -->
<!--            </div> -->

          <!-- Trigger the modal with a button -->

 <button type="submit" class="btn btn-default">Salvar</button><br/><br/> 
</form>
  </form><!-- /end form -->
  </div>
      </div>
      </div>

    </div> <!-- /container -->
    
        <!-- Modal programa-->
<div id="modalProduct" class="modal fade" role="dialog" >
  <div class="modal-dialog">
 <form role="form" class="product">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Buscar Produto</h4>
      </div>
      <div class="modal-body">
<!--         <p>Fun&ccedil;&atilde;o</p> -->
<datatables:table id="productProgramTable" row="product"  url="/eacervo/api/v1/product"  data="${products}" deferRender="true" stateSave="true" theme="bootstrap3" cssClass="table table-striped"  paginationType="full_numbers" displayLength="5">
        
        <datatables:column title="ID" property="id" id="product_id"    />
        <datatables:column title="NAME" property="name" id="product_name" />
          <datatables:column  title="AÇÃO" renderFunction='action_product' >
          
          

      </datatables:column>
    </datatables:table>
  </form><!-- /end form-->
      </div>
      <div class="modal-footer">
<!--         <button id="submit" class="btn btn-default" data-dismiss="modal">Salvar</button> -->
        <a href="#" class="btn btn-default" data-dismiss="modal">Close</a>
      </div>
    
    </div>
    
    
    
    <script type="text/javascript">
    
    function setProgramValue(value,id){
   	 $('#productname').val(value);
   	 $('#productid').val(id);
   	$('#modalProduct.in').modal('hide');
   	//$('body').removeClass('modal-open');
   	//$('.modal-backdrop').remove();
     }
    
    $('#modalProduct').on('show.bs.modal', function (e) {
      	//alert('testa js')
      
      var modal = $(this);
      
      	//console.log(modal);
      	
      	
      	  
      //	});
    
});

function action_product(data, type, full) {
	//  console.log(full)
	//  console.log(full.id)
	//  console.log(full.description)
	var  description = full.description;
	  console.log(description)
	 
// 	'<a class="btn btn-mini" data-id='+ full.id +' data-description='+ full.description + '>Escolher</a>'
	   return '<a class="btn btn-mini" data-dismiss="modal" onclick="setFunctionValue(\''+ description +'\',\''+ full.id +'\')" data-id='+ full.id +' data-description='.concat(full.description).concat('>Escolher</a>') ;
	}
    </script>