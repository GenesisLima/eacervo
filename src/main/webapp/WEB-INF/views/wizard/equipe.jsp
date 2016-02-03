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
            <a class="navbar-brand" href="#">E-Acervo</a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"></li>
              <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Cadastro <span class="caret"></span></a></a>
                <ul class="dropdown-menu">
                  <li><a href="servidores/form">Servidor</a></li>
                  <li><a href="produtos/form">Produto</a></li>
                  <li><a href="area">&Aacute;rea</a></li>
                  <li><a href="#">Solicitante</a></li>
                  <li><a href="#">Respons&aacute;vel</a></li>
                  <li><a href="temas/form">Tema</a></li>
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
                	<li><a href="temas">Temas</a></li>
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
<!--         <h1>N&uacute;cleo de TV e R&aacute;dio Universit&aacute;ria.</h1> -->
<!--         <p>Sistema de gerenciamento de programa&ccedil;&atilde;o da TV Universit&aacute;ria.</p> -->
<!--         <p> -->
<!--           <a class="btn btn-lg btn-primary" href="#" role="button">Cadastro Assistido</a> -->
<!--         </p> -->
<div class="container" id="myWizard">
  
   <h3>Montar Equipe</h3>
  
   <hr>
  
   <div class="progress">
     <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="1" aria-valuemin="1" aria-valuemax="5" style="width: 20%;">
       Passo 1 de 5
     </div>
   </div>
  
   <div class="navbar">
      <div class="navbar-inner">
            <ul class="nav nav-pills">
               <li class="active"><a href="#step1" data-toggle="tab" data-step="1">Passo 1</a></li>
               <li><a href="#step2" data-toggle="tab" data-step="2">Passo 2</a></li>
               <li><a href="#step3" data-toggle="tab" data-step="3">Passo 3</a></li>
               <li><a href="#step4" data-toggle="tab" data-step="4">Passo 4</a></li>
               <li><a href="#step5" data-toggle="tab" data-step="5">Passo 5</a></li>
            </ul>
      </div>
   </div>
   <div class="tab-content">
      <div class="tab-pane fade in active" id="step1">
         
        <div class="well"> 
          
            <label>Security Question 1</label>
            <select class="form-control input-lg">
              <option value="What was the name of your first pet?">What was the name of your first pet?</option>
              <option value="Where did you first attend school?">Where did you first attend school?</option>
              <option value="What is your mother's maiden name?">What is your mother's maiden name?</option>
              <option value="What is your favorite car model?">What is your favorite car model?</option>
            </select>
            <br>
            <label>Enter Response</label>
            <input class="form-control input-lg">
            
        </div>

         <a class="btn btn-default btn-lg next" href="#">Continue</a>
      </div>
      <div class="tab-pane fade" id="step2">
         <div class="well"> 
          
            <label>Security Question 2</label>
            <select class="form-control  input-lg">
              <option value="What was the name of your first pet?">What was the name of your first pet?</option>
              <option selected="" value="Where did you first attend school?">Where did you first attend school?</option>
              <option value="What is your mother's maiden name?">What is your mother's maiden name?</option>
              <option value="What is your favorite car model?">What is your favorite car model?</option>
            </select>
            <br>
            <label>Enter Response</label>
            <input class="form-control  input-lg">
            
         </div>
         <a class="btn btn-default next" href="#">Continue</a>
      </div>
      <div class="tab-pane fade" id="step3">
        <div class="well"> <h2>Step 3</h2> Add another step here..</div>
         <a class="btn btn-default next" href="#">Continue</a>
      </div>
      <div class="tab-pane fade" id="step4">
        <div class="well"> <h2>Step 4</h2> Add another almost done step here..</div>
         <a class="btn btn-default next" href="#">Continue</a>
      </div>
      <div class="tab-pane fade" id="step5">
        <div class="well"> <h2>Resumo do trabalho</h2> Descriç&atilde;o de todo processo.</div>
         <a class="btn btn-success first" href="#">Concluir</a>
      </div>
   </div>
  
   <hr>
  
  
  
   <hr>
  
</div>


      </div>

    </div> <!-- /container -->
    
<script type="text/javascript">
$('.next').click(function(){

	  var nextId = $(this).parents('.tab-pane').next().attr("id");
	  $('[href=#'+nextId+']').tab('show');
	  return false;
	  
	})

	$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
	  
	  //update progress
	  var step = $(e.target).data('step');
	  var percent = (parseInt(step) / 5) * 100;
	  
	  $('.progress-bar').css({width: percent + '%'});
	  $('.progress-bar').text("Step " + step + " of 5");
	  
	  //e.relatedTarget // previous tab
	  
	})

	$('.first').click(function(){

	  $('#myWizard a:first').tab('show')

	})
</script>
</body>
</html>