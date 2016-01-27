<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

<!-- JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>


     <spring:url value="/resources/css/main.css" var="mainCss" />	

<style>



.search-form .form-group {
  float: right !important;
  transition: all 0.35s, border-radius 0s;
  width: 32px;
  height: 32px;
  background-color: #fff;
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset;
  border-radius: 25px;
  border: 1px solid #ccc;
  position: relative;
  right: -480px;
}
.search-form .form-group input.form-control {
  padding-right: 20px;
  border: 0 none;
  background: transparent;
  box-shadow: none;
  display:block;
  

}
.search-form .form-group input.form-control::-webkit-input-placeholder {
  display: none;
}
.search-form .form-group input.form-control:-moz-placeholder {
  /* Firefox 18- */
  display: none;
}
.search-form .form-group input.form-control::-moz-placeholder {
  /* Firefox 19+ */
  display: none;
}
.search-form .form-group input.form-control:-ms-input-placeholder {
  display: none;
}
.search-form .form-group:hover,
.search-form .form-group.hover {
  width: 100%;
  border-radius: 4px 25px 25px 4px;
}
.search-form .form-group span.form-control-feedback {
  position: absolute;
  top: -1px;
  right: -2px;
  z-index: 2;
  display: block;
  width: 34px;
  height: 34px;
  line-height: 34px;
  text-align: center;
  color: #3596e0;
  left: initial;
  font-size: 14px;
}

</style>

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
                	<li><a href="form_servidor.html">Pessoa</a></li>
                  <li><a href="form_produto.html">Produto</a></li>
                  <li><a href="form_area.html">&Aacute;rea</a></li>
                  <li><a href="#">Solicitante</a></li>
                  <li><a href="#">Respons&aacute;vel</a></li>
                  <li><a href="#">Tema</a></li>
                  <li><a href="form_procedimento.html">Procedimento</a></li>
                  <li><a href="#">Tipo de M&iacute;dia</a></li>
                  <li><a href="#">Sistem&aacute;tica de  Produ&ccedil;&atilde;o</a></li>

                </ul><!-- /. ul dropdown-menu-->
              </li><!-- /.li dropdown-->
              <li class="dropdown"><a href="#" class="dropdown-toglle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Listar <span class="caret"></span></a>
                 <ul class="dropdown-menu">
                 	<li><a href="">Pessoas</a></li>
                 	<li><a href="">Produtos</a></li>
                	<li><a href="">Solicitantes</a></li>
                	<li><a href="#">Temas</a></li>
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
      <div class="alert alert-${info}">
  <strong></strong> ${mensagem}
</div>
 <div  class="row" >
        <div class="col-md-4 col-md-offset-3">
            <form action="" class="search-form">
                <div class="form-group has-feedback">
            		<label for="search" class="sr-only">Pesquisar</label>
            		<input type="text" class="form-control" name="search" id="search" placeholder="Pesquisar">
              		<span class="glyphicon glyphicon-search form-control-feedback"></span>
            	</div>
            </form>
        </div>
    </div>
      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
      
       <div class="table-responsive">          
  <table class="table" id="table">
    <thead>
      <tr>
        <th>#</th>
        <th>Tema</th>
        <th>Descri&ccedil;&atilde;o</th>
      
      </tr>
    </thead>
    <tbody>
     <c:forEach items="${temas}" var="tema" varStatus="status">
      <tr>
    <td>${tema.id}</td>             
    <td >${tema.name}</td>  
    <td >${tema.description}</td>    
    <td><a href="#" class="btn btn-info" role="button" data-toggle="modal" data-id="${tema.id}" data-name="${tema.name}" data-description="${tema.description}" data-target="#myModal">Editar</a>
    <a href="/eacervo/temas/remove/${tema.id}" class="btn btn-info" role="button">Remover</a></td>
    
      </tr>
       </c:forEach>
    </tbody>
  </table>
  </div>
      </div>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
 <form role="form" class="tema">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Tema</h4>
      </div>
      <div class="modal-body">
        <p>Tema aa</p>
        
        <div class="form-group">
              <label for="area">&Aacute;rea:</label>
              <div class="input-group">
              <input type="text" class="form-control" id="area" name="id" >
              <span class="input-group-btn">
                <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-search"></span>&nbsp;</button>
              </span>
              </div>
           </div>

           <div class="form-group">
                     
              <label for="nome">Nome:</label>
              <input type="text" class="form-control"  name="name" id="name"></input>
             
           </div>

           <div class="form-group">
              <label for="descricao">Descri&ccedil;&atilde;o:</label>
              <textarea type="text"  class="form-control" name="description" id="description"></textarea>
           </div>
  </form><!-- /end form-->
      </div>
      <div class="modal-footer">
        <button id="submit" class="btn btn-default" data-dismiss="modal">Salvar</button>
        <a href="#" class="btn btn-default" data-dismiss="modal">Close</a>
      </div>
    
    </div>

  </div>
</div><br/><br/><!-- /end modal -->
    </div> <!-- /container -->
        <script type="text/javascript">
        $('#myModal').on('show.bs.modal', function (e) {
        	//alert('testa js')
        	  var button = $(e.relatedTarget) // Button that triggered the modal
        	  var recipient = button.data('id')
        	  var name = button.data('name')
        	  var desc = button.data('description')
        	  // Extract info from data-* attributes
        	  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
        	  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
        	  var modal = $(this);
        	// modal.find('#nome').val(document.getElementById("tema_name").value)        	 
        	  modal.find('#area').val(recipient)
        	  modal.find('#name').val(name)
        	  modal.find('#description').val(desc)
        	  
        	  
        	})
        	
        	
 $(function() {
//twitter bootstrap script
 $("button#submit").click(function(){
         $.ajax({
     type: "POST",
 url: "/eacervo/temas",
 data: $('form.tema').serialize(),
         success: function(msg){
                 $("#thanks").html(msg)
        $("#form-content").modal('hide'); 
         },
 error: function(){
 alert("failure");
 }
       });
 });
});
        $('#myModal').on('hidden.bs.modal', function (e) {
        	window.location.reload();
        });
        
       
        
//    	 $(function() {
//    	//twitter bootstrap script
//    	 $("button#submit").click(function(){
//    	         $.ajax({
//    	     type: "POST",
//    	 url: "/eacervo/temas",
//    	 data: $('form.tema').serialize(),
//    	         success: function(msg){
//    	                 $("#thanks").html(msg)
//    	        $("#form-content").modal('hide'); 
//    	         },
//    	 error: function(){
//    	 alert("failure");
//    	 }
//    	       });
//    	 });
//    	});
</script>
</body>
</html>