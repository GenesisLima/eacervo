angular.module('eacervo').controller('ProductController', function($scope, $http){

	$scope.productTypes = {}
		
		$http.get('/eacervo/api/v1/productgroup/json').success(function(productTypes){
			console.log(productTypes)
			$scope.productTypes = productTypes;			
		}).error(function(erro){
			console.log(erro)
		})
});

