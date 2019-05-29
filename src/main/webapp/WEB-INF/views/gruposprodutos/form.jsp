<div class="container">

   

          <jsp:include page="../templates/menu.jsp" ></jsp:include>
      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
      <!--  <h2>Cadastro de Servidor.</h2>-->
<div class="panel panel-default">
  <div class="panel-heading">Cadastrar Grupo de Produto</div>
  <div class="panel-body">
        <form role="form" method="post" action="/eacervo/gruposprodutos">
           <div class="form-group">
    <label for="product_id">ID:</label>
    <input type="text" class="form-control" id="product_group_id" name="product_group_id" readonly="readonly" value="0">
  </div>
         <div class="form-group">
              <label for="initials">Tipo:</label>
              <input type="text" class="form-control" id="initials" name="initials"></textarea>
           </div>
           
           <div class="form-group">
              <label for="name">Nome:</label>
<!--               <div class="input-group"> -->
              <input type="text" class="form-control" id="name" name="name">
<!--               <span class="input-group-btn"> -->
<!--                 <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-search"></span>&nbsp;</button> -->
<!--               </span> -->
<!--               </div> -->
           </div>
           
      
           
           <div class="form-group">
              <label for="description">Descri&ccedil;&atilde;o:</label>
              <textarea type="text" class="form-control" id="description" name="description"></textarea>
           </div>

          <!-- Trigger the modal with a button -->

 <button type="submit" class="btn btn-default">Salvar</button><br/><br/> 
</form>


  
 
  </form><!-- /end form -->
  </div>
      </div>
      </div>

    </div> <!-- /container -->
