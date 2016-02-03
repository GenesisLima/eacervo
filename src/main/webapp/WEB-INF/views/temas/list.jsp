<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>
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
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script> -->

     <spring:url value="/resources/css/main.css" var="mainCss" />	
     
    <script src="http://auxiliary.github.io/rpage/javascripts/responsive-paginate.js"></script>

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

.pagination-centered{
text-align:center;
}

.search-right{
text.align:right;
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
        <div class="col-md-4 col-md-offset-3 col-xs-10 col-sm-8">
            <form action="" class="search-form">
               <div class="search-right">
                <div class="form-group has-feedback">
            		<label for="search" class="sr-only">Pesquisar</label>            		 
            		<input type="text" class="form-control" name="search" id="search" placeholder="Pesquisar">            		
              		<span class="glyphicon glyphicon-search form-control-feedback"></span>
            	</div>
            	
            </form>
            </div>
        </div>
    </div>
      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
      
<!--        <div class="table-responsive">           -->
<!--   <table class="table" id="table"> -->
<!--     <thead> -->
<!--       <tr> -->
<!--         <th>#</th> -->
<!--         <th>Tema</th> -->
<!--         <th>Descri&ccedil;&atilde;o</th> -->
      
<!--       </tr> -->
<!--     </thead> -->
<!--     <tbody> -->
<%--      <c:forEach items="${temas}" var="tema" varStatus="status"> --%>
<!--       <tr> -->
<%--     <td>${tema.id}</td>              --%>
<%--     <td >${tema.name}</td>   --%>
<%--     <td >${tema.description}</td>     --%>
<%--     <td><a href="#" class="btn btn-info" role="button" data-toggle="modal" data-id="${tema.id}" data-name="${tema.name}" data-description="${tema.description}" data-target="#myModal">Editar</a> --%>
<%--     <a href="/eacervo/temas/remove/${tema.id}" class="btn btn-info" role="button">Remover</a></td> --%>
    
<!--       </tr> -->
<%--        </c:forEach> --%>
<!--     </tbody> -->
<!--   </table> -->
<!--   </div> -->
 <!-- <a id="reload" href="">Click me to refresh the table!</a> -->
    <datatables:table id="temasTable" row="tema" data="${temas}"   theme="bootstrap3" cssClass="table table-striped"  paginationType="full_numbers" displayLength="5">
        
        <datatables:column title="ID" property="id"   />
        <datatables:column title="NAME" property="name"/>
<%--        	<datatables:column title="DESCRIPTION" property="description" /> --%>
      <datatables:column title="AÇÃO" >
       
   <a href="#" id="editButton" class="btn btn-info" role="button" data-toggle="modal" data-id="${tema.id}" data-name="${tema.name}" data-description="${tema.description}" data-target="#myModal" onclick="setValues()">Editar</a>
   <a href="/eacervo/temas/remove/${tema.id}" class="btn btn-info" role="button">Remover</a>
  
      </datatables:column>
    </datatables:table>
  <div class="pagination-centered">
   <ul class="pagination">
    <input type="hidden" id="selected_value" value="3"></input>
    <input type="hidden" id="max_value" value="10"></input>
   </ul> 
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
       function setValues(){
        $('#myModal').on('show.bs.modal', function (e) {
        	
        	  var button = $(e.relatedTarget)
        	  console.log('Botao: '+button)
        	  // Button that triggered the modal
        	  var recipient = button.data('id')
        	  var name = button.data('name')
        	  var desc = button.data('description')
        	  // Extract info from data-* attributes
        	  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
        	  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
        	  var modal = $(this);
        	      	 
        	  modal.find('#area').val(recipient)
        	  modal.find('#name').val(name)
        	  modal.find('#description').val(desc)
        	  
        	  
        	})
        	
       }
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
	 return;
 //alert("failure");
 }
       });
 });
 });
        
        $(function() {
        	//twitter bootstrap script
        	 $(".pagination").click(function(){
               alert('valor')
        	 });
        	});
        
        
        
        $("#myModal").on('hidden.bs.modal', function (e) {
        	window.location.reload();
        });
        
        $("#search").keyup(function(e){
        	if(e.which == 13){        		
          		$.ajax({url:"/eacervo/temas",
    		        type:"get",
    		        data:{},
    		        success: function(response){
    		         //  $('table#resultTable tbody').html(response);
    		         
    		          }
    		});
        	}
  
		});
        
        

 <!--rPage-->
 /*my function*/
//  $(document).ready(function () {
	
// 		 $.fn.generateRandomPagination = function(options)
         
//          {
         	
//              var content = '<li class="left-etc"><a href="#">&laquo;</a></li>';
          
//              for (var i = 1; i <= options.max_value; i++)
             	
//              {
//                  if (i == options.selected_value){
//                      content += '<li class="active"><span>' + i + '</span></li>';
//                      console.log(content)
//                  }
//                  else{
//                      content += '<li><a href="">' + i + '</a></li>';
//                  }
//              }
//              content += '<li><a href="#">&raquo;</a></li>';
//              $(this).html(content);
//          }
		
//          var i = $("input#selected_value").val();
         
//          var y = $("input#max_value").val();
//          $(".pagination").each(function(){
//              $(this).generateRandomPagination({
//                  max_value: y,
//                  selected_value: i
                
//              });
           
