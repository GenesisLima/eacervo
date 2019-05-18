<div class="container">

      <jsp:include page="../templates/menu.jsp" ></jsp:include>
      
      
      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
      <!--  <h2>Cadastro de Servidor.</h2>-->
<div class="panel panel-default">
  <div class="panel-heading">Cadastrar Fun&ccedil;&atilde;o</div>
  <div class="panel-body">
        <form role="form" method="post" action="/eacervo/funcoes">
           <div class="form-group">
    <label for="function_id">ID:</label>
    <input type="text" class="form-control" id="function_id" readonly="readonly">
  </div>
           <div class="form-group">
              <label for="function">Fun&ccedil;&atilde;o:</label>
              <input type="text" class="form-control" id="function" name="function">
           </div>
           <div class="form-group">
              <label for="description">Descri&ccedil;&atilde;o:</label>
              <textarea type="text" class="form-control" id="description" name="description"></textarea>
           </div>
          
  
  <button type="submit" class="btn btn-default">Salvar</button>
  </form><!-- /end form -->
  </div>
      </div>
      </div>

    </div> <!-- /container -->