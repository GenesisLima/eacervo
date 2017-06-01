
<!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
      <!--  <h2>Cadastro de Servidor.</h2>-->
<div class="panel panel-default">
  <div class="panel-heading">Cadastrar Temporada</div>
  <div class="panel-body">
        <form  method="post" action="/eacervo/temporadas" role="form"  class="temporada"  >
    <div class="form-group">
    <label for="id">ID:</label>
    <input type="text" class="form-control" id="id" name="id" readonly="readonly" value="0">
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
              <textarea class="form-control" id="description" name="description"></textarea>
           </div>
  <button type="submit" class="btn btn-default">Salvar</button><br/><br/> 
          <!-- Trigger the modal with a button -->

  </form><!-- /end form-->

  </div>
      </div>
      </div>

    