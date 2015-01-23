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
  # includes
  .module('tuxedioFrontendApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch',
    'tuxedioFrontendApp.constants'
  ])

  # Routes
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainController'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutController'
      .when '/admin',
        templateUrl: 'views/admin.html'
        controller: 'AdminController'
      .otherwise
        redirectTo: '/'

  # CSRF Authentication
  .config ($httpProvider) ->
    $httpProvider.defaults.headers.common['X-CSRF-Token'] =
      $('meta[name=csrf-token]').attr('content')
    $httpProvider.interceptors.push('authIntercepter')