//            //  i += 8;
//          });

//          $(".pagination").rPage();
		
	
           
//         });
 /*end my function*/
 
 /*
  * A plugin for making Bootstrap's pagination more responsive
  * https://github.com/auxiliary/rpage
  */

 (function ($){
     jQuery.fn.rPage = function () {
         var $this = $(this);
         for(var i = 0, max = $this.length; i < max; i++)
         {
         	new rPage($($this[i]));
         }

         function rPage($container)
         {
         	this.label = function()
         	{
         		var active_index = this.els.filter(".active").index();
         		var rp = this;
         		this.els.each(function(){
         			if (rp.isNextOrPrevLink($(this)) == false)
         			{
         				$(this).addClass("page-away-" + (Math.abs(active_index - $(this).index())).toString());
         			}
         			else
         			{
         				if ($(this).index() > active_index)
         				{
         					$(this).addClass("right-etc");
         				}
         				else
         				{
         					$(this).addClass("left-etc");
         				}
         			}
         		});
         	}

         	this.makeResponsive = function()
     	    {
     	    	this.reset();
     	    	var width = this.calculateWidth();

     	    	while (width > this.els.parent().parent().outerWidth() - 10)
     	    	{
     	    		var did_remove = this.removeOne();
     	    		if (did_remove == false)
     	    		{
     	    			break;
     	    		}
     	    		width = this.calculateWidth();
     	    	}
     	    }

         	this.isNextOrPrevLink = function(element)
         	{
                 return (
                     element.hasClass('pagination-prev')
                     || element.hasClass('pagination-next')
                     || element.text() == "»"
                     || element.text() == "«"
                 );
         	}

         	this.isRemovable = function(element)
         	{
         		if (this.isNextOrPrevLink(element))
         		{
         			return false;
         		}
         		var index = this.els.filter(element).index();
         		if (index == 1 || this.isNextOrPrevLink($container.find("li").eq(index + 1)))
         		{
         			return false;
         		}
         		if (element.text() == "...")
         		{
         			return false;
         		}
         		return true;
         	}

     	    this.removeOne = function()
     	    {
     	    	var active_index = this.els.filter(".active").index();
     	    	var farthest_index = $container.find("li").length - 1;
     	    	var next = active_index + 1;
     	    	var prev = active_index - 1;

     	    	for (var i = farthest_index - 1; i > 0; i--)
     	    	{
     	    		var candidates = this.els.filter(".page-away-" + i.toString());
     	    		var candidate = candidates.filter(function(){
     	    			return this.style["display"] != "none";
     	    		});
     	    		if (candidate.length > 0)
     	    		{
     	    			for (var j = 0; j < candidate.length; j++)
     	    			{
     	    				var candid_candidate = candidate.eq(j);
     	    				if (this.isRemovable(candid_candidate))
     		    			{
     			    			candid_candidate.css("display", "none");
     			    			if (this.needsEtcSign(active_index, farthest_index - 1))
     			    			{
     			    				this.els.eq(farthest_index - 2).before("<li class='disabled removable'><span>...</span></li>");
     			    			}
     			    			if (this.needsEtcSign(1, active_index))
     			    			{
     			    				this.els.eq(1).after("<li class='disabled removable'><span>...</span></li>");
     			    			}
     			    			return true;
     		    			}
     	    			}
     	    		}
     	    	}
     	    	return false;
     	    }

     	    this.needsEtcSign = function(el1_index, el2_index)
     	    {
     	    	if (el2_index - el1_index <= 1)
     	    	{
     	    		return false;
     	    	}
     	    	else
     	    	{
     	    		var hasEtcSign = false;
     	    		var hasHiddenElement = false;
     	    		for (var i = el1_index + 1; i < el2_index; i++)
     	    		{
     	    			var el = $container.find("li").eq(i);
     	    			if (el.css("display") == "none")
     	    			{
     	    				hasHiddenElement = true;
     	    			}
     	    			if (el.text() == "...")
     	    			{
     	    				hasEtcSign = true;
     	    			}
     	    		}
     	    		if (hasHiddenElement == true && hasEtcSign == false)
     	    		{
     	    			return true;
     	    		}
     	    	}
     	    	return false;
     	    }

     	    this.reset = function()
     	    {
     	    	for (var i = 0; i < this.els.length; i++)
     	    	{
     	    		this.els.eq(i).css("display", "inline");
     	    	}
     	    	$container.find("li").filter(".removable").remove();
     	    }

     	    this.calculateWidth = function()
     	    {
     	    	var width = 0;
     	    	for (var i = 0; i < $container.find("li").length; i++)
     	    	{
     	    		width += $container.find("li").eq(i).children("a").eq(0).outerWidth();
     	    		width += $container.find("li").eq(i).children("span").eq(0).outerWidth();
     	    	}
     	    	return width;
     	    }

     	    this.els = $container.find("li");
     	    this.label();
     	    this.makeResponsive();

     	    var resize_timer;

             $(window).resize(
             	$.proxy(function()
             	{
             		clearTimeout(resize_timer);
             		resize_timer = setTimeout($.proxy(function(){this.makeResponsive()}, this), 100);
             	}, this)
             );
         }
     };
 }(jQuery));

 <!--endrPage-->
 	

        
        
        
//    	 $(function() {
//    	twitter bootstrap script
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