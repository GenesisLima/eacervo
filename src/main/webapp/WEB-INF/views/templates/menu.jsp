<!-- <?xml version="1.0" encoding="ISO-8859-1" ?> -->
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%> --%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- <div class="container"> -->

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
                  <li><a href="servidor">Servidor</a></li>
<!--                    <li><a href="tipoproduto"> Tipo de Produto</a></li> -->
                    <li><a href="grupoproduto"> Grupo de Produtos</a></li>
                  <li><a href="produto">Produto</a></li>
                  <li><a href="origem">Origem</a></li>                  
                  <li><a href="area">&Aacute;rea</a></li>
                  <li><a href="solicitante">Solicitante</a></li>
                  <li><a href="departamento">Departamento</a></li>
                  <li><a href="responsavel">Respons&aacute;vel</a></li>
                  <li><a href="tema">Tema</a></li>
                   <li><a href="temporada">Temporada</a></li>
                   <li><a href="episodio">Epis&oacute;dio</a></li>
                   <li><a href="insercao">Inser&ccedil;&atilde;o</a></li>                   
                   <li><a href="bloco">Bloco</a></li>
                   <li><a href="funcao">Fun&ccedil;&atilde;o</a></li>
                  <li><a href="procedimento">Procedimento</a></li>
                  <li><a href="tipomidia">Tipo de M&iacute;dia</a></li>
                  <li><a href=veiculacao>Veicula&ccedil;&atilde;o</a></li>
                  <li><a href="sistematica">Sistem&aacute;tica de  Produ&ccedil;&atilde;o</a></li>

                </ul><!-- /. ul dropdown-menu-->
              </li><!-- /.li dropdown-->
              <li class="dropdown"><a href="#" class="dropdown-toglle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Listar <span class="caret"></span></a>
                 <ul class="dropdown-menu">
                 	<li><a href="servidores">Servidores</a></li>
<!--                  	 <li><a href="tiposprodutos"> Tipo de Produto</a></li> -->
                    <li><a href="gruposprodutos"> Grupo de Produtos</a></li>
                 	<li><a href="produtos">Produtos</a></li>
                 	<li><a href="origens">Origens dos Produtos</a></li>
                	<li><a href="solicitantes">Solicitantes</a></li>
                	<li><a href="departamentos">Departamentos</a></li>
                	<li><a href="temas">Temas</a></li>
                	<li><a href="temporadas">Temporadas</a></li>
                	<li><a href="episodios">Epis&oacute;dios</a></li>
                	<li><a href="episodio">Inser&ccedil;&tilde;es</a></li>                	
                   <li><a href="blocos">Blocos</a></li>
                	<li><a href="funcoes">Fun&ccedil;&otilde;es</a></li>
                	<li><a href="procedimentos">Procedimentos</a></li>
                	<li><a href="tiposMidias">Tipo de M&iacute;dias</a></li>
                	<li><a href="veiculacoes">Veicula&ccedil;&otilde;es</a></li>
                 </ul>

              </li><!-- /.li dropdown-->

              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">A&ccedil;&otilde;es <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="temas/wizard/equipe">Montar Equipe</a></li>
                  <li><a href="programacao">Montar Programa&ccedil;&atilde;o</a></li>
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
            
<!--               <li>Sair -->
<!--                <form name="submitForm" action="/logout" method="post"> -->
<!-- <a href="javascript:document.submitForm.submit()"></a> -->
<!--                     </form></li> -->
              <li><c:url value="/logout" var="logoutUrl" />
<a href="${logoutUrl}">Sair</a>
</li></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>

       <script>
        function formSubmit() {
            document.getElementById("logoutForm").submit();
        }
    </script>

<!--     </div> /container -->
