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
    'ng-token-auth'
  ])

  # Routes
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
      .when '/admin',
        templateUrl: 'views/admin.html'
        controller: 'AdminCtrl'
      .otherwise
        redirectTo: '/'

  # CSRF Authentication
  .config ["$httpProvider", ($httpProvider) ->
    $httpProvider.defaults.headers.common['X-CSRF-Token'] =
      $('meta[name=csrf-token]').attr('content')
  ]

  # Token Authentication through ng-token-auth
  .config ($authProvider) ->
        $authProvider.configure({
          apiUrl: 'http://localhost:3000'
          emailSignInPath: '/login.json'
          handleLoginResponse: (resp, $auth) ->
            return resp
        })
