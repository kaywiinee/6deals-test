app.directive 'bookInfo',
	()-> 
		return {
			restrict: 'E', 
			scope: { 
			  info: '=' 
			}, 
			templateUrl: 'tpl/bookInfo.html'
		}