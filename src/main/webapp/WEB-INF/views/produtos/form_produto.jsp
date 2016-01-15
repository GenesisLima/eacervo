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

      <!-- Static navbar -->
      <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/eacervo">E-Acervo</a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"></li>
              <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Cadastro <span class="caret"></span></a></a>
                <ul class="dropdown-menu">
                	<li><a href="servidor">Pessoa</a></li>
                  <li><a href="#">Produto</a></li>	
                  <li><a href="area">&Aacute;rea</a></li>
                  <li><a href="#">Solicitante</a></li>
                  <li><a href="#">Respons&aacute;vel</a></li>
                  <li><a href="tema">Tema</a></li>
                  <li><a href="procedimento">Procedimento</a></li>
                  <li><a href="tipomidia">Tipo de M&iacute;dia</a></li>
                  <li><a href="#">Sistem&aacute;tica de  Produ&ccedil;&atilde;o</a></li>

                </ul><!-- /. ul dropdown-menu-->
              </li><!-- /.li dropdown-->
              <li class="dropdown"><a href="#" class="dropdown-toglle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Listar <span class="caret"></span></a>
                 <ul class="dropdown-menu">
                 	<li><a href="">Pessoas</a></li>
                 	<li><a href="">Produtos</a></li>
                	<li><a href="">Solicitantes</a></li>
                	<li><a href="">Temas</a></li>
                	<li><a href="">Procedimentos</a></li>
                	<li><a href="">Tipo de M&iacute;dias</a></li>
                 </ul>

              </li><!-- /.li dropdown-->

              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">A&ccedil;&otilde;es <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Montar Equipe</a></li>
                  <li><a href="#">Montar Programa&ccedil;&atilde;o</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li role="separator" class="divider"></li>
                  <li class="dropdown-header">Nav header</li>
                  <li><a href="#">Separated link</a></li>
                  <li><a href="#">One more separated link</a></li>
                </ul>
              </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li class="active"><a href="./">Contato <span class="sr-only">(current)</span></a></li>
              <li><a href="../navbar-static-top/">Ajuda</a></li>
              <li><a href="../navbar-fixed-top/">Sair</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
      <!--  <h2>Cadastro de Servidor.</h2>-->
<div class="panel panel-default">
  <div class="panel-heading">Cadastrar Produto</div>
  <div class="panel-body">
        <form role="form">
           <div class="form-group">
    <label for="id_produto">ID:</label>
    <input type="text" class="form-control" id="id_produto" disabled>
  </div>
           <div class="form-group">
              <label for="nome">Nome:</label>
              <input type="text" class="form-control" id="nome">
           </div>
           <div class="form-group">
              <label for="tema">Tema:</label>
              <div class="input-group">
              <input type="text" class="form-control" id="tema">
              <span class="input-group-btn">
                <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-search"></span>&nbsp;</button>
              </span>
            </div>
           </div>
           <div class="form-group">
            <label for="obtencao">Forma de Obten&ccedil;&atilde;o:</label>                                       
              <input type="text" class="form-control" id="obtencao">           
             </div><!--end input-group-->

         
           <div class="form-group">
              <label for="parceiro">Parceiro/Produtora:</label>
              <input type="text" class="form-control" id="parceiro">
             
           </div>
           <div class="form-group">
              <label for="custo_producao">Custo de Produ&ccedil;&atilde;o:</label>
              <input type="number" class="form-control" id="custo_producao">
           </div>
          
           <div class="form-group">
              <label for="equipe">Equipe:</label>
             <div class="input-group">                            
              <input type="text" class="form-control" id="equipe">
              <span class="input-group-btn">
              <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-search"></span>&nbsp;</button>
            </span>
           </div> 
           <br>

           <div class="panel panel-default">
               <div class="panel-body"> 
                  <strong>Obten&ccedil;&atilde;o: </strong>
                   <label class="radio-inline"> <input type="radio" name="sistematica_radio">Produ&ccedil;&atilde;o</label>
                   <label class="radio-inline"> <input type="radio" name="sistematica_radio">Aquisi&ccedil;&atilde;o</label>    
                   <label class="radio-inline"> <input type="radio" name="sistematica_radio">Licenciamento</label>    

               </div>
           </div>
  
  <button type="submit" class="btn btn-default">Salvar</button>
  </form><!-- /end form -->
  </div>
      </div>
      </div>

    </div> <!-- /container -->

</body>
</html>