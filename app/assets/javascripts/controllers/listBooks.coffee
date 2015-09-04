app.controller 'ListBookCtrl', [
  '$scope', 'apiService', '$routeParams'
  ($scope, apiService, $routeParams) ->
    limit = 8

    $scope.pages = [1,2,3,4,5]
    $scope.currentPage = parseInt($routeParams.page)
    
    apiService.api1().then((res)->
      $scope.listBook = res.data.slice(($scope.currentPage-1)*limit,limit*$scope.currentPage)
    )

    $scope.prev = ()->
    	if $scope.currentPage > 1
    		window.location.href = '/#list-book/' + ($scope.currentPage-1)

   	$scope.next = ()->
   		if $scope.currentPage < 5
    		window.location.href = '/#list-book/' + ($scope.currentPage+1)
]