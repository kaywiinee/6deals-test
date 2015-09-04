window.app = angular.module 'angularDemos', ['ngRoute']
app.config(($routeProvider)-> 
  $routeProvider 
    .when('/', { 
      controller: 'MainCtrl', 
      templateUrl: 'tpl/index.html' 
    })
    .when('/list-book/:page', { 
      controller: 'ListBookCtrl', 
      templateUrl: 'tpl/listBook.html' 
    })
    .when('/list-book', { 
      redirectTo: '/list-book/1'
    })
    .otherwise({ 
      redirectTo: '/'
    });
)