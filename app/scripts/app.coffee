'use strict'

###*
 # @ngdoc overview
 # @name tuxedioFrontendApp
 # @description
 # # tuxedioFrontendApp
 #
 # Main module of the application.
###
angular
  .module('tuxedioFrontendApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
  ])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
      .otherwise
        redirectTo: '/'

