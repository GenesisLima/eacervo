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
               
    <select class="form-control" id="programtype" name="programtype">
  <option ng-repeat="origin in productOrigins">{{origin.name}}</option>
</select>   </td>  
<td>              
               
    <select class="form-control" id="programorigin" name="programorigin">
  <option ng-repeat="initials in productTypes">{{initials.initials}}</option>
</select>   </td>        
                <td><input type="text" class="form-control" name="programgroup" id="programgroup" readonly></td>
                                <td><input type="text" class="form-control" name="programname" id="programname" ></td>
                
                                <td><input type="text" class="form-control" name="programepisode" id="programepisode" ></td>
                                <td><input type="text" class="form-control" name="programDuration" id="programDuration" ></td>
                
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