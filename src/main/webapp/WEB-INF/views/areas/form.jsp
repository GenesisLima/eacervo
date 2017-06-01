<div class="container">

          <jsp:include page="../templates/menu.jsp" ></jsp:include>
    

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
      <!--  <h2>Cadastro de Servidor.</h2>-->
<div class="panel panel-default">
  <div class="panel-heading">Cadastrar &Aacute;rea</div>
  <div class="panel-body">
        <form role="form" method="post" action="/eacervo/areas">
           <div class="form-group">
    <label for="area_id">ID:</label>
    <input type="text" class="form-control" id="area_id" name="area_id" readonly="readonly" value="0">
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
              <label for="description">Descri&ccedil;&atilde;o:</label>
              <textarea type="text" class="form-control" id="description" name="description"></textarea>
           </div>

          <!-- Trigger the modal with a button -->

 <button type="submit" class="btn btn-default">Salvar</button><br/><br/> 
</form>

<button type="button" class="btn btn-link btn-md" data-toggle="modal" data-target="#myModal">Cadastrar Sub &Aacute;rea</button>
<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
 <form>
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Sub &Aacute;rea</h4>
      </div>
      <div class="modal-body">
        <p>Cadastrar Sub  &Aacute;rea.</p>
        
        <div class="form-group">
              <label for="area">&Aacute;rea:</label>
              <div class="input-group">
              <input type="text" class="form-control" id="area" disabled>
              <span class="input-group-btn">
                <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-search"></span>&nbsp;</button>
              </span>
              </div>
           </div>

           <div class="form-group">
              <label for="nome">Nome:</label>
              <input type="text" class="form-control" id="nome"></input>
           </div>

           <div class="form-group">
              <label for="descricao">Descri&ccedil;&atilde;o:</label>
              <textarea type="text" class="form-control" id="descricao"></textarea>
           </div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Salvar</button>
      </div>
    </div>

  </div>
</div><br/><br/><!-- /end modal -->
  
 
  </form><!-- /end form -->
  </div>
      </div>
      </div>

    </div> <!-- /container -->