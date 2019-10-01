angular.module('eacervo').controller('ProductController', function($scope, $http){

	$scope.productTypes = {}
	$scope.product = {}
	$scope.initials = ''
	$scope.type = {}
		
		$http.get('/eacervo/api/v1/productgroup?type=json').success(function(productTypes){			
			$scope.productTypes = productTypes;		
			console.log("PRODUCT TYPES "+productTypes)
		}).error(function(erro){
			console.log(erro)
		})
		
			$http.get('/eacervo/api/v1/product?type=json').success(function(product){			
			$scope.product = product;			
		}).error(function(erro){
			console.log(erro)
		})
		
		
		
		$('#programtype').on('change',function(event){
			$scope.initials = $scope.productTypes.find(x => x.initials === event.target.value).name;
			$scope.$apply();
		});	
	

});

