<div class="container">

      <jsp:include page="../templates/menu.jsp" ></jsp:include>
      
      
      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
      <!--  <h2>Cadastro de Servidor.</h2>-->
<div class="panel panel-default">
  <div class="panel-heading">Cadastrar Departamento</div>
  <div class="panel-body">
        <form role="form" method="post" action="/eacervo/departamentos">
           <div class="form-group">
    <label for="department_id">ID:</label>
    <input type="text" class="form-control" id="department_id" readonly="readonly" value="0">
  </div>
           <div class="form-group">
              <label for="department">Departamento:</label>
              <input type="text" class="form-control" id="name" name="name">
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