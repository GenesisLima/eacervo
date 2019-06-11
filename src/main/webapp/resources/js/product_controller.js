angular.module('eacervo').controller('ProductController', function($scope, $http){

	$scope.productTypes = {}
	$scope.initials = ''
	$scope.type = {}
		
		$http.get('/eacervo/api/v1/productgroup?type=json').success(function(productTypes){			
			$scope.productTypes = productTypes;			
		}).error(function(erro){
			console.log(erro)
		})
		
		$('#programtype').on('change',function(event){
			$scope.initials = $scope.productTypes.find(x => x.initials === event.target.value).name;
			$scope.$apply();
		});	

});

