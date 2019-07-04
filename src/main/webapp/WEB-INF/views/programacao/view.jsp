<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%--          <%@ taglib prefix="c" uri="http://xmlns.jcp.org/jsp/jstl/core" %>     --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html ng-app="eacervo">
<head>
<style type="text/css">
* {
  .border-radius(0) !important;
}

#field {
    margin-bottom:20px;
}
</style>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">


<!-- Datatable stylesheet -->
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">




<!-- AngularJS -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script> -->
          <script src="/eacervo/resources/js/angular.min.js"></script>  
          <script src="/eacervo/resources/js/angular-animate.min.js"></script> 
          <script src="/eacervo/resources/js/angular-route.min.js"></script>
          <script  src="/eacervo/resources/js/angular-resource.min.js"></script>   
          <script src="/eacervo/resources/js/app.js" type="text/javascript" > </script>
          <script  src="/eacervo/resources/js/product_controller.js" type="text/javascript"> </script> 
<!-- JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- JQuery Datatable Library-->
<!-- <script src="https://code.jquery.com/jquery-3.3.1.js"></script> -->

<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>


<!-- MomentJS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.js"> </script>



<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>


<%-- <script type="text/javascript" src="<c:url value="/resources/js/jquery.inputmask.js" />"> --%>
<!-- <script type="text/javascript" src="/eacervo/resources/js/jquery.inputmask.js"> </script> -->



 
  </head>
<body ng-controller="ProductController">

      
     <jsp:include page="../programacao/form.jsp" ></jsp:include>


</body>
<script>
$(document).ready(function(){
    var next = 1;
    $(".add-more").click(function(e){
    	console.log("trying to add row");
        e.preventDefault();
        var addToTable = "tb-row-" + next;
        var removeFromTable = "#tb-row-" + (next);
        var addToField= "#field" + next;
        var removeFromField = "#field" + (next);
        next = next + 1;
        //var newIn = "<tr id='tb-row'"+addToTable+"><td><input autocomplete='off' class='input form-control' id='field'"+ addToField + "name='field" + addToField+ " type='text'></tr></td>'";
        var newIn = "<tr id="+addToTable+"'><td>ROW "+next+"</td></tr>";
        console.log($(newIn));
        var newInput = $(newIn);
        var removeBtn = '<button id="remove' + (removeFromTable - 1) + '" class="btn btn-danger remove-me" >-</button></div><div id="field">';
        var removeButton = $(removeBtn);
        console.log(newInput);
        console.log($(addToTable));
        $(addToTable).after(newInput);
        $(removeFromTable).after(removeButton);
        //$("#field" + next).attr('data-source', $(addToField).attr('data-source'));
        $("#tb-row" + next).attr('data-source', $(addToTable).attr('data-source'));
        $("#count").val(next);  
        
            $('.remove-me').click(function(e){
                e.preventDefault();
                var fieldNum = this.id.charAt(this.id.length-1);
                var tableNum = this.id.charAt(this.id.length-1);
                var tableID = "#tb-row"+tableNum;
                var fieldID = "#field" + fieldNum;
                $(this).remove();
                $(fieldID).remove();
                $(tableID).remove();
            });
    });
    

    
});

$(document).ready(function(){
	

	var next = 0;
	var tempo = moment("240000","hmmss").format("HH:mm:ss");
	//console.log("Tempo "+tempo);
	$("#programDuration").val(tempo);
	 //= tempo;
	
	$(".add-row").click(function(tempo){
		
		console.log("Table changed");
		var productType = "Tipo";
		var productGroup = "Grupo";
		var productDuration = "Duracao";
		next = next+1;
		console.log("NEXT "+next);
		//var markup = "<tr><td><input type='checkbox' name='record'></td><td>" + productType + "</td><td>" + productGroup + "</td></tr>";
		var markup ="<tr><td><input type='text' name='"+(productType+next)+"'></td><td><input type='text' name='"+(productGroup+next)+"'></td><td><input type='text' id='"+(productDuration+next)+"'></td></tr>";

		 $("table tbody").append(markup);		 

		 var programDurationID = productDuration+next;
		 console.log(programDurationID)
// 		Inputmask({ mask: "99:99:99"}).mask(document.querySelectorAll(programDurationID));
		 console.log("Moment "+ moment(tempo).add(1,"hour").format("HH:mm:ss"));

		 $("#"+programDurationID).val(moment(tempo).add(1,"hour").format("HH:mm:ss"));
		 console.log("Program Duration ID "+ programDurationID);
	})
	});
	
$(document).ready(function(){
	//var tempo = moment("240000","hmmss").format("HH:mm:ss");
	//console.log("Tempo "+tempo);
	//$("#programDuration").val(tempo); //= tempo;
	


	
});


	

</script>
</html>