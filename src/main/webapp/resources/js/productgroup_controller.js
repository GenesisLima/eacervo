angular.module('eacervo').controller('ProductGroupController', function($scope, $http){

	$scope.productTypes = {}
	
	$scope.initials = ''
	
		
		$http.get('/eacervo/api/v1/productgroup?type=json').success(function(productTypes){			
			$scope.productTypes = productTypes;		
			console.log("PRODUCT TYPES "+productTypes)
		}).error(function(erro){
			console.log(erro)
		})
		

});

