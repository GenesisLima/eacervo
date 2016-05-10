<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

<!-- JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
</head>
<body>
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
    <input type="text" class="form-control" id="area_id" name="area_id" disabled>
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

</body>
</html>