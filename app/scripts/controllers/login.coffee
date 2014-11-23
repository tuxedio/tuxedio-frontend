'use strict'

###*
 # @ngdoc function
 # @name tuxedioFrontendApp.controller:LoginCtrl
 # @description
 # # LoginCtrl
 # Controller of the tuxedioFrontendApp
###
angular.module('tuxedioFrontendApp')
  .controller 'LoginCtrl', ($scope, $http, AuthToken, API_URL) ->
    $scope.message = ''
    $scope.signedin = if AuthToken.getToken() then true else false
    $scope.submit = ->
      $http
        .post(API_URL + 'login.json', $scope.login)
        .success (data, status, headers, config) ->
          AuthToken.setToken(data.token)
          $scope.signedin = true
          $scope.message = "Successful login"
        .error (data, status, headers, config) ->
          # Remove token if user fails to log in
          AuthToken.setToken()
          #Error Handling:
          $scope.message = 'Error: Invalid email or password'

    $scope.signout = ->
      $scope.signedin = false
      AuthToken.setToken()

