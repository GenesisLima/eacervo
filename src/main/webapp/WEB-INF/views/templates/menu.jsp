<!-- <?xml version="1.0" encoding="ISO-8859-1" ?> -->
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%> --%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!-- <div class="container"> -->

      <!-- Static navbar -->
<%--       <sec:authorize  access="hasRole('ROLE_ADMIN')">   --%>

      <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/eacervo">GPROG</a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"></li>
               <sec:authorize  access="hasRole('ROLE_ADMIN')">
              <li   class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Cadastro <span class="caret"></span></a></a>
                <ul class="dropdown-menu">
						<li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Programa&ccedil;&atilde;o</a>
                        <ul class="dropdown-menu">
								<li><a href="grupoproduto"> Grupo de Produto</a></li>
								<li><a href="produto">Produto</a></li>
								<li><a href="episodio">Epis&oacute;dio</a></li>
								<li><a href="insercao">Inser&ccedil;&atilde;o</a></li>
								<li><a href=veiculacao>Veicula&ccedil;&atilde;o</a></li>
								<li><a href="temporada">Temporada</a></li>
						</ul>
                      </li>
						
								<!--                    <li><a href="tipoproduto"> Tipo de Produto</a></li> -->
								
<!-- 								<li><a href="origem">Origem</a></li> -->
<!-- 								<li><a href="area">&Aacute;rea</a></li> -->
<!-- 								<li><a href="solicitante">Solicitante</a></li> -->
<!-- 								<li><a href="departamento">Departamento</a></li> -->
<!-- 								<li><a href="responsavel">Respons&aacute;vel</a></li> -->
<!-- 								<li><a href="tema">Tema</a></li> -->
								
<!-- 								<li><a href="bloco">Bloco</a></li> -->
<!-- 								<li><a href="funcao">Fun&ccedil;&atilde;o</a></li> -->
<!-- 								<li><a href="procedimento">Procedimento</a></li> -->
<!-- 								<li><a href="tipomidia">Tipo de M&iacute;dia</a></li> -->
<!-- 								<li><a href="sistematica">Sistem&aacute;tica de Pr&ccedil;&atilde;o</a></li> -->

							</ul> <!-- /. ul dropdown-menu--></li>
							 </sec:authorize>
						<!-- /.li dropdown-->
                             <sec:authorize  access="hasRole('ROLE_ADMIN')">
              
              <li class="dropdown"><a href="#" class="dropdown-toglle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Listar <span class="caret"></span></a>
                 <ul class="dropdown-menu">
              <li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Programa&ccedil;&atilde;o</a>
                <ul class="dropdown-menu">  
<!--                  	<li><a href="servidores">Servidores</a></li> -->
<!--                  	 <li><a href="tiposprodutos"> Tipo de Produto</a></li> -->
                    <li><a href="gruposprodutos"> Grupo de Produtos</a></li>
                 	<li><a href="produtos">Produtos</a></li>
<!--                  	<li><a href="origens">Origens dos Produtos</a></li> -->
<!--                 	<li><a href="solicitantes">Solicitantes</a></li> -->
<!--                 	<li><a href="departamentos">Departamentos</a></li> -->
<!--                 	<li><a href="temas">Temas</a></li> -->
                	<li><a href="temporadas">Temporadas</a></li>
                	<li><a href="episodios">Epis&oacute;dios</a></li>
<!--                 	<li><a href="insercoes">Inser&ccedil;&tilde;es</a></li>                	 -->
<!--                    <li><a href="blocos">Blocos</a></li> -->
<!--                 	<li><a href="funcoes">Fun&ccedil;&otilde;es</a></li> -->
<!--                 	<li><a href="procedimentos">Procedimentos</a></li> -->
<!--                 	<li><a href="tiposMidias">Tipo de M&iacute;dias</a></li> -->
                	<li><a href="veiculacoes">Veicula&ccedil;&otilde;es</a></li>
                 </ul>
                  </ul>
                      </li>
              </li><!-- /.li dropdown-->
               </sec:authorize>
               
               
               
               <sec:authorize  access="hasRole('ROLE_ADMIN')">

              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">A&ccedil;&otilde;es <span class="caret"></span></a>
                <ul class="dropdown-menu">
<%--                   <sec:authorize url="programacao" access="isAuthenticated()" access="hasRole('ADMIN')"> --%>
                  <li><a href="programacao">Montar Programa&ccedil;&atilde;o</a></li>
                  <li><a href="/eacervo/operacao">Listar Prorama��o</a></li>
                  
<%--                   </sec:authorize> --%>
<!--                   <li><a href="#">Something else here</a></li> -->
<!--                   <li role="separator" class="divider"></li> -->
<!--                   <li class="dropdown-header">Nav header</li> -->
<!--                   <li><a href="#">Separated link</a></li> -->
<!--                   <li><a href="#">One more separated link</a></li> -->
                </ul>
              </li>
              
                            <li class="dropdown"><a href="#" class="dropdown-toglle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Administra&ccedil;&atilde;o <span class="caret"></span></a>
                 <ul class="dropdown-menu">
<!--               <li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Usu�rios</a></li> -->
<!--                 <ul class="dropdown-menu">   -->
<!--                  	<li><a href="servidores">Servidores</a></li> -->
<!--                  	 <li><a href="tiposprodutos"> Tipo de Produto</a></li> -->
                    <li><a href="/eacervo/admin/users"> Usu�rios</a></li>
<!--                  	<li><a href="produtos">Produtos</a></li> -->

<!--                  </ul> -->
                  </ul>
                      </li>
              
            </ul>
             </sec:authorize>
             
             
             
            <ul class="nav navbar-nav navbar-right">
<!--               <li class="active"><a href="./">Contato <span class="sr-only">(current)</span></a></li> -->
              <li class="active"><a href="/">Programa&ccedil;&atilde;o</a></li>

              <li><a href="../navbar-static-top/">Ajuda</a></li>
        
              
<%--             <sec:authorize access="hasRole('ROLE_USER')"> --%>
<!--               <li>Sair -->
<!--                <form name="submitForm" action="/logout" method="post"> -->
<!-- <a href="javascript:document.submitForm.submit()"></a> -->
<!--                     </form></li> -->

              <li><c:url value="/logout" var="logoutUrl" />
<a href="${logoutUrl}">Sair</a>
</li>
<%-- </sec:authorize> --%>
</li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>

       <script>
        function formSubmit() {
            document.getElementById("logoutForm").submit();
        }
    </script>
<%-- </sec:authorize> --%>


<!--     </div> /container -->
