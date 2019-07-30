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
    <input type="text" class="form-control" id="episode_id" name="episode_id" readonly="readonly" >
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
              <label for="name">Dura&ccedil;&atilde;o:</label>
              <div class="input-group">
              <input type="text" class="form-control" id="duration" name="duration" >              
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
      </div>
      </div>

    </div> <!-- /container -->