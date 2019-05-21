    <div class="container">

          <jsp:include page="../templates/menu.jsp" ></jsp:include>
      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
      <!--  <h2>Cadastro de Servidor.</h2>-->
<div class="panel panel-default">
  <div class="panel-heading">Cadastrar Tipo de Produto</div>
  <div class="panel-body">
  
  
<!--                     <div id="field"><input autocomplete="off" class="input" id="field1" name="prof1" type="text" placeholder="Type something" data-items="8"/><button id="b1" class="btn add-more" type="button">+</button></div> -->
                
        <form class="input-append" role="form" method="post" action="/eacervo/programacoes">
           <div class="form-group">
    <label for="id">ID:</label>
<!--     <input type="text" class="form-control" id="id" name="id" readonly="readonly" value="0"> -->
        	<input type="button" class="add-row" value="Add Row">
    
  </div>
           <div class="form-group">
          <table>
        <thead>
            <tr>
                <th>Select</th>
                <th>Tipo</th>
                <th>Grupo</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><input type="checkbox" name="record"></td>
                <td>PGM</td>
                <td>Programa</td>
            </tr>
        </tbody>
    </table>
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