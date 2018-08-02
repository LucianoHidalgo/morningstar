var  rendimientosApp = angular.module('rendimientosApp', ['ngRoute', 'rendimientosControllers']);

rendimientosApp.config([ '$routeProvider',
    function($routeProvider){
        when('rendimientos/:codigo',{
            //templateUrl : 'http://127.0.0.1:8000/rendimientos/', RUTA TEMPLAT
            controller : 'rendimientosController'
        }
    );

    }

]);

rendimientosApp.config([
    '$htttpProvider', function($htttpProvider){
        $httpProvider.defaults.xsrfCookieName = 'csrftoken';
        $htttpProvider.defaults.xsrfHeaderNAme = 'X-CSRFToken';
    }
]);