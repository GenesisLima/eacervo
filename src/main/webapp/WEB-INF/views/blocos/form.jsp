<div class="container">

          <jsp:include page="../templates/menu.jsp" ></jsp:include>
    

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
      <!--  <h2>Cadastro de Servidor.</h2>-->
<div class="panel panel-default">
  <div class="panel-heading">Cadastrar Bloco</div>
  <div class="panel-body">
        <form role="form" method="post" action="/eacervo/blocos">
           <div class="form-group">
    <label for="block_id">ID:</label>
    <input type="text" class="form-control" id="block_id" name="episode.id" readonly="readonly" value="0">
  </div>
           <div class="form-group">
              <label for="duration">Dura&ccedil;&atilde;o:</label>
              <div class="input-group">
              <input type="text" class="form-control" id="duration" name="duration">
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

  </form><!-- /end form -->
  </div>
      </div>
      </div>

    </div> <!-- /container -->